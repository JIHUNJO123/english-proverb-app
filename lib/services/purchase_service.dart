import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'ad_service.dart';

class PurchaseService {
  static final PurchaseService _instance = PurchaseService._internal();
  static PurchaseService get instance => _instance;
  PurchaseService._internal();

  // 상품 ID
  static const String removeAdsProductId = 'english_word_10000_remove_ads';
  static const Set<String> _productIds = {removeAdsProductId};

  final InAppPurchase _inAppPurchase = InAppPurchase.instance;
  StreamSubscription<List<PurchaseDetails>>? _subscription;

  List<ProductDetails> _products = [];
  bool _isAvailable = false;
  bool _isPurchasePending = false;
  String? _errorMessage;

  // Getters
  List<ProductDetails> get products => _products;
  bool get isAvailable => _isAvailable;
  bool get isPurchasePending => _isPurchasePending;
  String? get errorMessage => _errorMessage;

  // 콜백
  Function()? onPurchaseSuccess;
  Function(String)? onPurchaseError;

  Future<void> initialize() async {
    // 웹 또는 데스크톱에서는 IAP 비활성화
    if (kIsWeb || (!Platform.isAndroid && !Platform.isIOS)) {
      _isAvailable = false;
      return;
    }

    _isAvailable = await _inAppPurchase.isAvailable();
    if (!_isAvailable) {
      debugPrint('In-app purchase is not available');
      return;
    }

    // 구매 스트림 구독
    _subscription = _inAppPurchase.purchaseStream.listen(
      _onPurchaseUpdate,
      onError: (error) {
        debugPrint('Purchase stream error: $error');
        _errorMessage = error.toString();
      },
    );

    // 상품 정보 로드
    await _loadProducts();
  }

  Future<void> _loadProducts() async {
    if (!_isAvailable) return;

    debugPrint('Loading products for IDs: $_productIds');

    final ProductDetailsResponse response = await _inAppPurchase
        .queryProductDetails(_productIds);

    if (response.error != null) {
      debugPrint('Error loading products: ${response.error}');
      _errorMessage = response.error?.message;
      return;
    }

    if (response.notFoundIDs.isNotEmpty) {
      debugPrint('Products not found: ${response.notFoundIDs}');
      _errorMessage =
          'Product ID not found: ${response.notFoundIDs.join(", ")}';
    }

    _products = response.productDetails;
    debugPrint('Products loaded: ${_products.length}');
    for (var p in _products) {
      debugPrint('  - ${p.id}: ${p.title} - ${p.price}');
    }
  }

  void _onPurchaseUpdate(List<PurchaseDetails> purchaseDetailsList) {
    for (final purchaseDetails in purchaseDetailsList) {
      _handlePurchase(purchaseDetails);
    }
  }

  Future<void> _handlePurchase(PurchaseDetails purchaseDetails) async {
    debugPrint(
      '_handlePurchase: status=${purchaseDetails.status}, productID=${purchaseDetails.productID}',
    );

    if (purchaseDetails.status == PurchaseStatus.pending) {
      _isPurchasePending = true;
      debugPrint('  Purchase pending...');
    } else {
      _isPurchasePending = false;

      if (purchaseDetails.status == PurchaseStatus.error) {
        _errorMessage = purchaseDetails.error?.message ?? 'Purchase failed';
        debugPrint('  Purchase error: $_errorMessage');
        onPurchaseError?.call(_errorMessage!);
      } else if (purchaseDetails.status == PurchaseStatus.purchased ||
          purchaseDetails.status == PurchaseStatus.restored) {
        debugPrint('  Purchase successful or restored!');
        // 구매 성공 - 광고 제거 처리
        if (purchaseDetails.productID == removeAdsProductId) {
          await AdService.instance.removeAds();
          onPurchaseSuccess?.call();
          debugPrint('  Ads removed successfully');
        }
      } else if (purchaseDetails.status == PurchaseStatus.canceled) {
        debugPrint('  Purchase canceled by user');
        _errorMessage = 'Purchase canceled';
      }

      // 구매 완료 처리
      if (purchaseDetails.pendingCompletePurchase) {
        debugPrint('  Completing purchase...');
        await _inAppPurchase.completePurchase(purchaseDetails);
      }
    }
  }

  // 광고 제거 구매
  Future<bool> buyRemoveAds() async {
    debugPrint('buyRemoveAds called');
    debugPrint('  isAvailable: $_isAvailable');
    debugPrint('  products count: ${_products.length}');

    if (!_isAvailable) {
      _errorMessage = 'In-app purchase is not available';
      debugPrint('  Error: $_errorMessage');
      return false;
    }

    if (_products.isEmpty) {
      _errorMessage =
          'No products available. Please check your internet connection.';
      debugPrint('  Error: $_errorMessage');
      return false;
    }

    final ProductDetails? product = _products
        .cast<ProductDetails?>()
        .firstWhere((p) => p?.id == removeAdsProductId, orElse: () => null);

    if (product == null) {
      _errorMessage = 'Product "$removeAdsProductId" not found';
      debugPrint('  Error: $_errorMessage');
      return false;
    }

    debugPrint('  Purchasing product: ${product.id} - ${product.price}');

    // 비소모성 상품으로 구매
    final PurchaseParam purchaseParam = PurchaseParam(productDetails: product);
    try {
      final result = await _inAppPurchase.buyNonConsumable(
        purchaseParam: purchaseParam,
      );
      debugPrint('  Purchase initiated: $result');
      return result;
    } catch (e) {
      _errorMessage = e.toString();
      debugPrint('  Purchase error: $e');
      return false;
    }
  }

  // 구매 복원
  Future<void> restorePurchases() async {
    if (!_isAvailable) return;
    await _inAppPurchase.restorePurchases();
  }

  // 광고 제거 상품 가격 가져오기
  String? getRemoveAdsPrice() {
    final product =
        _products.where((p) => p.id == removeAdsProductId).firstOrNull;
    return product?.price;
  }

  void dispose() {
    _subscription?.cancel();
  }
}
