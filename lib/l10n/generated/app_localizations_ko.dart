// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appTitle => 'English Proverbs 300';

  @override
  String get todayWord => '📅 오늘의 속담';

  @override
  String get learning => '학습하기';

  @override
  String get levelLearning => '난이도별 학습';

  @override
  String get allWords => '전체 속담';

  @override
  String get viewAllWords => '모든 속담 보기';

  @override
  String get favorites => '즐겨찾기';

  @override
  String get savedWords => '저장한 속담';

  @override
  String get flashcard => '플래시카드';

  @override
  String get cardLearning => '카드로 학습';

  @override
  String get search => '검색';

  @override
  String get searchWords => '속담 찾기';

  @override
  String get settings => '설정';

  @override
  String get noWords => '속담이 없습니다';

  @override
  String get cannotLoadWords => '속담을 불러올 수 없습니다';

  @override
  String get addedToFavorites => '즐겨찾기에 추가되었습니다';

  @override
  String get removedFromFavorites => '즐겨찾기에서 제거되었습니다';

  @override
  String get definition => '📖 뜻';

  @override
  String get example => '💬 예문';

  @override
  String get translating => '번역 중...';

  @override
  String get listenPronunciation => '발음 듣기';

  @override
  String get markAsLearned => '학습 완료';

  @override
  String get previous => '이전';

  @override
  String get next => '다음';

  @override
  String get pronunciation => '발음';

  @override
  String cardCount(int current, int total) {
    return '$current / $total';
  }

  @override
  String get tapToFlip => '탭하여 뒤집기';

  @override
  String get levelA1 => '초급 1';

  @override
  String get levelA2 => '초급 2';

  @override
  String get levelB1 => '중급 1';

  @override
  String get levelB2 => '중급 2';

  @override
  String get levelC1 => '고급';

  @override
  String levelWords(String level) {
    return '$level 속담';
  }

  @override
  String get flashcardMode => '플래시카드 모드';

  @override
  String get listMode => '리스트 모드';

  @override
  String get language => '언어';

  @override
  String get selectLanguage => '언어 선택';

  @override
  String languageChanged(String language) {
    return '$language로 변경되었습니다';
  }

  @override
  String get translationInfo => '번역 안내';

  @override
  String get translationInfoDesc => '속담을 볼 때 자동으로 번역이 다운로드됩니다. 다운로드된 번역은 오프라인에서도 사용할 수 있도록 저장됩니다.';

  @override
  String get ok => '확인';

  @override
  String get darkMode => '다크 모드';

  @override
  String get speechRate => '발음 속도';

  @override
  String get notifications => '알림';

  @override
  String get dailyReminder => '매일 알림';

  @override
  String get about => '정보';

  @override
  String get version => '버전';

  @override
  String get developer => '개발자';

  @override
  String get searchHint => '속담을 검색하세요...';

  @override
  String get noSearchResults => '검색 결과가 없습니다';

  @override
  String get typeToSearch => '속담을 검색해 보세요';

  @override
  String get noFavorites => '즐겨찾기가 없습니다';

  @override
  String get addFavoritesHint => '하트 아이콘을 눌러 즐겨찾기에 추가하세요';

  @override
  String get posNoun => '명사';

  @override
  String get posVerb => '동사';

  @override
  String get posAdjective => '형용사';

  @override
  String get posAdverb => '부사';

  @override
  String get posPronoun => '대명사';

  @override
  String get posPreposition => '전치사';

  @override
  String get posConjunction => '접속사';

  @override
  String get posInterjection => '감탄사';

  @override
  String get posArticle => '관사';

  @override
  String get posDeterminer => '한정사';

  @override
  String get posAuxiliary => '조동사';

  @override
  String get posPhrasal => '구동사';

  @override
  String get showTranslationFirst => '번역 먼저 표시';

  @override
  String get showTranslationFirstDesc => '영어 전에 번역된 의미를 표시합니다';

  @override
  String get display => '화면';

  @override
  String get useDarkTheme => '어두운 테마 사용';

  @override
  String get restartToApply => '테마 변경을 적용하려면 앱을 다시 시작하세요';

  @override
  String get learningSection => '학습';

  @override
  String currentSpeed(String speed) {
    return '현재: $speed배속';
  }

  @override
  String get getDailyReminders => '매일 학습 알림 받기';

  @override
  String get copyright => '저작권';

  @override
  String get copyrightDesc => '모든 정의는 오리지널 또는 AI 생성입니다';

  @override
  String get copyrightNotice => '저작권 안내';

  @override
  String get copyrightContent => '이 앱의 모든 속담 정의와 예문은 오리지널이거나 AI로 생성되었습니다. 저작권이 있는 사전 콘텐츠는 사용되지 않았습니다.';

  @override
  String get privacyPolicy => '개인정보 처리방침';

  @override
  String get privacyContent => '이 앱은 개인 정보를 수집, 저장 또는 공유하지 않습니다.';

  @override
  String get alphabetical => '알파벳순';

  @override
  String get random => '랜덤';

  @override
  String get quiz => '퀴즈';

  @override
  String get testYourself => '실력 테스트';

  @override
  String get wordQuiz => '속담 퀴즈';

  @override
  String quizWithLevel(String level) {
    return '$level 퀴즈';
  }

  @override
  String get wordToMeaningMode => '속담→뜻';

  @override
  String get meaningToWordMode => '뜻→속담';

  @override
  String get quizComplete => '🎉 퀴즈 완료!';

  @override
  String correctAnswers(int percentage) {
    return '$percentage% 정답';
  }

  @override
  String get exit => '종료';

  @override
  String get tryAgain => '다시 하기';

  @override
  String get quizCompleteMessage => '퀴즈 완료!';

  @override
  String get excellent => '완벽해요! 🌟';

  @override
  String get greatJob => '잘했어요! 👏';

  @override
  String get goodStart => '좋은 시작이에요! 💪';

  @override
  String get keepPracticing => '더 연습해봐요! 📚';

  @override
  String questionProgress(int current, int total) {
    return '$current / $total';
  }

  @override
  String get whatIsTheMeaning => '이 속담의 뜻은 무엇일까요?';

  @override
  String get whichWordMatches => '이 뜻에 해당하는 속담는?';

  @override
  String get nextQuestion => '다음';

  @override
  String get loading => '로딩 중...';

  @override
  String get removeAds => '광고 제거';

  @override
  String get removeAdsTitle => '모든 광고 제거';

  @override
  String get removeAdsDesc => '광고 없이 학습하세요';

  @override
  String get adsRemoved => '광고 제거됨';

  @override
  String get enjoyAdFree => '광고 없이 즐기세요!';

  @override
  String get restorePurchase => '구매 복원';

  @override
  String get restorePurchaseDesc => '앱을 재설치하거나 기기를 변경하셨나요? 여기를 눌러 광고 제거 구매를 복원하세요.';

  @override
  String get purchaseFailed => '구매에 실패했습니다. 다시 시도해주세요.';

  @override
  String get purchaseRestored => '구매가 복원되었습니다!';

  @override
  String get noPurchaseToRestore => '복원할 구매 내역이 없습니다';

  @override
  String get buy => '구매';

  @override
  String get wordFontSize => '플래시카드 속담 크기';

  @override
  String get fontSizeSmall => '작게';

  @override
  String get fontSizeMediumSmall => '약간 작게';

  @override
  String get fontSizeNormal => '보통';

  @override
  String get fontSizeMediumLarge => '약간 크게';

  @override
  String get fontSizeLarge => '크게';

  @override
  String get fontSizeExtraLarge => '매우 크게';

  @override
  String get apiTranslationNotice => '온라인 API를 통해 번역이 제공됩니다';

  @override
  String get cancel => '취소';
}
