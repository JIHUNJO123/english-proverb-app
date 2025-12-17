import 'dart:ui' as ui;
import 'package:shared_preferences/shared_preferences.dart';

/// 지원하는 언어 (내장 번역이 있는 언어만)
class SupportedLanguage {
  final String code;
  final String name;
  final String nativeName;

  const SupportedLanguage({
    required this.code,
    required this.name,
    required this.nativeName,
  });
}

/// 번역 서비스 (내장 번역만 사용, API 호출 없음)
class TranslationService {
  static final TranslationService instance = TranslationService._init();
  TranslationService._init();

  // 지원 언어 목록 (내장 번역이 있는 11개 언어만)
  static const List<SupportedLanguage> supportedLanguages = [
    SupportedLanguage(code: 'en', name: 'English', nativeName: 'English'),
    SupportedLanguage(code: 'ko', name: 'Korean', nativeName: '한국어'),
    SupportedLanguage(code: 'ja', name: 'Japanese', nativeName: '日本語'),
    SupportedLanguage(code: 'zh', name: 'Chinese', nativeName: '中文'),
    SupportedLanguage(code: 'es', name: 'Spanish', nativeName: 'Español'),
    SupportedLanguage(code: 'fr', name: 'French', nativeName: 'Français'),
    SupportedLanguage(code: 'de', name: 'German', nativeName: 'Deutsch'),
    SupportedLanguage(code: 'pt', name: 'Portuguese', nativeName: 'Português'),
    SupportedLanguage(code: 'ru', name: 'Russian', nativeName: 'Русский'),
    SupportedLanguage(code: 'ar', name: 'Arabic', nativeName: 'العربية'),
    SupportedLanguage(code: 'hi', name: 'Hindi', nativeName: 'हिन्दी'),
  ];

  String _currentLanguage = 'en';

  String get currentLanguage => _currentLanguage;

  /// 현재 언어 정보 가져오기
  SupportedLanguage get currentLanguageInfo {
    return supportedLanguages.firstWhere(
      (lang) => lang.code == _currentLanguage,
      orElse: () => supportedLanguages.first,
    );
  }

  /// 언어 서비스 초기화
  Future<void> init() async {
    final prefs = await SharedPreferences.getInstance();
    final savedLanguage = prefs.getString('nativeLanguage');

    if (savedLanguage != null &&
        supportedLanguages.any((lang) => lang.code == savedLanguage)) {
      _currentLanguage = savedLanguage;
    } else {
      // 저장된 값이 없으면 기기 언어 자동 감지
      final deviceLocale = ui.PlatformDispatcher.instance.locale;
      final deviceLangCode = deviceLocale.languageCode;

      // 지원하는 언어인지 확인
      final isSupported = supportedLanguages.any(
        (lang) => lang.code == deviceLangCode,
      );
      _currentLanguage = isSupported ? deviceLangCode : 'en';

      await prefs.setString('nativeLanguage', _currentLanguage);
    }
  }

  /// 언어 변경
  Future<void> setLanguage(String languageCode) async {
    if (supportedLanguages.any((lang) => lang.code == languageCode)) {
      _currentLanguage = languageCode;
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('nativeLanguage', languageCode);
    }
  }

  /// 번역 필요 여부
  bool get needsTranslation => _currentLanguage != 'en';
}
