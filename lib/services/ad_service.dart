import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:app_tracking_transparency/app_tracking_transparency.dart';

class AdService {
  static final AdService _instance = AdService._internal();
  static AdService get instance => _instance;
  AdService._internal();

  bool _isInitialized = false;
  bool _adsRemoved = false;
  BannerAd? _bannerAd;
  bool _isBannerAdLoaded = false;
  InterstitialAd? _interstitialAd;
  bool _isInterstitialAdLoaded = false;

  // 실제 광고 ID
  // Android
  static const String _androidBannerId =
      'ca-app-pub-5837885590326347/5282388825';
  static const String _androidInterstitialId =
      'ca-app-pub-5837885590326347/1301962976';
  // iOS
  static const String _iosBannerId = 'ca-app-pub-5837885590326347/9269735292';
  static const String _iosInterstitialId =
      'ca-app-pub-5837885590326347/2456274306';

  String get bannerAdUnitId {
    if (Platform.isAndroid) {
      return _androidBannerId;
    } else if (Platform.isIOS) {
      return _iosBannerId;
    }
    return '';
  }

  String get interstitialAdUnitId {
    if (Platform.isAndroid) {
      return _androidInterstitialId;
    } else if (Platform.isIOS) {
      return _iosInterstitialId;
    }
    return '';
  }

  bool get isInitialized => _isInitialized;
  bool get adsRemoved => _adsRemoved;
  bool get isBannerAdLoaded => _isBannerAdLoaded;
  bool get isInterstitialAdLoaded => _isInterstitialAdLoaded;
  BannerAd? get bannerAd => _bannerAd;

  Future<void> initialize() async {
    if (_isInitialized) return;

    // 광고 제거 구매 여부 확인
    final prefs = await SharedPreferences.getInstance();
    _adsRemoved = prefs.getBool('ads_removed') ?? false;

    if (_adsRemoved) {
      _isInitialized = true;
      return;
    }

    // 웹 또는 데스크톱에서는 광고 비활성화
    if (kIsWeb || (!Platform.isAndroid && !Platform.isIOS)) {
      _isInitialized = true;
      return;
    }

    await MobileAds.instance.initialize();
    _isInitialized = true;
  }

  // iOS ATT 권한 요청 - 앱이 화면에 표시된 후 호출해야 함
  Future<void> requestTrackingAuthorizationIfNeeded() async {
    if (!Platform.isIOS) return;

    try {
      final status = await AppTrackingTransparency.trackingAuthorizationStatus;
      debugPrint('ATT current status: $status');

      if (status == TrackingStatus.notDetermined) {
        // 앱이 완전히 활성화된 후 권한 요청
        await Future.delayed(const Duration(seconds: 1));
        final result =
            await AppTrackingTransparency.requestTrackingAuthorization();
        debugPrint('ATT request result: $result');
      }
    } catch (e) {
      debugPrint('ATT request error: $e');
    }
  }

  Future<void> loadBannerAd({Function()? onLoaded}) async {
    debugPrint('loadBannerAd called');
    debugPrint('  adsRemoved: $_adsRemoved');

    if (_adsRemoved) {
      debugPrint('  Ads removed, skipping banner load');
      return;
    }
    if (kIsWeb || (!Platform.isAndroid && !Platform.isIOS)) {
      debugPrint('  Not mobile platform, skipping');
      return;
    }

    _bannerAd?.dispose();
    _isBannerAdLoaded = false;

    debugPrint('  Loading banner with adUnitId: $bannerAdUnitId');

    _bannerAd = BannerAd(
      adUnitId: bannerAdUnitId,
      size: AdSize.banner,
      request: const AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          debugPrint('  BannerAd loaded successfully!');
          _isBannerAdLoaded = true;
          onLoaded?.call();
        },
        onAdFailedToLoad: (ad, error) {
          debugPrint(
            '  BannerAd failed to load: ${error.code} - ${error.message}',
          );
          ad.dispose();
          _isBannerAdLoaded = false;
        },
      ),
    );

    await _bannerAd!.load();
  }

  void disposeBannerAd() {
    _bannerAd?.dispose();
    _bannerAd = null;
    _isBannerAdLoaded = false;
  }

  // 전면 광고 로드
  Future<void> loadInterstitialAd() async {
    if (_adsRemoved) return;
    if (kIsWeb || (!Platform.isAndroid && !Platform.isIOS)) return;

    await InterstitialAd.load(
      adUnitId: interstitialAdUnitId,
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) {
          _interstitialAd = ad;
          _isInterstitialAdLoaded = true;

          _interstitialAd!
              .fullScreenContentCallback = FullScreenContentCallback(
            onAdDismissedFullScreenContent: (ad) {
              ad.dispose();
              _isInterstitialAdLoaded = false;
              loadInterstitialAd(); // 다음 광고 미리 로드
            },
            onAdFailedToShowFullScreenContent: (ad, error) {
              ad.dispose();
              _isInterstitialAdLoaded = false;
              loadInterstitialAd();
            },
          );
        },
        onAdFailedToLoad: (error) {
          debugPrint('InterstitialAd failed to load: $error');
          _isInterstitialAdLoaded = false;
        },
      ),
    );
  }

  // 전면 광고 표시
  Future<void> showInterstitialAd() async {
    if (_adsRemoved) return;
    if (!_isInterstitialAdLoaded || _interstitialAd == null) return;

    await _interstitialAd!.show();
  }

  void disposeInterstitialAd() {
    _interstitialAd?.dispose();
    _interstitialAd = null;
    _isInterstitialAdLoaded = false;
  }

  // 광고 제거 구매 시 호출
  Future<void> removeAds() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('ads_removed', true);
    _adsRemoved = true;
    disposeBannerAd();
    disposeInterstitialAd();
  }

  // 광고 제거 복원 (IAP 복원용)
  Future<void> restoreAdsRemoved() async {
    final prefs = await SharedPreferences.getInstance();
    _adsRemoved = prefs.getBool('ads_removed') ?? false;
    if (_adsRemoved) {
      disposeBannerAd();
      disposeInterstitialAd();
    }
  }
}
