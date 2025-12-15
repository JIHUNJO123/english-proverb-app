// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tagalog (`tl`).
class AppLocalizationsTl extends AppLocalizations {
  AppLocalizationsTl([String locale = 'tl']) : super(locale);

  @override
  String get appTitle => 'English Idioms 1000';

  @override
  String get todayWord => '📅 Idiom Ngayong Araw';

  @override
  String get learning => 'Pag-aaral';

  @override
  String get levelLearning => 'Pag-aaral ayon sa Antas';

  @override
  String get allWords => 'Lahat ng Idiom';

  @override
  String get viewAllWords => 'Tingnan lahat ng idiom';

  @override
  String get favorites => 'Mga Paborito';

  @override
  String get savedWords => 'Mga naka-save na idiom';

  @override
  String get flashcard => 'Flashcard';

  @override
  String get cardLearning => 'Matuto gamit ang card';

  @override
  String get search => 'Maghanap';

  @override
  String get searchWords => 'Maghanap ng idiom';

  @override
  String get settings => 'Mga Setting';

  @override
  String get noWords => 'Walang nahanap na idiom';

  @override
  String get cannotLoadWords => 'Hindi mai-load ang mga idiom';

  @override
  String get addedToFavorites => 'Idinagdag sa mga paborito';

  @override
  String get removedFromFavorites => 'Tinanggal sa mga paborito';

  @override
  String get definition => '📖 Kahulugan';

  @override
  String get example => '💬 Halimbawa';

  @override
  String get translating => 'Nagsasalin...';

  @override
  String get listenPronunciation => 'Pakinggan ang Pagbigkas';

  @override
  String get markAsLearned => 'Markahan bilang Natutunan';

  @override
  String get previous => 'Nakaraan';

  @override
  String get next => 'Susunod';

  @override
  String get pronunciation => 'Pagbigkas';

  @override
  String cardCount(int current, int total) {
    return '$current / $total';
  }

  @override
  String get tapToFlip => 'I-tap para i-flip';

  @override
  String get levelA1 => 'Baguhan 1';

  @override
  String get levelA2 => 'Baguhan 2';

  @override
  String get levelB1 => 'Katamtaman 1';

  @override
  String get levelB2 => 'Katamtaman 2';

  @override
  String get levelC1 => 'Advanced';

  @override
  String levelWords(String level) {
    return '$level na Idiom';
  }

  @override
  String get flashcardMode => 'Flashcard Mode';

  @override
  String get listMode => 'List Mode';

  @override
  String get language => 'Wika';

  @override
  String get selectLanguage => 'Piliin ang Iyong Wika';

  @override
  String languageChanged(String language) {
    return 'Pinalitan ang wika sa $language';
  }

  @override
  String get translationInfo => 'Impormasyon sa Pagsasalin';

  @override
  String get translationInfoDesc => 'Awtomatikong ida-download ang mga pagsasalin kapag tiningnan mo ang mga salita. Pagkatapos i-download, ito ay naka-cache nang lokal para sa offline na paggamit.';

  @override
  String get ok => 'OK';

  @override
  String get darkMode => 'Dark Mode';

  @override
  String get speechRate => 'Bilis ng Pagsasalita';

  @override
  String get notifications => 'Mga Notification';

  @override
  String get dailyReminder => 'Pang-araw-araw na Paalala';

  @override
  String get about => 'Tungkol';

  @override
  String get version => 'Bersyon';

  @override
  String get developer => 'Developer';

  @override
  String get searchHint => 'Maghanap ng mga salita...';

  @override
  String get noSearchResults => 'Walang nahanap na resulta';

  @override
  String get typeToSearch => 'Mag-type para maghanap ng mga salita';

  @override
  String get noFavorites => 'Wala pang mga paborito';

  @override
  String get addFavoritesHint => 'Magdagdag ng mga salita sa mga paborito sa pamamagitan ng pag-tap sa icon ng puso';

  @override
  String get posNoun => 'pangngalan';

  @override
  String get posVerb => 'pandiwa';

  @override
  String get posAdjective => 'pang-uri';

  @override
  String get posAdverb => 'pang-abay';

  @override
  String get posPronoun => 'panghalip';

  @override
  String get posPreposition => 'pang-ukol';

