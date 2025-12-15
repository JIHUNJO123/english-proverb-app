// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Urdu (`ur`).
class AppLocalizationsUr extends AppLocalizations {
  AppLocalizationsUr([String locale = 'ur']) : super(locale);

  @override
  String get appTitle => 'English Idioms 1000';

  @override
  String get todayWord => '📅 آج کا محاورہ';

  @override
  String get learning => 'سیکھنا';

  @override
  String get levelLearning => 'سطح کے مطابق سیکھنا';

  @override
  String get allWords => 'تمام محاورے';

  @override
  String get viewAllWords => 'تمام محاورے دیکھیں';

  @override
  String get favorites => 'پسندیدہ';

  @override
  String get savedWords => 'محفوظ محاورے';

  @override
  String get flashcard => 'فلیش کارڈ';

  @override
  String get cardLearning => 'کارڈز سے سیکھیں';

  @override
  String get search => 'تلاش';

  @override
  String get searchWords => 'محاورے تلاش کریں';

  @override
  String get settings => 'ترتیبات';

  @override
  String get noWords => 'کوئی محاورے نہیں ملے';

  @override
  String get cannotLoadWords => 'محاورے لوڈ نہیں ہو سکے';

  @override
  String get addedToFavorites => 'پسندیدہ میں شامل';

  @override
  String get removedFromFavorites => 'پسندیدہ سے ہٹا دیا گیا';

  @override
  String get definition => '📖 تعریف';

  @override
  String get example => '💬 مثال';

  @override
  String get translating => 'ترجمہ ہو رہا ہے...';

  @override
  String get listenPronunciation => 'تلفظ سنیں';

  @override
  String get markAsLearned => 'سیکھا ہوا نشان لگائیں';

  @override
  String get previous => 'پچھلا';

  @override
  String get next => 'اگلا';

  @override
  String get pronunciation => 'تلفظ';

  @override
  String cardCount(int current, int total) {
    return '$current / $total';
  }

  @override
  String get tapToFlip => 'پلٹنے کے لیے ٹیپ کریں';

  @override
  String get levelA1 => 'ابتدائی ۱';

  @override
  String get levelA2 => 'ابتدائی ۲';

  @override
  String get levelB1 => 'درمیانی ۱';

  @override
  String get levelB2 => 'درمیانی ۲';

  @override
  String get levelC1 => 'ایڈوانس';

  @override
  String levelWords(String level) {
    return '$level محاورے';
  }

  @override
  String get flashcardMode => 'فلیش کارڈ موڈ';

  @override
  String get listMode => 'فہرست موڈ';

  @override
  String get language => 'زبان';

  @override
  String get selectLanguage => 'اپنی زبان منتخب کریں';

  @override
  String languageChanged(String language) {
    return 'زبان $language میں تبدیل ہو گئی';
  }

  @override
  String get translationInfo => 'ترجمہ کی معلومات';

  @override
  String get translationInfoDesc => 'الفاظ دیکھتے وقت ترجمے خود بخود ڈاؤن لوڈ ہوں گے۔ آف لائن استعمال کے لیے مقامی طور پر محفوظ ہوں گے۔';

  @override
  String get ok => 'ٹھیک ہے';

  @override
  String get darkMode => 'ڈارک موڈ';

  @override
  String get speechRate => 'بولنے کی رفتار';

  @override
  String get notifications => 'اطلاعات';

  @override
  String get dailyReminder => 'روزانہ یاد دہانی';

  @override
  String get about => 'کے بارے میں';

  @override
  String get version => 'ورژن';

  @override
  String get developer => 'ڈویلپر';

  @override
  String get searchHint => 'محاورے تلاش کریں...';

  @override
  String get noSearchResults => 'کوئی نتائج نہیں ملے';

  @override
  String get typeToSearch => 'الفاظ تلاش کرنے کے لیے ٹائپ کریں';

  @override
  String get noFavorites => 'ابھی کوئی پسندیدہ نہیں';

  @override
  String get addFavoritesHint => 'دل کے آئیکن پر ٹیپ کرکے الفاظ پسندیدہ میں شامل کریں';

  @override
  String get posNoun => 'اسم';

  @override
  String get posVerb => 'فعل';

  @override
  String get posAdjective => 'صفت';

  @override
  String get posAdverb => 'متعلق فعل';

  @override
  String get posPronoun => 'ضمیر';

  @override
  String get posPreposition => 'حرف جار';

  @override
  String get posConjunction => 'حرف عطف';

  @override
  String get posInterjection => 'حرف ندا';

  @override
  String get posArticle => 'حرف تعریف';

  @override
  String get posDeterminer => 'معین';

  @override
  String get posAuxiliary => 'فعل معاون';

  @override
  String get posPhrasal => 'محاوراتی فعل';

