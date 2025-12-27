// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appTitle => 'English Proverbs 300';

  @override
  String get todayWord => '📅 आज का मुहावरा';

  @override
  String get learning => 'सीखना';

  @override
  String get levelLearning => 'स्तर के अनुसार सीखना';

  @override
  String get allWords => 'सभी मुहावरे';

  @override
  String get viewAllWords => 'सभी मुहावरे देखें';

  @override
  String get favorites => 'पसंदीदा';

  @override
  String get savedWords => 'सहेजे गए मुहावरे';

  @override
  String get flashcard => 'फ्लैशकार्ड';

  @override
  String get cardLearning => 'कार्ड से सीखें';

  @override
  String get search => 'खोजें';

  @override
  String get searchWords => 'मुहावरे खोजें';

  @override
  String get settings => 'सेटिंग्स';

  @override
  String get noWords => 'कोई मुहावरा नहीं मिला';

  @override
  String get cannotLoadWords => 'मुहावरे लोड नहीं हो सकते';

  @override
  String get addedToFavorites => 'पसंदीदा में जोड़ा गया';

  @override
  String get removedFromFavorites => 'पसंदीदा से हटाया गया';

  @override
  String get definition => '📖 परिभाषा';

  @override
  String get example => '💬 उदाहरण';

  @override
  String get translating => 'अनुवाद हो रहा है...';

  @override
  String get listenPronunciation => 'उच्चारण सुनें';

  @override
  String get markAsLearned => 'सीखा हुआ चिह्नित करें';

  @override
  String get previous => 'पिछला';

  @override
  String get next => 'अगला';

  @override
  String get pronunciation => 'उच्चारण';

  @override
  String cardCount(int current, int total) {
    return '$current / $total';
  }

  @override
  String get tapToFlip => 'पलटने के लिए टैप करें';

  @override
  String get levelA1 => 'शुरुआती 1';

  @override
  String get levelA2 => 'शुरुआती 2';

  @override
  String get levelB1 => 'मध्यवर्ती 1';

  @override
  String get levelB2 => 'मध्यवर्ती 2';

  @override
  String get levelC1 => 'उन्नत';

  @override
  String levelWords(String level) {
    return '$level मुहावरे';
  }

  @override
  String get flashcardMode => 'फ्लैशकार्ड मोड';

  @override
  String get listMode => 'सूची मोड';

  @override
  String get language => 'भाषा';

  @override
  String get selectLanguage => 'अपनी भाषा चुनें';

  @override
  String languageChanged(String language) {
    return 'भाषा बदलकर $language हो गई';
  }

  @override
  String get translationInfo => 'अनुवाद जानकारी';

  @override
  String get translationInfoDesc =>
      'शब्द देखते समय अनुवाद स्वचालित रूप से डाउनलोड हो जाएंगे। डाउनलोड होने के बाद, वे ऑफलाइन उपयोग के लिए स्थानीय रूप से कैश हो जाते हैं।';

  @override
  String get ok => 'ठीक है';

  @override
  String get darkMode => 'डार्क मोड';

  @override
  String get speechRate => 'बोलने की गति';

  @override
  String get notifications => 'सूचनाएं';

  @override
  String get dailyReminder => 'दैनिक रिमाइंडर';

  @override
  String get about => 'के बारे में';

  @override
  String get version => 'संस्करण';

  @override
  String get developer => 'डेवलपर';

  @override
  String get searchHint => 'मुहावरे खोजें...';

  @override
  String get noSearchResults => 'कोई परिणाम नहीं मिला';

  @override
  String get typeToSearch => 'शब्द खोजने के लिए टाइप करें';

  @override
  String get noFavorites => 'अभी तक कोई पसंदीदा नहीं';

  @override
  String get addFavoritesHint =>
      'हृदय आइकन पर टैप करके शब्द पसंदीदा में जोड़ें';

  @override
  String get posNoun => 'संज्ञा';

  @override
  String get posVerb => 'क्रिया';

  @override
  String get posAdjective => 'विशेषण';

  @override
  String get posAdverb => 'क्रिया विशेषण';

  @override
  String get posPronoun => 'सर्वनाम';

  @override
  String get posPreposition => 'पूर्वसर्ग';

  @override
  String get posConjunction => 'संयोजक';

  @override
  String get posInterjection => 'विस्मयादिबोधक';

  @override
  String get posArticle => 'उपपद';

  @override
  String get posDeterminer => 'निर्धारक';

  @override
  String get posAuxiliary => 'सहायक क्रिया';

  @override
  String get posPhrasal => 'वाक्यांश क्रिया';

  @override
  String get showTranslationFirst => 'पहले अनुवाद दिखाएं';

  @override
  String get showTranslationFirstDesc =>
      'अंग्रेजी से पहले अनुवादित अर्थ दिखाएं';

  @override
  String get display => 'प्रदर्शन';

  @override
  String get useDarkTheme => 'डार्क थीम का उपयोग करें';

  @override
  String get restartToApply =>
      'थीम परिवर्तन लागू करने के लिए ऐप पुनः आरंभ करें';

  @override
  String get learningSection => 'सीखना';

  @override
  String currentSpeed(String speed) {
    return 'वर्तमान: ${speed}x';
  }

  @override
  String get getDailyReminders => 'दैनिक सीखने की याद दिलाएं';

  @override
  String get copyright => 'कॉपीराइट';

  @override
  String get copyrightDesc => 'सभी परिभाषाएं मूल या AI द्वारा उत्पन्न हैं';

  @override
  String get copyrightNotice => 'कॉपीराइट नोटिस';

  @override
  String get copyrightContent =>
      'इस ऐप में सभी मुहावरे परिभाषाएं और उदाहरण वाक्य मूल हैं या AI द्वारा उत्पन्न हैं। कोई कॉपीराइट शब्दकोश सामग्री का उपयोग नहीं किया गया है।';

  @override
  String get privacyPolicy => 'गोपनीयता नीति';

  @override
  String get privacyContent =>
      'यह ऐप कोई व्यक्तिगत जानकारी एकत्र, संग्रहीत या साझा नहीं करता है।';

  @override
  String get alphabetical => 'वर्णानुक्रम';

  @override
  String get random => 'यादृच्छिक';

  @override
  String get quiz => 'क्विज़';

  @override
  String get testYourself => 'खुद को परखें';

  @override
  String get wordQuiz => 'मुहावरा क्विज़';

  @override
  String quizWithLevel(String level) {
    return '$level क्विज़';
  }

  @override
  String get wordToMeaningMode => 'मुहावरा→अर्थ';

  @override
  String get meaningToWordMode => 'अर्थ→मुहावरा';

  @override
  String get quizComplete => '🎉 क्विज़ पूरा!';

  @override
  String correctAnswers(int percentage) {
    return '$percentage% सही';
  }

  @override
  String get exit => 'बाहर';

  @override
  String get tryAgain => 'फिर से कोशिश करें';

  @override
  String get quizCompleteMessage => 'क्विज़ पूरा!';

  @override
  String get excellent => 'उत्कृष्ट! 🌟';

  @override
  String get greatJob => 'बहुत बढ़िया! 👏';

  @override
  String get goodStart => 'अच्छी शुरुआत! 💪';

  @override
  String get keepPracticing => 'अभ्यास जारी रखें! 📚';

  @override
  String questionProgress(int current, int total) {
    return '$current / $total';
  }

  @override
  String get whatIsTheMeaning => 'इस मुहावरे का अर्थ क्या है?';

  @override
  String get whichWordMatches => 'कौन सा मुहावरा इस अर्थ से मेल खाता है?';

  @override
  String get nextQuestion => 'अगला';

  @override
  String get loading => 'लड ह रह ह...';

  @override
  String get removeAds => 'विज्ञापन हटाएं';

  @override
  String get removeAdsTitle => 'सभी विज्ञापन हटाएं';

  @override
  String get removeAdsDesc => 'विज्ञापन-मुक्त सीखने का आनंद लें';

  @override
  String get adsRemoved => 'विज्ञापन हटा दिए गए';

  @override
  String get enjoyAdFree => 'अपने विज्ञापन-मुक्त अनुभव का आनंद लें!';

  @override
  String get restorePurchase => 'खरीदारी पुनर्स्थापित करें';

  @override
  String get restorePurchaseDesc =>
      'ऐप को पुनः इंस्टॉल किया या डिवाइस बदला? विज्ञापन-मुक्त खरीदारी को पुनर्स्थापित करने के लिए यहां टैप करें।';

  @override
  String get purchaseFailed => 'खरीदारी विफल हुई। कृपया पुनः प्रयास करें।';

  @override
  String get purchaseRestored => 'खरीदारी सफलतापूर्वक पुनर्स्थापित!';

  @override
  String get noPurchaseToRestore =>
      'पुनर्स्थापित करने के लिए कोई खरीदारी नहीं मिली';

  @override
  String get buy => 'खरीदें';

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
  String get cancel => 'रद्द करें';

  @override
  String get lockedContent => 'लॉक की गई सामग्री';

  @override
  String get watchAdToUnlock =>
      'सभी शब्दों को आधी रात तक अनलॉक करने के लिए एक छोटा वीडियो देखें!';

  @override
  String get watchAd => 'विज्ञापन देखें';

  @override
  String get adNotReady =>
      'विज्ञापन अभी तैयार नहीं है। कृपया पुनः प्रयास करें।';

  @override
  String get unlockedUntilMidnight => 'आधी रात तक सभी शब्द अनलॉक हो गए!';
}
