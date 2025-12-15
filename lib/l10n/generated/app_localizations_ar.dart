// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appTitle => 'English Idioms 1000';

  @override
  String get todayWord => '📅 تعبير اليوم';

  @override
  String get learning => 'التعلم';

  @override
  String get levelLearning => 'التعلم حسب المستوى';

  @override
  String get allWords => 'كل التعابير';

  @override
  String get viewAllWords => 'عرض جميع التعابير';

  @override
  String get favorites => 'المفضلة';

  @override
  String get savedWords => 'التعابير المحفوظة';

  @override
  String get flashcard => 'بطاقات تعليمية';

  @override
  String get cardLearning => 'التعلم بالبطاقات';

  @override
  String get search => 'بحث';

  @override
  String get searchWords => 'البحث عن تعابير';

  @override
  String get settings => 'الإعدادات';

  @override
  String get noWords => 'لا توجد تعابير';

  @override
  String get cannotLoadWords => 'لا يمكن تحميل التعابير';

  @override
  String get addedToFavorites => 'تمت الإضافة للمفضلة';

  @override
  String get removedFromFavorites => 'تمت الإزالة من المفضلة';

  @override
  String get definition => '📖 التعريف';

  @override
  String get example => '💬 مثال';

  @override
  String get translating => 'جاري الترجمة...';

  @override
  String get listenPronunciation => 'استمع للنطق';

  @override
  String get markAsLearned => 'تم التعلم';

  @override
  String get previous => 'السابق';

  @override
  String get next => 'التالي';

  @override
  String get pronunciation => 'النطق';

  @override
  String cardCount(int current, int total) {
    return '$current / $total';
  }

  @override
  String get tapToFlip => 'انقر للقلب';

  @override
  String get levelA1 => 'مبتدئ 1';

  @override
  String get levelA2 => 'مبتدئ 2';

  @override
  String get levelB1 => 'متوسط 1';

  @override
  String get levelB2 => 'متوسط 2';

  @override
  String get levelC1 => 'متقدم';

  @override
  String levelWords(String level) {
    return 'تعابير $level';
  }

  @override
  String get flashcardMode => 'وضع البطاقات';

  @override
  String get listMode => 'وضع القائمة';

  @override
  String get language => 'اللغة';

  @override
  String get selectLanguage => 'اختر لغتك';

  @override
  String languageChanged(String language) {
    return 'تم تغيير اللغة إلى $language';
  }

  @override
  String get translationInfo => 'معلومات الترجمة';

  @override
  String get translationInfoDesc => 'سيتم تنزيل الترجمات تلقائياً عند عرض الكلمات. بعد التنزيل، يتم تخزينها محلياً للاستخدام دون اتصال.';

  @override
  String get ok => 'موافق';

  @override
  String get darkMode => 'الوضع الداكن';

  @override
  String get speechRate => 'سرعة النطق';

  @override
  String get notifications => 'الإشعارات';

  @override
  String get dailyReminder => 'تذكير يومي';

  @override
  String get about => 'حول';

  @override
  String get version => 'الإصدار';

  @override
  String get developer => 'المطور';

  @override
  String get searchHint => 'ابحث عن كلمات...';

  @override
  String get noSearchResults => 'لا توجد نتائج';

  @override
  String get typeToSearch => 'اكتب للبحث عن كلمات';

  @override
  String get noFavorites => 'لا توجد مفضلات بعد';

  @override
  String get addFavoritesHint => 'أضف تعابير للمفضلة بالنقر على أيقونة القلب';

  @override
  String get posNoun => 'اسم';

  @override
  String get posVerb => 'فعل';

  @override
  String get posAdjective => 'صفة';

  @override
  String get posAdverb => 'ظرف';

  @override
  String get posPronoun => 'ضمير';

  @override
  String get posPreposition => 'حرف جر';

  @override
  String get posConjunction => 'حرف عطف';

  @override
  String get posInterjection => 'اسم تعجب';

  @override
  String get posArticle => 'أداة تعريف';

  @override
  String get posDeterminer => 'محدد';

  @override
  String get posAuxiliary => 'فعل مساعد';

  @override
  String get posPhrasal => 'فعل مركب';

  @override
  String get showTranslationFirst => 'عرض الترجمة أولاً';

  @override
  String get showTranslationFirstDesc => 'عرض المعنى المترجم قبل الإنجليزية';

  @override
  String get display => 'العرض';

  @override
  String get useDarkTheme => 'استخدام السمة الداكنة';

  @override
  String get restartToApply => 'أعد تشغيل التطبيق لتطبيق تغيير السمة';

  @override
  String get learningSection => 'التعلم';

  @override
  String currentSpeed(String speed) {
    return 'الحالي: ${speed}x';
  }

  @override
  String get getDailyReminders => 'احصل على تذكيرات تعلم يومية';

  @override
  String get copyright => 'حقوق النشر';

  @override
  String get copyrightDesc => 'جميع التعريفات أصلية أو مولدة بالذكاء الاصطناعي';

  @override
  String get copyrightNotice => 'إشعار حقوق النشر';

  @override
  String get copyrightContent => 'جميع تعريفات التعابير والجمل المثال في هذا التطبيق أصلية أو مولدة بالذكاء الاصطناعي. لم يتم استخدام محتوى قاموس محمي بحقوق النشر.\n\nالترجمات مقدمة من MyMemory API (خدمة ترجمة مجانية).';

  @override
  String get privacyPolicy => 'سياسة الخصوصية';

  @override
  String get privacyContent => 'هذا التطبيق لا يجمع أو يخزن أو يشارك أي معلومات شخصية.\n\nيتم إرسال طلبات الترجمة إلى MyMemory API للمعالجة. لا يتم تخزين بيانات المستخدم على خوادم خارجية.';

  @override
  String get alphabetical => 'أبجدي';

  @override
  String get random => 'عشوائي';

  @override
  String get quiz => 'اختبار';

  @override
  String get testYourself => 'اختبر نفسك';

  @override
  String get wordQuiz => 'اختبار التعابير';

  @override
  String quizWithLevel(String level) {
    return 'اختبار $level';
  }

  @override
  String get wordToMeaningMode => 'تعبير→معنى';

  @override
  String get meaningToWordMode => 'معنى→تعبير';

  @override
  String get quizComplete => '🎉 اكتمل الاختبار!';

  @override
  String correctAnswers(int percentage) {
    return '$percentage% صحيح';
  }

  @override
  String get exit => 'خروج';

  @override
  String get tryAgain => 'حاول مرة أخرى';

  @override
  String get quizCompleteMessage => 'اكتمل الاختبار!';

  @override
  String get excellent => 'ممتاز! 🌟';

  @override
  String get greatJob => 'عمل رائع! 👏';

  @override
  String get goodStart => 'بداية جيدة! 💪';

  @override
  String get keepPracticing => 'استمر في التدريب! 📚';

  @override
  String questionProgress(int current, int total) {
    return '$current / $total';
  }

  @override
  String get whatIsTheMeaning => 'ما معنى هذا التعبير؟';

  @override
  String get whichWordMatches => 'أي تعبير يتطابق مع هذا المعنى؟';

  @override
  String get nextQuestion => 'التالي';

  @override
  String get loading => 'جار التحميل...';

  @override
  String get removeAds => 'إزالة الإعلانات';

  @override
  String get removeAdsTitle => 'إزالة جميع الإعلانات';

  @override
  String get removeAdsDesc => 'استمتع بتجربة تعلم بدون إعلانات';

  @override
  String get adsRemoved => 'تمت إزالة الإعلانات';

  @override
  String get enjoyAdFree => 'استمتع بتجربتك بدون إعلانات!';

  @override
  String get restorePurchase => 'استعادة المشتريات';

  @override
  String get restorePurchaseDesc => 'أعدت تثبيت التطبيق أو غيرت الجهاز؟ اضغط هنا لاستعادة شراء إزالة الإعلانات.';

  @override
  String get purchaseFailed => 'فشلت عملية الشراء. يرجى المحاولة مرة أخرى.';

  @override
  String get purchaseRestored => 'تمت استعادة عملية الشراء بنجاح!';

  @override
  String get noPurchaseToRestore => 'لا توجد عملية شراء للاستعادة';

  @override
  String get buy => 'شراء';

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
