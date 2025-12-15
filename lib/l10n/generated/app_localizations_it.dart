// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appTitle => 'English Idioms 1000';

  @override
  String get todayWord => '📅 Espressione del Giorno';

  @override
  String get learning => 'Apprendimento';

  @override
  String get levelLearning => 'Apprendimento per Livello';

  @override
  String get allWords => 'Tutte le Espressioni';

  @override
  String get viewAllWords => 'Visualizza tutte le espressioni';

  @override
  String get favorites => 'Preferiti';

  @override
  String get savedWords => 'Espressioni salvate';

  @override
  String get flashcard => 'Flashcard';

  @override
  String get cardLearning => 'Impara con le carte';

  @override
  String get search => 'Cerca';

  @override
  String get searchWords => 'Cerca espressioni';

  @override
  String get settings => 'Impostazioni';

  @override
  String get noWords => 'Nessuna espressione trovata';

  @override
  String get cannotLoadWords => 'Impossibile caricare le espressioni';

  @override
  String get addedToFavorites => 'Aggiunto ai preferiti';

  @override
  String get removedFromFavorites => 'Rimosso dai preferiti';

  @override
  String get definition => '📖 Definizione';

  @override
  String get example => '💬 Esempio';

  @override
  String get translating => 'Traduzione in corso...';

  @override
  String get listenPronunciation => 'Ascolta la Pronuncia';

  @override
  String get markAsLearned => 'Segna come Imparato';

  @override
  String get previous => 'Precedente';

  @override
  String get next => 'Successivo';

  @override
  String get pronunciation => 'Pronuncia';

  @override
  String cardCount(int current, int total) {
    return '$current / $total';
  }

  @override
  String get tapToFlip => 'Tocca per girare';

  @override
  String get levelA1 => 'Principiante 1';

  @override
  String get levelA2 => 'Principiante 2';

  @override
  String get levelB1 => 'Intermedio 1';

  @override
  String get levelB2 => 'Intermedio 2';

  @override
  String get levelC1 => 'Avanzato';

  @override
  String levelWords(String level) {
    return 'Espressioni $level';
  }

  @override
  String get flashcardMode => 'Modalità Flashcard';

  @override
  String get listMode => 'Modalità Lista';

  @override
  String get language => 'Lingua';

  @override
  String get selectLanguage => 'Seleziona la tua lingua';

  @override
  String languageChanged(String language) {
    return 'Lingua cambiata in $language';
  }

  @override
  String get translationInfo => 'Info Traduzione';

  @override
  String get translationInfoDesc => 'Le traduzioni verranno scaricate automaticamente quando visualizzi le parole. Una volta scaricate, vengono memorizzate localmente per l\'uso offline.';

  @override
  String get ok => 'OK';

  @override
  String get darkMode => 'Modalità Scura';

  @override
  String get speechRate => 'Velocità del Parlato';

  @override
  String get notifications => 'Notifiche';

  @override
  String get dailyReminder => 'Promemoria Giornaliero';

  @override
  String get about => 'Informazioni';

  @override
  String get version => 'Versione';

  @override
  String get developer => 'Sviluppatore';

  @override
  String get searchHint => 'Cerca espressioni...';

  @override
  String get noSearchResults => 'Nessun risultato trovato';

  @override
  String get typeToSearch => 'Digita per cercare parole';

  @override
  String get noFavorites => 'Nessun preferito ancora';

  @override
  String get addFavoritesHint => 'Aggiungi parole ai preferiti toccando l\'icona del cuore';

  @override
  String get posNoun => 'sostantivo';

  @override
  String get posVerb => 'verbo';

  @override
  String get posAdjective => 'aggettivo';

  @override
  String get posAdverb => 'avverbio';

  @override
  String get posPronoun => 'pronome';

  @override
  String get posPreposition => 'preposizione';

  @override
  String get posConjunction => 'congiunzione';

  @override
  String get posInterjection => 'interiezione';

  @override
  String get posArticle => 'articolo';

  @override
  String get posDeterminer => 'determinante';

  @override
  String get posAuxiliary => 'verbo ausiliare';

  @override
  String get posPhrasal => 'verbo frasale';

  @override
  String get showTranslationFirst => 'Mostra prima la traduzione';

  @override
  String get showTranslationFirstDesc => 'Visualizza il significato tradotto prima dell\'inglese';

  @override
  String get display => 'Visualizzazione';

  @override
  String get useDarkTheme => 'Usa tema scuro';

  @override
  String get restartToApply => 'Riavvia l\'app per applicare il cambio di tema';

  @override
  String get learningSection => 'Apprendimento';

  @override
  String currentSpeed(String speed) {
    return 'Attuale: ${speed}x';
  }

  @override
  String get getDailyReminders => 'Ricevi promemoria giornalieri di apprendimento';

  @override
  String get copyright => 'Copyright';

  @override
  String get copyrightDesc => 'Tutte le definizioni sono originali o generate da AI';

  @override
  String get copyrightNotice => 'Avviso Copyright';

  @override
  String get copyrightContent => 'Tutte le definizioni delle parole e le frasi di esempio in questa app sono originali o generate da AI. Non viene utilizzato contenuto di dizionari protetti da copyright.\n\nLe traduzioni sono fornite da MyMemory API (servizio di traduzione gratuito).';

  @override
  String get privacyPolicy => 'Informativa sulla Privacy';

  @override
  String get privacyContent => 'Questa app non raccoglie, memorizza o condivide alcuna informazione personale.\n\nLe richieste di traduzione vengono inviate a MyMemory API per l\'elaborazione. Nessun dato utente viene memorizzato su server esterni.';

  @override
  String get alphabetical => 'Alfabetico';

  @override
  String get random => 'Casuale';

  @override
  String get quiz => 'Quiz';

  @override
  String get testYourself => 'Metti alla prova';

  @override
  String get wordQuiz => 'Quiz di espressioni';

  @override
  String quizWithLevel(String level) {
    return 'Quiz $level';
  }

  @override
  String get wordToMeaningMode => 'Espressione→Significato';

  @override
  String get meaningToWordMode => 'Significato→Espressione';

  @override
  String get quizComplete => '🎉 Quiz completato!';

  @override
  String correctAnswers(int percentage) {
    return '$percentage% Corretto';
  }

  @override
  String get exit => 'Esci';

  @override
  String get tryAgain => 'Riprova';

  @override
  String get quizCompleteMessage => 'Quiz completato!';

  @override
  String get excellent => 'Eccellente! 🌟';

  @override
  String get greatJob => 'Ottimo lavoro! 👏';

  @override
  String get goodStart => 'Buon inizio! 💪';

  @override
  String get keepPracticing => 'Continua a esercitarti! 📚';

  @override
  String questionProgress(int current, int total) {
    return '$current / $total';
  }

  @override
  String get whatIsTheMeaning => 'Qual è il significato di questa espressione?';

  @override
  String get whichWordMatches => 'Quale espressione corrisponde a questo significato?';

  @override
  String get nextQuestion => 'Avanti';

  @override
  String get loading => 'Caricamento...';

  @override
  String get removeAds => 'Rimuovi pubblicità';

  @override
  String get removeAdsTitle => 'Rimuovi tutte le pubblicità';

  @override
  String get removeAdsDesc => 'Goditi un\'esperienza di apprendimento senza pubblicità';

  @override
  String get adsRemoved => 'Pubblicità rimosse';

  @override
  String get enjoyAdFree => 'Goditi la tua esperienza senza pubblicità!';

  @override
  String get restorePurchase => 'Ripristina acquisto';

  @override
  String get restorePurchaseDesc => 'Hai reinstallato l\'app o cambiato dispositivo? Tocca qui per ripristinare l\'acquisto senza pubblicità.';

  @override
  String get purchaseFailed => 'Acquisto fallito. Riprova.';

  @override
  String get purchaseRestored => 'Acquisto ripristinato con successo!';

  @override
  String get noPurchaseToRestore => 'Nessun acquisto da ripristinare';

  @override
  String get buy => 'Acquista';

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
