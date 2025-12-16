import 'dart:convert';
import 'dart:ui' as ui;
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../db/database_helper.dart';

/// 지원하는 언어 목록
class SupportedLanguage {
  final String code; // 언어 코드 (ko, ja, zh, es, ...)
  final String name; // 영어 이름
  final String nativeName; // 모국어 이름

  const SupportedLanguage({
    required this.code,
    required this.name,
    required this.nativeName,
  });
}

/// 번역 서비스 (DeepL API 우선 + Lingva fallback)
class TranslationService {
  static final TranslationService instance = TranslationService._init();
  TranslationService._init();

  // DeepL API 키 (무료 버전)
  // TODO: 여기에 DeepL API 키를 입력하세요
  static const String _deeplApiKey = 'YOUR_DEEPL_API_KEY_HERE';

  // DeepL 지원 언어 (고품질 번역)
  static const Set<String> _deeplSupportedLanguages = {
    'ko',
    'ja',
    'zh',
    'es',
    'fr',
    'de',
    'pt',
    'ru',
    'it',
    'nl',
    'pl',
    'sv',
    'tr',
    'uk',
    'id',
  };

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

  /// 언어 설정 초기화
  Future<void> init() async {
    final prefs = await SharedPreferences.getInstance();
    final savedLanguage = prefs.getString('nativeLanguage');

    if (savedLanguage != null) {
      _currentLanguage = savedLanguage;
    } else {
      final deviceLocale = ui.PlatformDispatcher.instance.locale;
      final deviceLangCode = deviceLocale.languageCode;

      final isSupported = supportedLanguages.any(
        (lang) => lang.code == deviceLangCode,
      );
      _currentLanguage = isSupported ? deviceLangCode : 'en';

      await prefs.setString('nativeLanguage', _currentLanguage);
    }
  }

  /// 모국어 설정
  Future<void> setLanguage(String languageCode) async {
    _currentLanguage = languageCode;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('nativeLanguage', languageCode);
  }

  /// 번역 필요 여부
  bool get needsTranslation => _currentLanguage != 'en';

  /// 현재 언어 코드 가져오기
  String get currentLanguage => _currentLanguage;

  /// 텍스트 번역 (내장 번역 → 캐시 → API 순서)
  Future<String> translate(
    String text,
    int wordId,
    String fieldType, {
    String? embeddedTranslation,
  }) async {
    if (!needsTranslation || text.isEmpty) return text;

    // 0. 내장 번역 확인 (words.json에 포함된 번역)
    if (embeddedTranslation != null && embeddedTranslation.isNotEmpty) {
      return embeddedTranslation;
    }

    // 1. 캐시 확인
    final cached = await DatabaseHelper.instance.getTranslation(
      wordId,
      _currentLanguage,
      fieldType,
    );
    if (cached != null) return cached;

    // 2. API 호출
    final translated = await _translateWithAPI(text);

    // 3. 캐시 저장
    if (translated != text) {
      await DatabaseHelper.instance.saveTranslation(
        wordId,
        _currentLanguage,
        fieldType,
        translated,
      );
    }

    return translated;
  }

  /// API로 번역 (DeepL 우선, Lingva fallback)
  Future<String> _translateWithAPI(String text) async {
    // DeepL 지원 언어면 DeepL 사용
    if (_deeplSupportedLanguages.contains(_currentLanguage) &&
        _deeplApiKey != 'YOUR_DEEPL_API_KEY_HERE') {
      final result = await _translateWithDeepL(text);
      if (result != null) return result;
    }

    // DeepL 실패 또는 미지원 언어면 Lingva 사용
    final result = await _translateWithLingva(text);
    return result ?? text;
  }

  /// DeepL API로 번역 (고품질, 숙어 의역 잘함)
  Future<String?> _translateWithDeepL(String text) async {
    try {
      // DeepL 언어 코드 변환
      String targetLang = _currentLanguage.toUpperCase();
      if (targetLang == 'ZH') targetLang = 'ZH-HANS'; // 중국어 간체

      final response = await http
          .post(
            Uri.parse('https://api-free.deepl.com/v2/translate'),
            headers: {
              'Authorization': 'DeepL-Auth-Key $_deeplApiKey',
              'Content-Type': 'application/json',
            },
            body: json.encode({
              'text': [text],
              'source_lang': 'EN',
              'target_lang': targetLang,
            }),
          )
          .timeout(const Duration(seconds: 15));

      print('DeepL API call: EN -> $targetLang');
      print('  Status: ${response.statusCode}');

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final translated = data['translations']?[0]?['text'];
        if (translated != null && translated.toString().isNotEmpty) {
          print('  Result: $translated');
          return translated.toString();
        }
      } else {
        print('  Error: ${response.body}');
      }
    } catch (e) {
      print('DeepL error: $e');
    }
    return null;
  }

  /// Lingva API로 번역 (무료, 무제한, Google Translate 프록시)
  Future<String?> _translateWithLingva(String text) async {
    // 여러 Lingva 인스턴스 (하나 실패하면 다른 것 시도)
    final instances = [
      'https://lingva.ml',
      'https://lingva.lunar.icu',
      'https://translate.plausibility.cloud',
    ];

    for (final instance in instances) {
      try {
        final encodedText = Uri.encodeComponent(text);
        final url = '$instance/api/v1/en/$_currentLanguage/$encodedText';

        print('Lingva API call: $instance');

        final response = await http
            .get(Uri.parse(url))
            .timeout(const Duration(seconds: 10));

        if (response.statusCode == 200) {
          final data = json.decode(response.body);
          final translated = data['translation'];
          if (translated != null && translated.toString().isNotEmpty) {
            print('  Result: $translated');
            return translated.toString();
          }
        }
      } catch (e) {
        print('Lingva error ($instance): $e');
        continue; // 다음 인스턴스 시도
      }
    }
    return null;
  }

  /// 배치 번역 (여러 단어 한번에)
  Future<void> translateWords(List<int> wordIds) async {
    if (!needsTranslation) return;

    for (final wordId in wordIds) {
      final word = await DatabaseHelper.instance.getWordById(wordId);
      if (word != null) {
        await translate(word.definition, wordId, 'definition');
        await translate(word.example, wordId, 'example');
      }
    }
  }
}
