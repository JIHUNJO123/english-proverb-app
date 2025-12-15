// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get appTitle => 'English Idioms 1000';

  @override
  String get todayWord => '📅 Uitdrukking van de Dag';

  @override
  String get learning => 'Leren';

  @override
  String get levelLearning => 'Leren per Niveau';

  @override
  String get allWords => 'Alle Uitdrukkingen';

  @override
  String get viewAllWords => 'Bekijk alle uitdrukkingen';

  @override
  String get favorites => 'Favorieten';

  @override
  String get savedWords => 'Opgeslagen uitdrukkingen';

  @override
  String get flashcard => 'Flashcards';

  @override
  String get cardLearning => 'Leer met kaarten';

  @override
  String get search => 'Zoeken';

  @override
  String get searchWords => 'Zoek uitdrukkingen';

  @override
  String get settings => 'Instellingen';

  @override
  String get noWords => 'Geen uitdrukkingen gevonden';

  @override
  String get cannotLoadWords => 'Kan uitdrukkingen niet laden';

  @override
  String get addedToFavorites => 'Toegevoegd aan favorieten';

  @override
  String get removedFromFavorites => 'Verwijderd uit favorieten';

  @override
  String get definition => '📖 Definitie';

  @override
  String get example => '💬 Voorbeeld';

  @override
  String get translating => 'Vertalen...';

  @override
  String get listenPronunciation => 'Luister naar Uitspraak';

  @override
  String get markAsLearned => 'Markeer als Geleerd';

  @override
  String get previous => 'Vorige';

  @override
  String get next => 'Volgende';

  @override
  String get pronunciation => 'Uitspraak';

  @override
  String cardCount(int current, int total) {
    return '$current / $total';
  }

  @override
  String get tapToFlip => 'Tik om te draaien';

  @override
  String get levelA1 => 'Beginner 1';

  @override
  String get levelA2 => 'Beginner 2';

  @override
  String get levelB1 => 'Gemiddeld 1';

  @override
  String get levelB2 => 'Gemiddeld 2';

  @override
  String get levelC1 => 'Gevorderd';

  @override
  String levelWords(String level) {
    return '$level Uitdrukkingen';
  }

  @override
  String get flashcardMode => 'Flashcard Modus';

  @override
  String get listMode => 'Lijst Modus';

  @override
  String get language => 'Taal';

  @override
  String get selectLanguage => 'Selecteer je Taal';

  @override
  String languageChanged(String language) {
    return 'Taal gewijzigd naar $language';
  }

  @override
  String get translationInfo => 'Vertaalinformatie';

  @override
  String get translationInfoDesc => 'Vertalingen worden automatisch gedownload wanneer je uitdrukkingen bekijkt. Eenmaal gedownload worden ze lokaal opgeslagen voor offline gebruik.';

  @override
  String get ok => 'OK';

  @override
  String get darkMode => 'Donkere Modus';

  @override
  String get speechRate => 'Spraaksnelheid';

  @override
  String get notifications => 'Meldingen';

  @override
  String get dailyReminder => 'Dagelijkse Herinnering';

  @override
  String get about => 'Over';

  @override
  String get version => 'Versie';

  @override
  String get developer => 'Ontwikkelaar';

  @override
  String get searchHint => 'Zoek uitdrukkingen...';

  @override
  String get noSearchResults => 'Geen resultaten gevonden';

  @override
  String get typeToSearch => 'Typ om woorden te zoeken';

  @override
  String get noFavorites => 'Nog geen favorieten';

  @override
  String get addFavoritesHint => 'Voeg woorden toe aan favorieten door op het hartpictogram te tikken';

  @override
  String get posNoun => 'zelfstandig naamwoord';

  @override
  String get posVerb => 'werkwoord';

  @override
  String get posAdjective => 'bijvoeglijk naamwoord';

  @override
  String get posAdverb => 'bijwoord';

  @override
  String get posPronoun => 'voornaamwoord';

  @override
  String get posPreposition => 'voorzetsel';

  @override
  String get posConjunction => 'voegwoord';

  @override
  String get posInterjection => 'tussenwerpsel';

  @override
  String get posArticle => 'lidwoord';

  @override
  String get posDeterminer => 'determinator';

  @override
  String get posAuxiliary => 'hulpwerkwoord';

  @override
  String get posPhrasal => 'frasaal werkwoord';

  @override
  String get showTranslationFirst => 'Toon vertaling eerst';

  @override
  String get showTranslationFirstDesc => 'Toon vertaalde betekenis voor Engels';

  @override
  String get display => 'Weergave';

  @override
  String get useDarkTheme => 'Donker thema gebruiken';

  @override
  String get restartToApply => 'Herstart app om themawijziging toe te passen';

  @override
  String get learningSection => 'Leren';

  @override
  String currentSpeed(String speed) {
    return 'Huidig: ${speed}x';
  }

  @override
  String get getDailyReminders => 'Ontvang dagelijkse leerherinneringen';

  @override
  String get copyright => 'Auteursrecht';

  @override
  String get copyrightDesc => 'Alle definities zijn origineel of door AI gegenereerd';

  @override
  String get copyrightNotice => 'Auteursrechtmelding';

  @override
  String get copyrightContent => 'Alle uitdrukkingsdefinities en voorbeeldzinnen in deze app zijn origineel of door AI gegenereerd. Er wordt geen auteursrechtelijk beschermde woordenboekinhoud gebruikt.\n\nVertalingen worden geleverd door MyMemory API (gratis vertaaldienst).';

  @override
  String get privacyPolicy => 'Privacybeleid';

  @override
  String get privacyContent => 'Deze app verzamelt, slaat of deelt geen persoonlijke informatie.\n\nVertaalverzoeken worden naar MyMemory API verzonden voor verwerking. Gebruikersgegevens worden niet opgeslagen op externe servers.';

  @override
  String get alphabetical => 'Alfabetisch';

  @override
  String get random => 'Willekeurig';

  @override
  String get quiz => 'Quiz';

  @override
  String get testYourself => 'Test jezelf';

  @override
  String get wordQuiz => 'Uitdrukkingenquiz';

  @override
  String quizWithLevel(String level) {
    return '$level Quiz';
  }

  @override
  String get wordToMeaningMode => 'Uitdrukking→Betekenis';

  @override
  String get meaningToWordMode => 'Betekenis→Uitdrukking';

  @override
  String get quizComplete => '🎉 Quiz voltooid!';

  @override
  String correctAnswers(int percentage) {
    return '$percentage% Correct';
  }

  @override
  String get exit => 'Afsluiten';

  @override
  String get tryAgain => 'Opnieuw proberen';

  @override
  String get quizCompleteMessage => 'Quiz voltooid!';

  @override
  String get excellent => 'Uitstekend! 🌟';

  @override
  String get greatJob => 'Goed gedaan! 👏';

  @override
  String get goodStart => 'Goede start! 💪';

  @override
  String get keepPracticing => 'Blijf oefenen! 📚';

  @override
  String questionProgress(int current, int total) {
    return '$current / $total';
  }

  @override
  String get whatIsTheMeaning => 'Wat betekent deze uitdrukking?';

  @override
  String get whichWordMatches => 'Welke uitdrukking past bij deze betekenis?';

  @override
  String get nextQuestion => 'Volgende';

  @override
  String get loading => 'Laden...';

  @override
  String get removeAds => 'Advertenties verwijderen';

  @override
  String get removeAdsTitle => 'Alle advertenties verwijderen';

  @override
  String get removeAdsDesc => 'Geniet van een advertentievrije leerervaring';

  @override
  String get adsRemoved => 'Advertenties verwijderd';

  @override
  String get enjoyAdFree => 'Geniet van je advertentievrije ervaring!';

  @override
  String get restorePurchase => 'Aankoop herstellen';

  @override
  String get restorePurchaseDesc => 'App opnieuw geïnstalleerd of van apparaat gewisseld? Tik hier om uw advertentievrije aankoop te herstellen.';

  @override
  String get purchaseFailed => 'Aankoop mislukt. Probeer het opnieuw.';

  @override
  String get purchaseRestored => 'Aankoop succesvol hersteld!';

  @override
  String get noPurchaseToRestore => 'Geen aankoop gevonden om te herstellen';

  @override
  String get buy => 'Kopen';

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
