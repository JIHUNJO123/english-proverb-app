// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Persian (`fa`).
class AppLocalizationsFa extends AppLocalizations {
  AppLocalizationsFa([String locale = 'fa']) : super(locale);

  @override
  String get appTitle => 'English Idioms 1000';

  @override
  String get todayWord => '📅 اصطلاح امروز';

  @override
  String get learning => 'یادگیری';

  @override
  String get levelLearning => 'یادگیری بر اساس سطح';

  @override
  String get allWords => 'همه اصطلاحات';

  @override
  String get viewAllWords => 'مشاهده همه اصطلاحات';

  @override
  String get favorites => 'علاقه‌مندی‌ها';

  @override
  String get savedWords => 'اصطلاحات ذخیره شده';

  @override
  String get flashcard => 'فلش کارت';

  @override
  String get cardLearning => 'یادگیری با کارت';

  @override
  String get search => 'جستجو';

  @override
  String get searchWords => 'جستجوی اصطلاحات';

  @override
  String get settings => 'تنظیمات';

  @override
  String get noWords => 'اصطلاحی یافت نشد';

  @override
  String get cannotLoadWords => 'بارگذاری اصطلاحات ممکن نیست';

  @override
  String get addedToFavorites => 'به علاقه‌مندی‌ها اضافه شد';

  @override
  String get removedFromFavorites => 'از علاقه‌مندی‌ها حذف شد';

  @override
  String get definition => '📖 تعریف';

  @override
  String get example => '💬 مثال';

  @override
  String get translating => 'در حال ترجمه...';

  @override
  String get listenPronunciation => 'گوش دادن به تلفظ';

  @override
  String get markAsLearned => 'علامت‌گذاری به عنوان یاد گرفته شده';

  @override
  String get previous => 'قبلی';

  @override
  String get next => 'بعدی';

  @override
  String get pronunciation => 'تلفظ';

  @override
  String cardCount(int current, int total) {
    return '$current / $total';
  }

  @override
  String get tapToFlip => 'برای برگرداندن ضربه بزنید';

  @override
  String get levelA1 => 'مبتدی ۱';

  @override
  String get levelA2 => 'مبتدی ۲';

  @override
  String get levelB1 => 'متوسط ۱';

  @override
  String get levelB2 => 'متوسط ۲';

  @override
  String get levelC1 => 'پیشرفته';

  @override
  String levelWords(String level) {
    return 'اصطلاحات $level';
  }

  @override
  String get flashcardMode => 'حالت فلش کارت';

  @override
  String get listMode => 'حالت لیست';

  @override
  String get language => 'زبان';

  @override
  String get selectLanguage => 'زبان خود را انتخاب کنید';

  @override
  String languageChanged(String language) {
    return 'زبان به $language تغییر یافت';
  }

  @override
  String get translationInfo => 'اطلاعات ترجمه';

  @override
  String get translationInfoDesc => 'ترجمه‌ها هنگام مشاهده کلمات به صورت خودکار دانلود می‌شوند. پس از دانلود، برای استفاده آفلاین به صورت محلی ذخیره می‌شوند.';

  @override
  String get ok => 'باشه';

  @override
  String get darkMode => 'حالت تاریک';

  @override
  String get speechRate => 'سرعت گفتار';

  @override
  String get notifications => 'اعلان‌ها';

  @override
  String get dailyReminder => 'یادآوری روزانه';

  @override
  String get about => 'درباره';

  @override
  String get version => 'نسخه';

  @override
  String get developer => 'توسعه‌دهنده';

  @override
  String get searchHint => 'جستجوی اصطلاحات...';

  @override
  String get noSearchResults => 'نتیجه‌ای یافت نشد';

  @override
  String get typeToSearch => 'برای جستجوی اصطلاحات تایپ کنید';

  @override
  String get noFavorites => 'هنوز علاقه‌مندی‌ای نیست';

  @override
  String get addFavoritesHint => 'با ضربه زدن روی آیکون قلب، کلمات را به علاقه‌مندی‌ها اضافه کنید';

  @override
  String get posNoun => 'اسم';

  @override
  String get posVerb => 'فعل';

  @override
  String get posAdjective => 'صفت';

  @override
  String get posAdverb => 'قید';

  @override
  String get posPronoun => 'ضمیر';

  @override
  String get posPreposition => 'حرف اضافه';

  @override
  String get posConjunction => 'حرف ربط';

