// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String get appTitle => 'English Proverbs 300';

  @override
  String get todayWord => '📅 আজকের বাগধারা';

  @override
  String get learning => 'শেখা';

  @override
  String get levelLearning => 'স্তর অনুযায়ী শেখা';

  @override
  String get allWords => 'সব বাগধারা';

  @override
  String get viewAllWords => 'সব বাগধারা দেখুন';

  @override
  String get favorites => 'পছন্দের';

  @override
  String get savedWords => 'সংরক্ষিত বাগধারা';

  @override
  String get flashcard => 'ফ্ল্যাশকার্ড';

  @override
  String get cardLearning => 'কার্ড দিয়ে শিখুন';

  @override
  String get search => 'খুঁজুন';

  @override
  String get searchWords => 'বাগধারা খুঁজুন';

  @override
  String get settings => 'সেটিংস';

  @override
  String get noWords => 'কোনো বাগধারা পাওয়া যায়নি';

  @override
  String get cannotLoadWords => 'বাগধারা লোড করা যাচ্ছে না';

  @override
  String get addedToFavorites => 'পছন্দে যোগ করা হয়েছে';

  @override
  String get removedFromFavorites => 'পছন্দ থেকে সরানো হয়েছে';

  @override
  String get definition => '📖 সংজ্ঞা';

  @override
  String get example => '💬 উদাহরণ';

  @override
  String get translating => 'অনুবাদ হচ্ছে...';

  @override
  String get listenPronunciation => 'উচ্চারণ শুনুন';

  @override
  String get markAsLearned => 'শেখা হিসেবে চিহ্নিত করুন';

  @override
  String get previous => 'আগের';

  @override
  String get next => 'পরের';

  @override
  String get pronunciation => 'উচ্চারণ';

  @override
  String cardCount(int current, int total) {
    return '$current / $total';
  }

  @override
  String get tapToFlip => 'উল্টাতে ট্যাপ করুন';

  @override
  String get levelA1 => 'প্রাথমিক ১';

  @override
  String get levelA2 => 'প্রাথমিক ২';

  @override
  String get levelB1 => 'মধ্যবর্তী ১';

  @override
  String get levelB2 => 'মধ্যবর্তী ২';

  @override
  String get levelC1 => 'উন্নত';

  @override
  String levelWords(String level) {
    return '$level বাগধারা';
  }

  @override
  String get flashcardMode => 'ফ্ল্যাশকার্ড মোড';

  @override
  String get listMode => 'তালিকা মোড';

  @override
  String get language => 'ভাষা';

  @override
  String get selectLanguage => 'আপনার ভাষা নির্বাচন করুন';

  @override
  String languageChanged(String language) {
    return 'ভাষা $language এ পরিবর্তিত হয়েছে';
  }

  @override
  String get translationInfo => 'অনুবাদ তথ্য';

  @override
  String get translationInfoDesc =>
      'শব্দ দেখার সময় অনুবাদ স্বয়ংক্রিয়ভাবে ডাউনলোড হবে। ডাউনলোডের পরে অফলাইন ব্যবহারের জন্য স্থানীয়ভাবে সংরক্ষিত থাকবে।';

  @override
  String get ok => 'ঠিক আছে';

  @override
  String get darkMode => 'ডার্ক মোড';

  @override
  String get speechRate => 'কথার গতি';

  @override
  String get notifications => 'বিজ্ঞপ্তি';

  @override
  String get dailyReminder => 'দৈনিক রিমাইন্ডার';

  @override
  String get about => 'সম্পর্কে';

  @override
  String get version => 'সংস্করণ';

  @override
  String get developer => 'ডেভেলপার';

  @override
  String get searchHint => 'বাগধারা খুঁজুন...';

  @override
  String get noSearchResults => 'কোনো ফলাফল পাওয়া যায়নি';

  @override
  String get typeToSearch => 'শব্দ খুঁজতে টাইপ করুন';

  @override
  String get noFavorites => 'এখনো কোনো পছন্দ নেই';

  @override
  String get addFavoritesHint => 'হার্ট আইকনে ট্যাপ করে শব্দ পছন্দে যোগ করুন';

  @override
  String get posNoun => 'বিশেষ্য';

  @override
  String get posVerb => 'ক্রিয়া';

  @override
  String get posAdjective => 'বিশেষণ';

  @override
  String get posAdverb => 'ক্রিয়া বিশেষণ';

  @override
  String get posPronoun => 'সর্বনাম';

  @override
  String get posPreposition => 'অব্যয়';

  @override
  String get posConjunction => 'সংযোজক';

  @override
  String get posInterjection => 'আবেগসূচক';

  @override
  String get posArticle => 'প্রবন্ধ';

  @override
  String get posDeterminer => 'নির্ধারক';

  @override
  String get posAuxiliary => 'সহায়ক ক্রিয়া';

  @override
  String get posPhrasal => 'বাক্যাংশ ক্রিয়া';

  @override
  String get showTranslationFirst => 'আগে অনুবাদ দেখান';

  @override
  String get showTranslationFirstDesc => 'ইংরেজির আগে অনুবাদিত অর্থ দেখান';

  @override
  String get display => 'প্রদর্শন';

  @override
  String get useDarkTheme => 'ডার্ক থিম ব্যবহার করুন';

  @override
  String get restartToApply => 'থিম পরিবর্তন প্রয়োগ করতে অ্যাপ রিস্টার্ট করুন';

  @override
  String get learningSection => 'শেখা';

  @override
  String currentSpeed(String speed) {
    return 'বর্তমান: ${speed}x';
  }

  @override
  String get getDailyReminders => 'দৈনিক শেখার রিমাইন্ডার পান';

  @override
  String get copyright => 'কপিরাইট';

  @override
  String get copyrightDesc => 'সব সংজ্ঞা মূল বা AI-জেনারেটেড';

  @override
  String get copyrightNotice => 'কপিরাইট বিজ্ঞপ্তি';

  @override
  String get copyrightContent =>
      'এই অ্যাপের সমস্ত শব্দ সংজ্ঞা এবং উদাহরণ বাক্য মূল বা AI-জেনারেটেড।';

  @override
  String get privacyPolicy => 'গোপনীয়তা নীতি';

  @override
  String get privacyContent =>
      'এই অ্যাপ কোনো ব্যক্তিগত তথ্য সংগ্রহ, সংরক্ষণ বা শেয়ার করে না।';

  @override
  String get alphabetical => 'বর্ণানুক্রমিক';

  @override
  String get random => 'এলোমেলো';

  @override
  String get quiz => 'কুইজ';

  @override
  String get testYourself => 'নিজেকে পরীক্ষা করুন';

  @override
  String get wordQuiz => 'বাগধারা কুইজ';

  @override
  String quizWithLevel(String level) {
    return '$level কুইজ';
  }

  @override
  String get wordToMeaningMode => 'বাগধারা→অর্থ';

  @override
  String get meaningToWordMode => 'অর্থ→বাগধারা';

  @override
  String get quizComplete => '🎉 কুইজ সম্পূর্ণ!';

  @override
  String correctAnswers(int percentage) {
    return '$percentage% সঠিক';
  }

  @override
  String get exit => 'বের হন';

  @override
  String get tryAgain => 'আবার চেষ্টা করুন';

  @override
  String get quizCompleteMessage => 'কুইজ সম্পূর্ণ!';

  @override
  String get excellent => 'চমৎকার! 🌟';

  @override
  String get greatJob => 'দারুণ! 👏';

  @override
  String get goodStart => 'ভালো শুরু! 💪';

  @override
  String get keepPracticing => 'অনুশীলন চালিয়ে যান! 📚';

  @override
  String questionProgress(int current, int total) {
    return '$current / $total';
  }

  @override
  String get whatIsTheMeaning => 'এই বাগধারার অর্থ কী?';

  @override
  String get whichWordMatches => 'কোন বাগধারাটি এই অর্থের সাথে মেলে?';

  @override
  String get nextQuestion => 'পরবর্তী';

  @override
  String get loading => 'লোড হচ্ছে...';

  @override
  String get removeAds => 'বিজ্ঞাপন সরান';

  @override
  String get removeAdsTitle => 'সব বিজ্ঞাপন সরান';

  @override
  String get removeAdsDesc => 'বিজ্ঞাপন-মুক্ত শেখার অভিজ্ঞতা উপভোগ করুন';

  @override
  String get adsRemoved => 'বিজ্ঞাপন সরানো হয়েছে';

  @override
  String get enjoyAdFree => 'আপনার বিজ্ঞাপন-মুক্ত অভিজ্ঞতা উপভোগ করুন!';

  @override
  String get restorePurchase => 'কেনাকাটা পুনরুদ্ধার করুন';

  @override
  String get restorePurchaseDesc =>
      'অ্যাপ পুনরায় ইনস্টল করেছেন বা ডিভাইস পরিবর্তন করেছেন? বিজ্ঞাপন-মুক্ত কেনাকাটা পুনরুদ্ধার করতে এখানে ট্যাপ করুন।';

  @override
  String get purchaseFailed =>
      'কেনাকাটা ব্যর্থ হয়েছে। অনুগ্রহ করে আবার চেষ্টা করুন।';

  @override
  String get purchaseRestored => 'কেনাকাটা সফলভাবে পুনরুদ্ধার হয়েছে!';

  @override
  String get noPurchaseToRestore =>
      'পুনরুদ্ধার করার জন্য কোনো কেনাকাটা পাওয়া যায়নি';

  @override
  String get buy => 'কিনুন';

  @override
  String get wordFontSize => 'Flashcard Proverb Size';

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
  String get apiTranslationNotice =>
      'Translations are being provided via API (online translation)';

  @override
  String get cancel => 'বাতিল';

  @override
  String get lockedContent => 'লক করা বিষয়বস্তু';

  @override
  String get watchAdToUnlock =>
      'সমস্ত শব্দ মধ্যরাত পর্যন্ত আনলক করতে একটি ছোট ভিডিও দেখুন!';

  @override
  String get watchAd => 'বিজ্ঞাপন দেখুন';

  @override
  String get adNotReady =>
      'বিজ্ঞাপন এখনো প্রস্তুত নয়। অনুগ্রহ করে আবার চেষ্টা করুন।';

  @override
  String get unlockedUntilMidnight =>
      'মধ্যরাত পর্যন্ত সমস্ত শব্দ আনলক করা হয়েছে!';
}
