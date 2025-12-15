import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_bn.dart';
import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fa.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_id.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_ms.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_pl.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_sv.dart';
import 'app_localizations_th.dart';
import 'app_localizations_tl.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_uk.dart';
import 'app_localizations_ur.dart';
import 'app_localizations_vi.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('bn'),
    Locale('de'),
    Locale('en'),
    Locale('es'),
    Locale('fa'),
    Locale('fr'),
    Locale('hi'),
    Locale('id'),
    Locale('it'),
    Locale('ja'),
    Locale('ko'),
    Locale('ms'),
    Locale('nl'),
    Locale('pl'),
    Locale('pt'),
    Locale('ru'),
    Locale('sv'),
    Locale('th'),
    Locale('tl'),
    Locale('tr'),
    Locale('uk'),
    Locale('ur'),
    Locale('vi'),
    Locale('zh')
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'English Idioms 1000'**
  String get appTitle;

  /// No description provided for @todayWord.
  ///
  /// In en, this message translates to:
  /// **'📅 Today\'s Idiom'**
  String get todayWord;

  /// No description provided for @learning.
  ///
  /// In en, this message translates to:
  /// **'Learning'**
  String get learning;

  /// No description provided for @levelLearning.
  ///
  /// In en, this message translates to:
  /// **'Level Learning'**
  String get levelLearning;

  /// No description provided for @allWords.
  ///
  /// In en, this message translates to:
  /// **'All Idioms'**
  String get allWords;

  /// No description provided for @viewAllWords.
  ///
  /// In en, this message translates to:
  /// **'View All Idioms'**
  String get viewAllWords;

  /// No description provided for @favorites.
  ///
  /// In en, this message translates to:
  /// **'Favorites'**
  String get favorites;

  /// No description provided for @savedWords.
  ///
  /// In en, this message translates to:
  /// **'Saved idioms'**
  String get savedWords;

  /// No description provided for @flashcard.
  ///
  /// In en, this message translates to:
  /// **'Flashcard'**
  String get flashcard;

  /// No description provided for @cardLearning.
  ///
  /// In en, this message translates to:
  /// **'Learn with cards'**
  String get cardLearning;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @searchWords.
  ///
  /// In en, this message translates to:
  /// **'Search idioms'**
  String get searchWords;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @noWords.
  ///
  /// In en, this message translates to:
  /// **'No idioms found'**
  String get noWords;

  /// No description provided for @cannotLoadWords.
  ///
  /// In en, this message translates to:
  /// **'Cannot load idioms'**
  String get cannotLoadWords;

  /// No description provided for @addedToFavorites.
  ///
  /// In en, this message translates to:
  /// **'Added to favorites'**
  String get addedToFavorites;

  /// No description provided for @removedFromFavorites.
  ///
  /// In en, this message translates to:
  /// **'Removed from favorites'**
  String get removedFromFavorites;

  /// No description provided for @definition.
  ///
  /// In en, this message translates to:
  /// **'📖 Definition'**
  String get definition;

  /// No description provided for @example.
  ///
  /// In en, this message translates to:
  /// **'💬 Example'**
  String get example;

  /// No description provided for @translating.
  ///
  /// In en, this message translates to:
  /// **'Translating...'**
  String get translating;

  /// No description provided for @listenPronunciation.
  ///
  /// In en, this message translates to:
  /// **'Listen Pronunciation'**
  String get listenPronunciation;

  /// No description provided for @markAsLearned.
  ///
  /// In en, this message translates to:
  /// **'Mark as Learned'**
  String get markAsLearned;

  /// No description provided for @previous.
  ///
  /// In en, this message translates to:
  /// **'Previous'**
  String get previous;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @pronunciation.
  ///
  /// In en, this message translates to:
  /// **'Pronounce'**
  String get pronunciation;

  /// No description provided for @cardCount.
  ///
  /// In en, this message translates to:
  /// **'{current} / {total}'**
  String cardCount(int current, int total);

  /// No description provided for @tapToFlip.
  ///
  /// In en, this message translates to:
  /// **'Tap to flip'**
  String get tapToFlip;

  /// No description provided for @levelA1.
  ///
  /// In en, this message translates to:
  /// **'Beginner 1'**
  String get levelA1;

  /// No description provided for @levelA2.
  ///
  /// In en, this message translates to:
  /// **'Beginner 2'**
  String get levelA2;

  /// No description provided for @levelB1.
  ///
  /// In en, this message translates to:
  /// **'Intermediate 1'**
  String get levelB1;

  /// No description provided for @levelB2.
  ///
  /// In en, this message translates to:
  /// **'Intermediate 2'**
  String get levelB2;

  /// No description provided for @levelC1.
  ///
  /// In en, this message translates to:
  /// **'Advanced'**
  String get levelC1;

  /// No description provided for @levelWords.
  ///
  /// In en, this message translates to:
  /// **'{level} Idioms'**
  String levelWords(String level);

  /// No description provided for @flashcardMode.
  ///
  /// In en, this message translates to:
  /// **'Flashcard Mode'**
  String get flashcardMode;

  /// No description provided for @listMode.
  ///
  /// In en, this message translates to:
  /// **'List Mode'**
  String get listMode;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @selectLanguage.
  ///
  /// In en, this message translates to:
  /// **'Select Your Language'**
  String get selectLanguage;

  /// No description provided for @languageChanged.
  ///
  /// In en, this message translates to:
  /// **'Language changed to {language}'**
  String languageChanged(String language);

  /// No description provided for @translationInfo.
  ///
  /// In en, this message translates to:
  /// **'Translation Info'**
  String get translationInfo;

  /// No description provided for @translationInfoDesc.
  ///
  /// In en, this message translates to:
  /// **'Translations will be downloaded automatically when you view idioms. Once downloaded, they are cached locally for offline use.'**
  String get translationInfoDesc;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get ok;

  /// No description provided for @darkMode.
  ///
  /// In en, this message translates to:
  /// **'Dark Mode'**
  String get darkMode;

  /// No description provided for @speechRate.
  ///
  /// In en, this message translates to:
  /// **'Speech Rate'**
  String get speechRate;

  /// No description provided for @notifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// No description provided for @dailyReminder.
  ///
  /// In en, this message translates to:
  /// **'Daily Reminder'**
  String get dailyReminder;

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// No description provided for @version.
  ///
  /// In en, this message translates to:
  /// **'Version'**
  String get version;

  /// No description provided for @developer.
  ///
  /// In en, this message translates to:
  /// **'Developer'**
  String get developer;

  /// No description provided for @searchHint.
  ///
  /// In en, this message translates to:
  /// **'Search for idioms...'**
  String get searchHint;

  /// No description provided for @noSearchResults.
  ///
  /// In en, this message translates to:
  /// **'No results found'**
  String get noSearchResults;

  /// No description provided for @typeToSearch.
  ///
  /// In en, this message translates to:
  /// **'Type to Search for idioms...'**
  String get typeToSearch;

  /// No description provided for @noFavorites.
  ///
  /// In en, this message translates to:
  /// **'No favorites yet'**
  String get noFavorites;

  /// No description provided for @addFavoritesHint.
  ///
  /// In en, this message translates to:
  /// **'Add idioms to favorites by tapping the heart icon'**
  String get addFavoritesHint;

  /// No description provided for @posNoun.
  ///
  /// In en, this message translates to:
  /// **'noun'**
  String get posNoun;

  /// No description provided for @posVerb.
  ///
  /// In en, this message translates to:
  /// **'verb'**
  String get posVerb;

  /// No description provided for @posAdjective.
  ///
  /// In en, this message translates to:
  /// **'adjective'**
  String get posAdjective;

  /// No description provided for @posAdverb.
  ///
  /// In en, this message translates to:
  /// **'adverb'**
  String get posAdverb;

  /// No description provided for @posPronoun.
  ///
  /// In en, this message translates to:
  /// **'pronoun'**
  String get posPronoun;

  /// No description provided for @posPreposition.
  ///
  /// In en, this message translates to:
  /// **'preposition'**
  String get posPreposition;

  /// No description provided for @posConjunction.
  ///
  /// In en, this message translates to:
  /// **'conjunction'**
  String get posConjunction;

  /// No description provided for @posInterjection.
  ///
  /// In en, this message translates to:
  /// **'interjection'**
  String get posInterjection;

  /// No description provided for @posArticle.
  ///
  /// In en, this message translates to:
  /// **'article'**
  String get posArticle;

  /// No description provided for @posDeterminer.
  ///
  /// In en, this message translates to:
  /// **'determiner'**
  String get posDeterminer;

  /// No description provided for @posAuxiliary.
  ///
  /// In en, this message translates to:
  /// **'auxiliary verb'**
  String get posAuxiliary;

  /// No description provided for @posPhrasal.
  ///
  /// In en, this message translates to:
  /// **'phrasal verb'**
  String get posPhrasal;

  /// No description provided for @showTranslationFirst.
  ///
  /// In en, this message translates to:
  /// **'Show translation first'**
  String get showTranslationFirst;

  /// No description provided for @showTranslationFirstDesc.
  ///
  /// In en, this message translates to:
  /// **'Display translated meaning before English'**
  String get showTranslationFirstDesc;

  /// No description provided for @display.
  ///
  /// In en, this message translates to:
  /// **'Display'**
  String get display;

  /// No description provided for @useDarkTheme.
  ///
  /// In en, this message translates to:
  /// **'Use dark theme'**
  String get useDarkTheme;

  /// No description provided for @restartToApply.
  ///
  /// In en, this message translates to:
  /// **'Restart app to apply theme change'**
  String get restartToApply;

  /// No description provided for @learningSection.
  ///
  /// In en, this message translates to:
  /// **'Learning'**
  String get learningSection;

  /// No description provided for @currentSpeed.
  ///
  /// In en, this message translates to:
  /// **'Current: {speed}x'**
  String currentSpeed(String speed);

  /// No description provided for @getDailyReminders.
  ///
  /// In en, this message translates to:
  /// **'Get daily learning reminders'**
  String get getDailyReminders;

  /// No description provided for @copyright.
  ///
  /// In en, this message translates to:
  /// **'Copyright'**
  String get copyright;

  /// No description provided for @copyrightDesc.
  ///
  /// In en, this message translates to:
  /// **'All definitions are original or AI-generated'**
  String get copyrightDesc;

  /// No description provided for @copyrightNotice.
  ///
  /// In en, this message translates to:
  /// **'Copyright Notice'**
  String get copyrightNotice;

  /// No description provided for @copyrightContent.
  ///
  /// In en, this message translates to:
  /// **'All idiom definitions and example sentences in this app are original or AI-generated. No copyrighted dictionary content is used.\n\nTranslations are provided by MyMemory API (free translation service).'**
  String get copyrightContent;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicy;

  /// No description provided for @privacyContent.
  ///
  /// In en, this message translates to:
  /// **'This app does not collect, store, or share any personal information.\n\nTranslation requests are sent to MyMemory API for processing. No user data is stored on external servers.'**
  String get privacyContent;

  /// No description provided for @alphabetical.
  ///
  /// In en, this message translates to:
  /// **'Alphabetical'**
  String get alphabetical;

  /// No description provided for @random.
  ///
  /// In en, this message translates to:
  /// **'Random'**
  String get random;

  /// No description provided for @quiz.
  ///
  /// In en, this message translates to:
  /// **'Quiz'**
  String get quiz;

  /// No description provided for @testYourself.
  ///
  /// In en, this message translates to:
  /// **'Test yourself'**
  String get testYourself;

  /// No description provided for @wordQuiz.
  ///
  /// In en, this message translates to:
  /// **'Idiom Quiz'**
  String get wordQuiz;

  /// No description provided for @quizWithLevel.
  ///
  /// In en, this message translates to:
  /// **'{level} Quiz'**
  String quizWithLevel(String level);

  /// No description provided for @wordToMeaningMode.
  ///
  /// In en, this message translates to:
  /// **'Idiom→Meaning'**
  String get wordToMeaningMode;

  /// No description provided for @meaningToWordMode.
  ///
  /// In en, this message translates to:
  /// **'Meaning→Idiom'**
  String get meaningToWordMode;

  /// No description provided for @quizComplete.
  ///
  /// In en, this message translates to:
  /// **'🎉 Quiz Complete!'**
  String get quizComplete;

  /// No description provided for @correctAnswers.
  ///
  /// In en, this message translates to:
  /// **'{percentage}% Correct'**
  String correctAnswers(int percentage);

  /// No description provided for @exit.
  ///
  /// In en, this message translates to:
  /// **'Exit'**
  String get exit;

  /// No description provided for @tryAgain.
  ///
  /// In en, this message translates to:
  /// **'Try Again'**
  String get tryAgain;

  /// No description provided for @quizCompleteMessage.
  ///
  /// In en, this message translates to:
  /// **'Quiz Complete!'**
  String get quizCompleteMessage;

  /// No description provided for @excellent.
  ///
  /// In en, this message translates to:
  /// **'Excellent! 🌟'**
  String get excellent;

  /// No description provided for @greatJob.
  ///
  /// In en, this message translates to:
  /// **'Great Job! 👏'**
  String get greatJob;

  /// No description provided for @goodStart.
  ///
  /// In en, this message translates to:
  /// **'Good Start! 💪'**
  String get goodStart;

  /// No description provided for @keepPracticing.
  ///
  /// In en, this message translates to:
  /// **'Keep Practicing! 📚'**
  String get keepPracticing;

  /// No description provided for @questionProgress.
  ///
  /// In en, this message translates to:
  /// **'{current} / {total}'**
  String questionProgress(int current, int total);

  /// No description provided for @whatIsTheMeaning.
  ///
  /// In en, this message translates to:
  /// **'What is the meaning of this idiom?'**
  String get whatIsTheMeaning;

  /// No description provided for @whichWordMatches.
  ///
  /// In en, this message translates to:
  /// **'Which idiom matches this meaning?'**
  String get whichWordMatches;

  /// No description provided for @nextQuestion.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get nextQuestion;

  /// No description provided for @loading.
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get loading;

  /// No description provided for @removeAds.
  ///
  /// In en, this message translates to:
  /// **'Remove Ads'**
  String get removeAds;

  /// No description provided for @removeAdsTitle.
  ///
  /// In en, this message translates to:
  /// **'Remove All Ads'**
  String get removeAdsTitle;

  /// No description provided for @removeAdsDesc.
  ///
  /// In en, this message translates to:
  /// **'Enjoy ad-free learning experience'**
  String get removeAdsDesc;

  /// No description provided for @adsRemoved.
  ///
  /// In en, this message translates to:
  /// **'Ads Removed'**
  String get adsRemoved;

  /// No description provided for @enjoyAdFree.
  ///
  /// In en, this message translates to:
  /// **'Enjoy your ad-free experience!'**
  String get enjoyAdFree;

  /// No description provided for @restorePurchase.
  ///
  /// In en, this message translates to:
  /// **'Restore Purchase'**
  String get restorePurchase;

  /// No description provided for @restorePurchaseDesc.
  ///
  /// In en, this message translates to:
  /// **'Reinstalled or switched devices? Tap here to restore your ad-free purchase.'**
  String get restorePurchaseDesc;

  /// No description provided for @purchaseFailed.
  ///
  /// In en, this message translates to:
  /// **'Purchase failed. Please try again.'**
  String get purchaseFailed;

  /// No description provided for @purchaseRestored.
  ///
  /// In en, this message translates to:
  /// **'Purchase restored successfully!'**
  String get purchaseRestored;

  /// No description provided for @noPurchaseToRestore.
  ///
  /// In en, this message translates to:
  /// **'No purchase found to restore'**
  String get noPurchaseToRestore;

  /// No description provided for @buy.
  ///
  /// In en, this message translates to:
  /// **'Buy'**
  String get buy;

  /// No description provided for @wordFontSize.
  ///
  /// In en, this message translates to:
  /// **'Flashcard Idiom Size'**
  String get wordFontSize;

  /// No description provided for @fontSizeSmall.
  ///
  /// In en, this message translates to:
  /// **'Small'**
  String get fontSizeSmall;

  /// No description provided for @fontSizeMediumSmall.
  ///
  /// In en, this message translates to:
  /// **'Medium Small'**
  String get fontSizeMediumSmall;

  /// No description provided for @fontSizeNormal.
  ///
  /// In en, this message translates to:
  /// **'Normal'**
  String get fontSizeNormal;

  /// No description provided for @fontSizeMediumLarge.
  ///
  /// In en, this message translates to:
  /// **'Medium Large'**
  String get fontSizeMediumLarge;

  /// No description provided for @fontSizeLarge.
  ///
  /// In en, this message translates to:
  /// **'Large'**
  String get fontSizeLarge;

  /// No description provided for @fontSizeExtraLarge.
  ///
  /// In en, this message translates to:
  /// **'Extra Large'**
  String get fontSizeExtraLarge;

  /// No description provided for @apiTranslationNotice.
  ///
  /// In en, this message translates to:
  /// **'Translations are being provided via API (online translation)'**
  String get apiTranslationNotice;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ar', 'bn', 'de', 'en', 'es', 'fa', 'fr', 'hi', 'id', 'it', 'ja', 'ko', 'ms', 'nl', 'pl', 'pt', 'ru', 'sv', 'th', 'tl', 'tr', 'uk', 'ur', 'vi', 'zh'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar': return AppLocalizationsAr();
    case 'bn': return AppLocalizationsBn();
    case 'de': return AppLocalizationsDe();
    case 'en': return AppLocalizationsEn();
    case 'es': return AppLocalizationsEs();
    case 'fa': return AppLocalizationsFa();
    case 'fr': return AppLocalizationsFr();
    case 'hi': return AppLocalizationsHi();
    case 'id': return AppLocalizationsId();
    case 'it': return AppLocalizationsIt();
    case 'ja': return AppLocalizationsJa();
    case 'ko': return AppLocalizationsKo();
    case 'ms': return AppLocalizationsMs();
    case 'nl': return AppLocalizationsNl();
    case 'pl': return AppLocalizationsPl();
    case 'pt': return AppLocalizationsPt();
    case 'ru': return AppLocalizationsRu();
    case 'sv': return AppLocalizationsSv();
    case 'th': return AppLocalizationsTh();
    case 'tl': return AppLocalizationsTl();
    case 'tr': return AppLocalizationsTr();
    case 'uk': return AppLocalizationsUk();
    case 'ur': return AppLocalizationsUr();
    case 'vi': return AppLocalizationsVi();
    case 'zh': return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