  @override
  String get showTranslationFirst => 'پہلے ترجمہ دکھائیں';

  @override
  String get showTranslationFirstDesc => 'انگریزی سے پہلے ترجمہ شدہ معنی دکھائیں';

  @override
  String get display => 'ڈسپلے';

  @override
  String get useDarkTheme => 'ڈارک تھیم استعمال کریں';

  @override
  String get restartToApply => 'تھیم تبدیلی لاگو کرنے کے لیے ایپ دوبارہ شروع کریں';

  @override
  String get learningSection => 'سیکھنا';

  @override
  String currentSpeed(String speed) {
    return 'موجودہ: ${speed}x';
  }

  @override
  String get getDailyReminders => 'روزانہ سیکھنے کی یاد دہانیاں حاصل کریں';

  @override
  String get copyright => 'کاپی رائٹ';

  @override
  String get copyrightDesc => 'تمام تعریفیں اصلی یا AI سے تیار کردہ ہیں';

  @override
  String get copyrightNotice => 'کاپی رائٹ نوٹس';

  @override
  String get copyrightContent => 'اس ایپ میں تمام محاورے کی تعریفیں اور مثالی جملے اصلی یا AI سے تیار کردہ ہیں۔';

  @override
  String get privacyPolicy => 'رازداری کی پالیسی';

  @override
  String get privacyContent => 'یہ ایپ کوئی ذاتی معلومات جمع، ذخیرہ یا شیئر نہیں کرتی۔';

  @override
  String get alphabetical => 'حروف تہجی';

  @override
  String get random => 'بے ترتیب';

  @override
  String get quiz => 'کوئز';

  @override
  String get testYourself => 'خود کو آزمائیں';

  @override
  String get wordQuiz => 'محاورہ کوئز';

  @override
  String quizWithLevel(String level) {
    return '$level کوئز';
  }

  @override
  String get wordToMeaningMode => 'محاورہ←معنی';

  @override
  String get meaningToWordMode => 'معنی←محاورہ';

  @override
  String get quizComplete => '🎉 کوئز مکمل!';

  @override
  String correctAnswers(int percentage) {
    return '$percentage% درست';
  }

  @override
  String get exit => 'باہر نکلیں';

  @override
  String get tryAgain => 'دوبارہ کوشش کریں';

  @override
  String get quizCompleteMessage => 'کوئز مکمل!';

  @override
  String get excellent => 'بہترین! 🌟';

  @override
  String get greatJob => 'شاباش! 👏';

  @override
  String get goodStart => 'اچھی شروعات! 💪';

  @override
  String get keepPracticing => 'مشق جاری رکھیں! 📚';

  @override
  String questionProgress(int current, int total) {
    return '$current / $total';
  }

  @override
  String get whatIsTheMeaning => 'اس محاورے کا مطلب کیا ہے؟';

  @override
  String get whichWordMatches => 'کون سا محاورہ اس معنی سے ملتا ہے؟';

  @override
  String get nextQuestion => 'اگلا';

  @override
  String get loading => 'لوڈ ہو رہا ہے...';

  @override
  String get removeAds => 'اشتہارات ہٹائیں';

  @override
  String get removeAdsTitle => 'تمام اشتہارات ہٹائیں';

  @override
  String get removeAdsDesc => 'اشتہارات کے بغیر سیکھنے کا لطف اٹھائیں';

  @override
  String get adsRemoved => 'اشتہارات ہٹا دیے گئے';

  @override
  String get enjoyAdFree => 'اشتہارات کے بغیر تجربے کا لطف اٹھائیں!';

  @override
  String get restorePurchase => 'خریداری بحال کریں';

  @override
  String get restorePurchaseDesc => 'ایپ دوبارہ انسٹال کی یا ڈیوائس بدلی؟ اشتہار فری خریداری بحال کرنے کے لیے یہاں ٹیپ کریں۔';

  @override
  String get purchaseFailed => 'خریداری ناکام۔ براہ کرم دوبارہ کوشش کریں۔';

  @override
  String get purchaseRestored => 'خریداری کامیابی سے بحال ہو گئی!';

  @override
  String get noPurchaseToRestore => 'بحال کرنے کے لیے کوئی خریداری نہیں ملی';

  @override
  String get buy => 'خریدیں';

  @override
  String get wordFontSize => 'Flashcard Idiom Size';

  @override
  String get fontSizeSmall => 'Small';

  @override
  String get fontSizeMediumSmall => 'Medium Small';

  @override
  String get fontSizeNormal => 'Normal';

  @override
  String get fontSizeMediumLarge => 'Medium Large';

  @override
  String get fontSizeLarge => 'Large';

  @override
  String get fontSizeExtraLarge => 'Extra Large';

  @override
  String get apiTranslationNotice => 'Translations are being provided via API (online translation)';
}
