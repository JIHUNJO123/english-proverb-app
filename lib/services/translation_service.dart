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

/// 번역 서비스 (무료 API 사용 + 로컬 캐싱)
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

  /// 언어 설정 초기화
  Future<void> init() async {
    final prefs = await SharedPreferences.getInstance();
    final savedLanguage = prefs.getString('nativeLanguage');

    if (savedLanguage != null) {
      // 저장된 언어가 있으면 사용
      _currentLanguage = savedLanguage;
    } else {
      // 저장된 언어가 없으면 기기 언어 자동 감지
      final deviceLocale = ui.PlatformDispatcher.instance.locale;
      final deviceLangCode = deviceLocale.languageCode;

      // 지원하는 언어인지 확인
      final isSupported = supportedLanguages.any(
        (lang) => lang.code == deviceLangCode,
      );
      _currentLanguage = isSupported ? deviceLangCode : 'en';

      // 자동 감지된 언어 저장
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

  /// 내장 번역 지원 언어 (오프라인 지원)
  static const Set<String> embeddedLanguages = {
    'ko',
    'ja',
    'zh',
    'es',
    'fr',
    'de',
    'pt',
    'ru',
    'ar',
    'hi',
  };

  /// 현재 언어가 내장 번역 지원 여부
  bool get hasEmbeddedTranslation =>
      embeddedLanguages.contains(_currentLanguage);

  /// 텍스트 번역 (내장 번역 → 캐시 → API 순서)
  /// Returns: (번역된 텍스트, API 사용 여부)
  Future<(String, bool)> translateWithInfo(
    String text,
    int wordId,
    String fieldType, {
    String? embeddedTranslation,
  }) async {
    if (!needsTranslation || text.isEmpty) return (text, false);

    // 0. 내장 번역 확인 (words.json에 포함된 번역)
    if (embeddedTranslation != null && embeddedTranslation.isNotEmpty) {
      return (embeddedTranslation, false);
    }

    // 1. 캐시 확인
    final cached = await DatabaseHelper.instance.getTranslation(
      wordId,
      _currentLanguage,
      fieldType,
    );
    if (cached != null) return (cached, false);

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

    return (translated, true); // API 사용됨
  }

  /// 기존 호환성을 위한 메서드
  Future<String> translate(
    String text,
    int wordId,
    String fieldType, {
    String? embeddedTranslation,
  }) async {
    final (result, _) = await translateWithInfo(
      text,
      wordId,
      fieldType,
      embeddedTranslation: embeddedTranslation,
    );
    return result;
  }

  /// MyMemory API로 번역 (무료, 일 1000회)
  Future<String> _translateWithAPI(String text) async {
    try {
      final url = Uri.parse(
        'https://api.mymemory.translated.net/get'
        '?q=${Uri.encodeComponent(text)}'
        '&langpair=en|$_currentLanguage',
      );

      print('Translation API call: en -> $_currentLanguage');
      print(
        '  Text: ${text.substring(0, text.length > 50 ? 50 : text.length)}...',
      );

      final response = await http.get(url).timeout(const Duration(seconds: 10));

      print('  Response status: ${response.statusCode}');

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final translated = data['responseData']?['translatedText'];
        final status = data['responseStatus'];

        print('  API status: $status');
        print(
          '  Translated: ${translated?.toString().substring(0, (translated?.toString().length ?? 0) > 50 ? 50 : (translated?.toString().length ?? 0))}...',
        );

        if (translated != null && translated.toString().isNotEmpty) {
          // MyMemory가 대문자로 반환할 때가 있어서 확인
          if (translated.toString().toUpperCase() != translated.toString()) {
            return translated.toString();
          }
          return translated.toString();
        }
      }
    } catch (e) {
      print('Translation error: $e');
    }
    print('  Translation failed, returning original text');
    return text; // 실패시 원문 반환
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
