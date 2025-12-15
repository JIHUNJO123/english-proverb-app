// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appTitle => 'English Idioms 1000';

  @override
  String get todayWord => '📅 Redewendung des Tages';

  @override
  String get learning => 'Lernen';

  @override
  String get levelLearning => 'Nach Niveau';

  @override
  String get allWords => 'All Idioms';

  @override
  String get viewAllWords => 'View All Idioms';

  @override
  String get favorites => 'Favoriten';

  @override
  String get savedWords => 'Saved idioms';

  @override
  String get flashcard => 'Karteikarten';

  @override
  String get cardLearning => 'Mit Karten lernen';

  @override
  String get search => 'Suchen';

  @override
  String get searchWords => 'Search idioms';

  @override
  String get settings => 'Einstellungen';

  @override
  String get noWords => 'No idioms found';

  @override
  String get cannotLoadWords => 'Cannot load idioms';

  @override
  String get addedToFavorites => 'Zu Favoriten hinzugefügt';

  @override
  String get removedFromFavorites => 'Aus Favoriten entfernt';

  @override
  String get definition => '📖 Definition';

  @override
  String get example => '💬 Beispiel';

  @override
  String get translating => 'Übersetzen...';

  @override
  String get listenPronunciation => 'Anhören';

  @override
  String get markAsLearned => 'Als gelernt markieren';

  @override
  String get previous => 'Zurück';

  @override
  String get next => 'Weiter';

  @override
  String get pronunciation => 'Aussprechen';

  @override
  String cardCount(int current, int total) {
    return '$current / $total';
  }

  @override
  String get tapToFlip => 'Tippen zum Umdrehen';

  @override
  String get levelA1 => 'Anfänger 1';

  @override
  String get levelA2 => 'Anfänger 2';

  @override
  String get levelB1 => 'Mittelstufe 1';

  @override
  String get levelB2 => 'Mittelstufe 2';

  @override
  String get levelC1 => 'Fortgeschritten';

  @override
  String levelWords(String level) {
    return '$level Idioms';
  }

  @override
  String get flashcardMode => 'Karteikarten-Modus';

  @override
  String get listMode => 'Listenmodus';

  @override
  String get language => 'Sprache';

  @override
  String get selectLanguage => 'Sprache wählen';

  @override
  String languageChanged(String language) {
    return 'Geändert zu $language';
  }

  @override
  String get translationInfo => 'Übersetzungs-Info';

  @override
  String get translationInfoDesc => 'Übersetzungen werden automatisch heruntergeladen. Nach dem Download sind sie offline verfügbar.';

  @override
  String get ok => 'OK';

  @override
  String get darkMode => 'Dunkelmodus';

  @override
  String get speechRate => 'Sprechgeschwindigkeit';

  @override
  String get notifications => 'Benachrichtigungen';

  @override
  String get dailyReminder => 'Tägliche Erinnerung';

  @override
  String get about => 'Über';

  @override
  String get version => 'Version';

  @override
  String get developer => 'Entwickler';

  @override
  String get searchHint => 'Redewendungen suchen...';

  @override
  String get noSearchResults => 'Keine Ergebnisse';

  @override
  String get typeToSearch => 'Tippen zum Suchen';

  @override
  String get noFavorites => 'Keine Favoriten';

  @override
  String get addFavoritesHint => 'Herz antippen zum Hinzufügen';

  @override
  String get posNoun => 'Substantiv';

  @override
  String get posVerb => 'Verb';

  @override
  String get posAdjective => 'Adjektiv';

  @override
  String get posAdverb => 'Adverb';

  @override
  String get posPronoun => 'Pronomen';

  @override
  String get posPreposition => 'Präposition';

  @override
  String get posConjunction => 'Konjunktion';

  @override
  String get posInterjection => 'Interjektion';

  @override
  String get posArticle => 'Artikel';

  @override
  String get posDeterminer => 'Bestimmungswort';

  @override
  String get posAuxiliary => 'Hilfsverb';

  @override
  String get posPhrasal => 'Phrasenverb';

  @override
  String get showTranslationFirst => 'Übersetzung zuerst anzeigen';

  @override
  String get showTranslationFirstDesc => 'Übersetzte Bedeutung vor Englisch anzeigen';

  @override
  String get display => 'Anzeige';

  @override
  String get useDarkTheme => 'Dunkles Design verwenden';

  @override
  String get restartToApply => 'App neu starten, um Designänderung anzuwenden';

  @override
  String get learningSection => 'Lernen';

  @override
  String currentSpeed(String speed) {
    return 'Aktuell: ${speed}x';
  }

  @override
  String get getDailyReminders => 'Tägliche Lernerinnerungen erhalten';

  @override
  String get copyright => 'Urheberrecht';

  @override
  String get copyrightDesc => 'Alle Definitionen sind original oder KI-generiert';

  @override
  String get copyrightNotice => 'Urheberrechtshinweis';

  @override
  String get copyrightContent => 'Alle Wortdefinitionen und Beispielsätze in dieser App sind original oder KI-generiert. Es werden keine urheberrechtlich geschützten Wörterbuchinhalte verwendet.\n\nÜbersetzungen werden von MyMemory API (kostenloser Übersetzungsdienst) bereitgestellt.';

  @override
  String get privacyPolicy => 'Datenschutzrichtlinie';

  @override
  String get privacyContent => 'Diese App sammelt, speichert oder teilt keine persönlichen Informationen.\n\nÜbersetzungsanfragen werden an MyMemory API zur Verarbeitung gesendet. Benutzerdaten werden nicht auf externen Servern gespeichert.';

  @override
  String get alphabetical => 'Alphabetisch';

  @override
  String get random => 'Zufällig';

  @override
  String get quiz => 'Quiz';

  @override
  String get testYourself => 'Teste dich';

  @override
  String get wordQuiz => 'Redewendungen-Quiz';

  @override
  String quizWithLevel(String level) {
    return '$level Quiz';
  }

  @override
  String get wordToMeaningMode => 'Redewendung→Bedeutung';

  @override
  String get meaningToWordMode => 'Bedeutung→Redewendung';

  @override
  String get quizComplete => '🎉 Quiz abgeschlossen!';

  @override
  String correctAnswers(int percentage) {
    return '$percentage% Richtig';
  }

  @override
  String get exit => 'Beenden';

  @override
  String get tryAgain => 'Nochmal';

  @override
  String get quizCompleteMessage => 'Quiz abgeschlossen!';

  @override
  String get excellent => 'Ausgezeichnet! 🌟';

  @override
  String get greatJob => 'Gut gemacht! 👏';

  @override
  String get goodStart => 'Guter Anfang! 💪';

  @override
  String get keepPracticing => 'Weiter üben! 📚';

  @override
  String questionProgress(int current, int total) {
    return '$current / $total';
  }

  @override
  String get whatIsTheMeaning => 'Was bedeutet diese Redewendung?';

  @override
  String get whichWordMatches => 'Welche Redewendung passt zu dieser Bedeutung?';

  @override
  String get nextQuestion => 'Weiter';

  @override
  String get loading => 'Lädt...';

  @override
  String get removeAds => 'Werbung entfernen';

  @override
  String get removeAdsTitle => 'Alle Werbung entfernen';

  @override
  String get removeAdsDesc => 'Genieße werbefreies Lernen';

  @override
  String get adsRemoved => 'Werbung entfernt';

  @override
  String get enjoyAdFree => 'Genieße deine werbefreie Erfahrung!';

  @override
  String get restorePurchase => 'Kauf wiederherstellen';

  @override
  String get restorePurchaseDesc => 'App neu installiert oder Gerät gewechselt? Tippen Sie hier, um Ihren werbefreien Kauf wiederherzustellen.';

  @override
  String get purchaseFailed => 'Kauf fehlgeschlagen. Bitte versuche es erneut.';

  @override
  String get purchaseRestored => 'Kauf erfolgreich wiederhergestellt!';

  @override
  String get noPurchaseToRestore => 'Kein Kauf zum Wiederherstellen gefunden';

  @override
  String get buy => 'Kaufen';

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