  @override
  String get posConjunction => 'pangatnig';

  @override
  String get posInterjection => 'pandamdam';

  @override
  String get posArticle => 'pantukoy';

  @override
  String get posDeterminer => 'pananda';

  @override
  String get posAuxiliary => 'pantulong na pandiwa';

  @override
  String get posPhrasal => 'pariralang pandiwa';

  @override
  String get showTranslationFirst => 'Ipakita muna ang pagsasalin';

  @override
  String get showTranslationFirstDesc => 'Ipakita ang isinalin na kahulugan bago ang English';

  @override
  String get display => 'Display';

  @override
  String get useDarkTheme => 'Gumamit ng dark theme';

  @override
  String get restartToApply => 'I-restart ang app para ilapat ang pagbabago ng tema';

  @override
  String get learningSection => 'Pag-aaral';

  @override
  String currentSpeed(String speed) {
    return 'Kasalukuyan: ${speed}x';
  }

  @override
  String get getDailyReminders => 'Makatanggap ng pang-araw-araw na paalala sa pag-aaral';

  @override
  String get copyright => 'Copyright';

  @override
  String get copyrightDesc => 'Lahat ng kahulugan ay orihinal o AI-generated';

  @override
  String get copyrightNotice => 'Abiso sa Copyright';

  @override
  String get copyrightContent => 'Lahat ng kahulugan ng salita at halimbawang pangungusap sa app na ito ay orihinal o AI-generated.';

  @override
  String get privacyPolicy => 'Patakaran sa Privacy';

  @override
  String get privacyContent => 'Hindi kumukuha, nag-iimbak, o nagbabahagi ang app na ito ng anumang personal na impormasyon.';

  @override
  String get alphabetical => 'Alpabetiko';

  @override
  String get random => 'Random';

  @override
  String get quiz => 'Quiz';

  @override
  String get testYourself => 'Subukan ang iyong sarili';

  @override
  String get wordQuiz => 'Quiz sa Idiom';

  @override
  String quizWithLevel(String level) {
    return '$level Quiz';
  }

  @override
  String get wordToMeaningMode => 'Idiom→Kahulugan';

  @override
  String get meaningToWordMode => 'Kahulugan→Idiom';

  @override
  String get quizComplete => '🎉 Tapos na ang Quiz!';

  @override
  String correctAnswers(int percentage) {
    return '$percentage% Tama';
  }

  @override
  String get exit => 'Lumabas';

  @override
  String get tryAgain => 'Subukan Muli';

  @override
  String get quizCompleteMessage => 'Tapos na ang Quiz!';

  @override
  String get excellent => 'Napakahusay! 🌟';

  @override
  String get greatJob => 'Magaling! 👏';

  @override
  String get goodStart => 'Magandang Simula! 💪';

  @override
  String get keepPracticing => 'Magpatuloy sa Pagsasanay! 📚';

  @override
  String questionProgress(int current, int total) {
    return '$current / $total';
  }

  @override
  String get whatIsTheMeaning => 'Ano ang kahulugan ng idiom na ito?';

  @override
  String get whichWordMatches => 'Aling idiom ang tumutugma sa kahulugang ito?';

  @override
  String get nextQuestion => 'Susunod';

  @override
  String get loading => 'Naglo-load...';

  @override
  String get removeAds => 'Alisin ang Ads';

  @override
  String get removeAdsTitle => 'Alisin ang Lahat ng Ads';

  @override
  String get removeAdsDesc => 'Mag-enjoy ng karanasan sa pag-aaral na walang ads';

  @override
  String get adsRemoved => 'Naalis na ang Ads';

  @override
  String get enjoyAdFree => 'Mag-enjoy sa iyong karanasang walang ads!';

  @override
  String get restorePurchase => 'Ibalik ang Pagbili';

  @override
  String get restorePurchaseDesc => 'Nag-reinstall ng app o nagpalit ng device? I-tap dito para ibalik ang iyong walang ads na pagbili.';

  @override
  String get purchaseFailed => 'Nabigo ang pagbili. Pakisubukan muli.';

  @override
  String get purchaseRestored => 'Matagumpay na naibalik ang pagbili!';

  @override
  String get noPurchaseToRestore => 'Walang pagbili na maibabalik';

  @override
  String get buy => 'Bumili';

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
