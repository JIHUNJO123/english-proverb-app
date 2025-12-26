import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart';
import 'package:english_proverb_app/l10n/generated/app_localizations.dart';
import '../services/translation_service.dart';
import '../services/ad_service.dart';
import '../services/purchase_service.dart';
import '../main.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _isDarkMode = false;
  bool _notificationEnabled = true;
  String _selectedLanguage = 'en';
  double _wordFontSize = 1.0; // 0.8 ~ 1.4 (기본 1.0)
  bool _isPurchasing = false;

  @override
  void initState() {
    super.initState();
    _loadSettings();
    _setupPurchaseCallbacks();
  }

  void _setupPurchaseCallbacks() {
    final purchaseService = PurchaseService.instance;

    purchaseService.onPurchaseSuccess = () {
      if (mounted) {
        setState(() {});
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(AppLocalizations.of(context)!.purchaseRestored),
            backgroundColor: Colors.green,
          ),
        );
      }
    };

    purchaseService.onPurchaseError = (error) {
      if (mounted) {
        setState(() {
          _isPurchasing = false;
        });
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(error), backgroundColor: Colors.red),
        );
      }
    };
  }

  @override
  void dispose() {
    // 콜백 해제
    PurchaseService.instance.onPurchaseSuccess = null;
    PurchaseService.instance.onPurchaseError = null;
    super.dispose();
  }

  Future<void> _loadSettings() async {
    final prefs = await SharedPreferences.getInstance();
    await TranslationService.instance.init();
    setState(() {
      _isDarkMode = prefs.getBool('darkMode') ?? false;

      _notificationEnabled = prefs.getBool('notificationEnabled') ?? true;
      _selectedLanguage = TranslationService.instance.currentLanguage;
      _wordFontSize = prefs.getDouble('wordFontSize') ?? 1.0;
    });
  }

  Future<void> _saveSetting(String key, dynamic value) async {
    final prefs = await SharedPreferences.getInstance();
    if (value is bool) {
      await prefs.setBool(key, value);
    } else if (value is double) {
      await prefs.setDouble(key, value);
    } else if (value is String) {
      await prefs.setString(key, value);
    }
  }

  void _showLanguageSelector() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder:
          (context) => DraggableScrollableSheet(
            initialChildSize: 0.7,
            minChildSize: 0.5,
            maxChildSize: 0.9,
            expand: false,
            builder:
                (context, scrollController) => Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          const Icon(Icons.language, size: 28),
                          const SizedBox(width: 12),
                          const Text(
                            'Select Your Language',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(),
                    Expanded(
                      child: ListView.builder(
                        controller: scrollController,
                        itemCount: TranslationService.supportedLanguages.length,
                        itemBuilder: (context, index) {
                          final lang =
                              TranslationService.supportedLanguages[index];
                          final isSelected = lang.code == _selectedLanguage;
                          return ListTile(
                            leading:
                                isSelected
                                    ? const Icon(
                                      Icons.check_circle,
                                      color: Colors.green,
                                    )
                                    : const Icon(Icons.circle_outlined),
                            title: Text(
                              lang.nativeName,
                              style: TextStyle(
                                fontWeight:
                                    isSelected
                                        ? FontWeight.bold
                                        : FontWeight.normal,
                              ),
                            ),
                            subtitle: Text(lang.name),
                            onTap: () async {
                              // TranslationService 업데이트
                              await TranslationService.instance.setLanguage(
                                lang.code,
                              );
                              // LocaleProvider 업데이트 (UI 언어 변경)
                              if (context.mounted) {
                                Provider.of<LocaleProvider>(
                                  context,
                                  listen: false,
                                ).setLocale(Locale(lang.code));
                              }
                              setState(() {
                                _selectedLanguage = lang.code;
                              });
                              Navigator.pop(context);
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    AppLocalizations.of(
                                      context,
                                    )!.languageChanged(lang.nativeName),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final currentLang = TranslationService.instance.currentLanguageInfo;
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(title: Text(l10n.settings), centerTitle: true),
      body: ListView(
        children: [
          // Language Settings (가장 중요!)
          _buildSectionHeader(l10n.language),
          ListTile(
            leading: const Icon(Icons.language),
            title: Text(l10n.language),
            subtitle: Text('${currentLang.nativeName} (${currentLang.name})'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: _showLanguageSelector,
          ),
          const Divider(),

          // Display Settings
          _buildSectionHeader(l10n.display),
          SwitchListTile(
            title: Text(l10n.darkMode),
            subtitle: Text(l10n.useDarkTheme),
            value: _isDarkMode,
            onChanged: (value) {
              setState(() {
                _isDarkMode = value;
              });
              _saveSetting('darkMode', value);
              // 다크모드 즉시 적용
              Provider.of<LocaleProvider>(
                context,
                listen: false,
              ).toggleDarkMode(value);
            },
          ),
          ListTile(
            leading: const Icon(Icons.text_fields),
            title: Text(l10n.wordFontSize),
            subtitle: Text(_getFontSizeLabel(l10n)),
            trailing: SizedBox(
              width: 180,
              child: Slider(
                value: _wordFontSize,
                min: 0.8,
                max: 1.4,
                divisions: 6,
                label: _getFontSizeLabel(l10n),
                onChanged: (value) {
                  setState(() {
                    _wordFontSize = value;
                  });
                  _saveSetting('wordFontSize', value);
                },
              ),
            ),
          ),
          const Divider(),

          // Notification Settings
          _buildSectionHeader(l10n.notifications),
          SwitchListTile(
            title: Text(l10n.dailyReminder),
            subtitle: Text(l10n.getDailyReminders),
            value: _notificationEnabled,
            onChanged: (value) {
              setState(() {
                _notificationEnabled = value;
              });
              _saveSetting('notificationEnabled', value);
            },
          ),
          const Divider(),

          // Remove Ads Section
          _buildSectionHeader(l10n.removeAds),
          _buildRemoveAdsSection(l10n),
          const Divider(),

          // About
          _buildSectionHeader(l10n.about),
          ListTile(
            leading: const Icon(Icons.description_outlined),
            title: Text(l10n.copyright),
            subtitle: Text(l10n.copyrightDesc),
            onTap: () {
              showDialog(
                context: context,
                builder:
                    (context) => AlertDialog(
                      title: Text(l10n.copyrightNotice),
                      content: Text(l10n.copyrightContent),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text(l10n.ok),
                        ),
                      ],
                    ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.privacy_tip_outlined),
            title: Text(l10n.privacyPolicy),
            onTap: () {
              showDialog(
                context: context,
                builder:
                    (context) => AlertDialog(
                      title: Text(l10n.privacyPolicy),
                      content: Text(l10n.privacyContent),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text(l10n.ok),
                        ),
                      ],
                    ),
              );
            },
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }

  String _getFontSizeLabel(AppLocalizations l10n) {
    if (_wordFontSize <= 0.85) return l10n.fontSizeSmall;
    if (_wordFontSize <= 0.95) return l10n.fontSizeMediumSmall;
    if (_wordFontSize <= 1.05) return l10n.fontSizeNormal;
    if (_wordFontSize <= 1.15) return l10n.fontSizeMediumLarge;
    if (_wordFontSize <= 1.25) return l10n.fontSizeLarge;
    return l10n.fontSizeExtraLarge;
  }

  Widget _buildRemoveAdsSection(AppLocalizations l10n) {
    final adService = AdService.instance;
    final purchaseService = PurchaseService.instance;
    final isUnlocked = adService.isUnlocked;
    final isPurchaseAvailable = purchaseService.isAvailable;

    return Column(
      children: [
        // 잠금 해제 상태 표시
        ListTile(
          leading: Icon(
            isUnlocked ? Icons.lock_open : Icons.lock_outline,
            color: isUnlocked ? Colors.green : null,
          ),
          title: Text(isUnlocked ? l10n.unlockedUntilMidnight : l10n.lockedContent),
          subtitle: Text(
            isUnlocked 
              ? l10n.unlockedUntilMidnight 
              : l10n.watchAdToUnlock,
          ),
        ),
        // IAP 광고 제거 구매 (스토어 사용 가능한 경우에만 표시)
        if (isPurchaseAvailable) ...[
        ListTile(
          leading: const Icon(Icons.block, color: Colors.orange),
          title: Text(l10n.removeAdsTitle),
          subtitle: Text(l10n.removeAdsDesc),
          trailing: ElevatedButton(
            onPressed:
                _isPurchasing
                    ? null
                    : () async {
                      setState(() {
                        _isPurchasing = true;
                      });

                      try {
                        final success = await purchaseService.buyRemoveAds();
                        if (!success && mounted) {
                          setState(() {
                            _isPurchasing = false;
                          });
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                purchaseService.errorMessage ??
                                    l10n.purchaseFailed,
                              ),
                            ),
                          );
                        }
                      } catch (e) {
                        if (mounted) {
                          setState(() {
                            _isPurchasing = false;
                          });
                          ScaffoldMessenger.of(
                            context,
                          ).showSnackBar(SnackBar(content: Text(e.toString())));
                        }
                      }
                    },
            child:
                _isPurchasing
                    ? const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                    : Text(purchaseService.getRemoveAdsPrice() ?? l10n.buy),
          ),
        ),
        ListTile(
          leading: const Icon(Icons.restore),
          title: Text(l10n.restorePurchase),
          subtitle: Text(l10n.restorePurchaseDesc),
          onTap: () async {
            await purchaseService.restorePurchases();
            await Future.delayed(const Duration(milliseconds: 500));
            if (mounted) {
              setState(() {});
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(l10n.restorePurchase),
                ),
              );
            }
          },
        ),
        ],
      ],
    );
  }
}
