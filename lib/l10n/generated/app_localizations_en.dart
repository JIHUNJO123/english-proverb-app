// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'English Idioms 1000';

  @override
  String get todayWord => '📅 Today\'s Idiom';

  @override
  String get learning => 'Learning';

  @override
  String get levelLearning => 'Level Learning';

  @override
  String get allWords => 'All Idioms';

  @override
  String get viewAllWords => 'View All Idioms';

  @override
  String get favorites => 'Favorites';

  @override
  String get savedWords => 'Saved idioms';

  @override
  String get flashcard => 'Flashcard';

  @override
  String get cardLearning => 'Learn with cards';

  @override
  String get search => 'Search';

  @override
  String get searchWords => 'Search idioms';

  @override
  String get settings => 'Settings';

  @override
  String get noWords => 'No idioms found';

  @override
  String get cannotLoadWords => 'Cannot load idioms';

  @override
  String get addedToFavorites => 'Added to favorites';

  @override
  String get removedFromFavorites => 'Removed from favorites';

  @override
  String get definition => '📖 Definition';

  @override
  String get example => '💬 Example';

  @override
  String get translating => 'Translating...';

  @override
  String get listenPronunciation => 'Listen Pronunciation';

  @override
  String get markAsLearned => 'Mark as Learned';

  @override
  String get previous => 'Previous';

  @override
  String get next => 'Next';

  @override
  String get pronunciation => 'Pronounce';

  @override
  String cardCount(int current, int total) {
    return '$current / $total';
  }

  @override
  String get tapToFlip => 'Tap to flip';

  @override
  String get levelA1 => 'Beginner 1';

  @override
  String get levelA2 => 'Beginner 2';

  @override
  String get levelB1 => 'Intermediate 1';

  @override
  String get levelB2 => 'Intermediate 2';

  @override
  String get levelC1 => 'Advanced';

  @override
  String levelWords(String level) {
    return '$level Idioms';
  }

  @override
  String get flashcardMode => 'Flashcard Mode';

  @override
  String get listMode => 'List Mode';

  @override
  String get language => 'Language';

  @override
  String get selectLanguage => 'Select Your Language';

  @override
  String languageChanged(String language) {
    return 'Language changed to $language';
  }

  @override
  String get translationInfo => 'Translation Info';

  @override
  String get translationInfoDesc => 'Translations will be downloaded automatically when you view idioms. Once downloaded, they are cached locally for offline use.';

  @override
  String get ok => 'OK';

  @override
  String get darkMode => 'Dark Mode';

  @override
  String get speechRate => 'Speech Rate';

  @override
  String get notifications => 'Notifications';

  @override
  String get dailyReminder => 'Daily Reminder';

  @override
  String get about => 'About';

  @override
  String get version => 'Version';

  @override
  String get developer => 'Developer';

  @override
  String get searchHint => 'Search for idioms...';

  @override
  String get noSearchResults => 'No results found';

  @override
  String get typeToSearch => 'Type to Search for idioms...';

  @override
  String get noFavorites => 'No favorites yet';

  @override
  String get addFavoritesHint => 'Add idioms to favorites by tapping the heart icon';

  @override
  String get posNoun => 'noun';

  @override
  String get posVerb => 'verb';

  @override
  String get posAdjective => 'adjective';

  @override
  String get posAdverb => 'adverb';

  @override
  String get posPronoun => 'pronoun';

  @override
  String get posPreposition => 'preposition';

  @override
  String get posConjunction => 'conjunction';

  @override
  String get posInterjection => 'interjection';

  @override
  String get posArticle => 'article';

  @override
  String get posDeterminer => 'determiner';

  @override
  String get posAuxiliary => 'auxiliary verb';

  @override
  String get posPhrasal => 'phrasal verb';

  @override
  String get showTranslationFirst => 'Show translation first';

  @override
  String get showTranslationFirstDesc => 'Display translated meaning before English';

  @override
  String get display => 'Display';

  @override
  String get useDarkTheme => 'Use dark theme';

  @override
  String get restartToApply => 'Restart app to apply theme change';

  @override
  String get learningSection => 'Learning';

  @override
  String currentSpeed(String speed) {
    return 'Current: ${speed}x';
  }

  @override
  String get getDailyReminders => 'Get daily learning reminders';

  @override
  String get copyright => 'Copyright';

  @override
  String get copyrightDesc => 'All definitions are original or AI-generated';

  @override
  String get copyrightNotice => 'Copyright Notice';

  @override
  String get copyrightContent => 'All idiom definitions and example sentences in this app are original or AI-generated. No copyrighted dictionary content is used.\n\nTranslations are provided by MyMemory API (free translation service).';

  @override
  String get privacyPolicy => 'Privacy Policy';

  @override
  String get privacyContent => 'This app does not collect, store, or share any personal information.\n\nTranslation requests are sent to MyMemory API for processing. No user data is stored on external servers.';

  @override
  String get alphabetical => 'Alphabetical';

  @override
  String get random => 'Random';

  @override
  String get quiz => 'Quiz';

  @override
  String get testYourself => 'Test yourself';

  @override
  String get wordQuiz => 'Idiom Quiz';

  @override
  String quizWithLevel(String level) {
    return '$level Quiz';
  }

  @override
  String get wordToMeaningMode => 'Idiom→Meaning';

  @override
  String get meaningToWordMode => 'Meaning→Idiom';

  @override
  String get quizComplete => '🎉 Quiz Complete!';

  @override
  String correctAnswers(int percentage) {
    return '$percentage% Correct';
  }

  @override
  String get exit => 'Exit';

  @override
  String get tryAgain => 'Try Again';

  @override
  String get quizCompleteMessage => 'Quiz Complete!';

  @override
  String get excellent => 'Excellent! 🌟';

  @override
  String get greatJob => 'Great Job! 👏';

  @override
  String get goodStart => 'Good Start! 💪';

  @override
  String get keepPracticing => 'Keep Practicing! 📚';

  @override
  String questionProgress(int current, int total) {
    return '$current / $total';
  }

  @override
  String get whatIsTheMeaning => 'What is the meaning of this idiom?';

  @override
  String get whichWordMatches => 'Which idiom matches this meaning?';

  @override
  String get nextQuestion => 'Next';

  @override
  String get loading => 'Loading...';

  @override
  String get removeAds => 'Remove Ads';

  @override
  String get removeAdsTitle => 'Remove All Ads';

  @override
  String get removeAdsDesc => 'Enjoy ad-free learning experience';

  @override
  String get adsRemoved => 'Ads Removed';

  @override
  String get enjoyAdFree => 'Enjoy your ad-free experience!';

  @override
  String get restorePurchase => 'Restore Purchase';

  @override
  String get restorePurchaseDesc => 'Reinstalled or switched devices? Tap here to restore your ad-free purchase.';

  @override
  String get purchaseFailed => 'Purchase failed. Please try again.';

  @override
  String get purchaseRestored => 'Purchase restored successfully!';

  @override
  String get noPurchaseToRestore => 'No purchase found to restore';

  @override
  String get buy => 'Buy';

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