  @override
  String get posInterjection => 'حرف ندا';

  @override
  String get posArticle => 'حرف تعریف';

  @override
  String get posDeterminer => 'تعیین‌کننده';

  @override
  String get posAuxiliary => 'فعل کمکی';

  @override
  String get posPhrasal => 'فعل عبارتی';

  @override
  String get showTranslationFirst => 'ابتدا ترجمه نشان داده شود';

  @override
  String get showTranslationFirstDesc => 'معنی ترجمه شده را قبل از انگلیسی نمایش دهید';

  @override
  String get display => 'نمایش';

  @override
  String get useDarkTheme => 'استفاده از تم تاریک';

  @override
  String get restartToApply => 'برای اعمال تغییر تم، برنامه را مجدداً راه‌اندازی کنید';

  @override
  String get learningSection => 'یادگیری';

  @override
  String currentSpeed(String speed) {
    return 'فعلی: ${speed}x';
  }

  @override
  String get getDailyReminders => 'دریافت یادآوری‌های روزانه یادگیری';

  @override
  String get copyright => 'حق نشر';

  @override
  String get copyrightDesc => 'تمام تعاریف اصلی یا تولید شده توسط هوش مصنوعی هستند';

  @override
  String get copyrightNotice => 'اعلامیه حق نشر';

  @override
  String get copyrightContent => 'تمام تعاریف کلمات و جملات مثال در این برنامه اصلی یا تولید شده توسط هوش مصنوعی هستند.';

  @override
  String get privacyPolicy => 'سیاست حفظ حریم خصوصی';

  @override
  String get privacyContent => 'این برنامه هیچ اطلاعات شخصی جمع‌آوری، ذخیره یا به اشتراک نمی‌گذارد.';

  @override
  String get alphabetical => 'الفبایی';

  @override
  String get random => 'تصادفی';

  @override
  String get quiz => 'آزمون';

  @override
  String get testYourself => 'خودتان را بیازمایید';

  @override
  String get wordQuiz => 'آزمون اصطلاحات';

  @override
  String quizWithLevel(String level) {
    return 'آزمون $level';
  }

  @override
  String get wordToMeaningMode => 'اصطلاح←معنی';

  @override
  String get meaningToWordMode => 'معنی←اصطلاح';

  @override
  String get quizComplete => '🎉 آزمون کامل شد!';

  @override
  String correctAnswers(int percentage) {
    return '$percentage% صحیح';
  }

  @override
  String get exit => 'خروج';

  @override
  String get tryAgain => 'دوباره امتحان کنید';

  @override
  String get quizCompleteMessage => 'آزمون کامل شد!';

  @override
  String get excellent => 'عالی! 🌟';

  @override
  String get greatJob => 'آفرین! 👏';

  @override
  String get goodStart => 'شروع خوب! 💪';

  @override
  String get keepPracticing => 'به تمرین ادامه دهید! 📚';

  @override
  String questionProgress(int current, int total) {
    return '$current / $total';
  }

  @override
  String get whatIsTheMeaning => 'معنی این اصطلاح چیست؟';

  @override
  String get whichWordMatches => 'کدام اصطلاح با این معنی مطابقت دارد؟';

  @override
  String get nextQuestion => 'بعدی';

  @override
  String get loading => 'در حال بارگذاری...';

  @override
  String get removeAds => 'حذف تبلیغات';

  @override
  String get removeAdsTitle => 'حذف همه تبلیغات';

  @override
  String get removeAdsDesc => 'از تجربه یادگیری بدون تبلیغات لذت ببرید';

  @override
  String get adsRemoved => 'تبلیغات حذف شد';

  @override
  String get enjoyAdFree => 'از تجربه بدون تبلیغات خود لذت ببرید!';

  @override
  String get restorePurchase => 'بازیابی خرید';

  @override
  String get restorePurchaseDesc => 'برنامه را دوباره نصب کردید یا دستگاه تغییر دادید؟ برای بازیابی خرید بدون تبلیغ اینجا بزنید.';

  @override
  String get purchaseFailed => 'خرید ناموفق بود. لطفاً دوباره تلاش کنید.';

  @override
  String get purchaseRestored => 'خرید با موفقیت بازیابی شد!';

  @override
  String get noPurchaseToRestore => 'هیچ خریدی برای بازیابی یافت نشد';

  @override
  String get buy => 'خرید';

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
