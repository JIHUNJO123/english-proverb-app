// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get appTitle => 'English Idioms 1000';

  @override
  String get todayWord => '📅 Idiom Dnia';

  @override
  String get learning => 'Nauka';

  @override
  String get levelLearning => 'Nauka według Poziomu';

  @override
  String get allWords => 'Wszystkie Idiomy';

  @override
  String get viewAllWords => 'Zobacz wszystkie idiomy';

  @override
  String get favorites => 'Ulubione';

  @override
  String get savedWords => 'Zapisane idiomy';

  @override
  String get flashcard => 'Fiszki';

  @override
  String get cardLearning => 'Ucz się z kart';

  @override
  String get search => 'Szukaj';

  @override
  String get searchWords => 'Szukaj idiomów';

  @override
  String get settings => 'Ustawienia';

  @override
  String get noWords => 'Nie znaleziono idiomów';

  @override
  String get cannotLoadWords => 'Nie można załadować idiomów';

  @override
  String get addedToFavorites => 'Dodano do ulubionych';

  @override
  String get removedFromFavorites => 'Usunięto z ulubionych';

  @override
  String get definition => '📖 Definicja';

  @override
  String get example => '💬 Przykład';

  @override
  String get translating => 'Tłumaczenie...';

  @override
  String get listenPronunciation => 'Posłuchaj Wymowy';

  @override
  String get markAsLearned => 'Oznacz jako Nauczone';

  @override
  String get previous => 'Poprzedni';

  @override
  String get next => 'Następny';

  @override
  String get pronunciation => 'Wymowa';

  @override
  String cardCount(int current, int total) {
    return '$current / $total';
  }

  @override
  String get tapToFlip => 'Dotknij, aby odwrócić';

  @override
  String get levelA1 => 'Początkujący 1';

  @override
  String get levelA2 => 'Początkujący 2';

  @override
  String get levelB1 => 'Średniozaawansowany 1';

  @override
  String get levelB2 => 'Średniozaawansowany 2';

  @override
  String get levelC1 => 'Zaawansowany';

  @override
  String levelWords(String level) {
    return 'Idiomy $level';
  }

  @override
  String get flashcardMode => 'Tryb Fiszek';

  @override
  String get listMode => 'Tryb Listy';

  @override
  String get language => 'Język';

  @override
  String get selectLanguage => 'Wybierz swój język';

  @override
  String languageChanged(String language) {
    return 'Język zmieniony na $language';
  }

  @override
  String get translationInfo => 'Informacje o Tłumaczeniu';

  @override
  String get translationInfoDesc => 'Tłumaczenia zostaną automatycznie pobrane podczas przeglądania słów. Po pobraniu są przechowywane lokalnie do użytku offline.';

  @override
  String get ok => 'OK';

  @override
  String get darkMode => 'Tryb Ciemny';

  @override
  String get speechRate => 'Szybkość Mowy';

  @override
  String get notifications => 'Powiadomienia';

  @override
  String get dailyReminder => 'Codzienne Przypomnienie';

  @override
  String get about => 'O aplikacji';

  @override
  String get version => 'Wersja';

  @override
  String get developer => 'Deweloper';

  @override
  String get searchHint => 'Szukaj idiomów...';

  @override
  String get noSearchResults => 'Nie znaleziono wyników';

  @override
  String get typeToSearch => 'Wpisz, aby wyszukać słowa';

  @override
  String get noFavorites => 'Brak ulubionych';

  @override
  String get addFavoritesHint => 'Dodaj słowa do ulubionych, dotykając ikony serca';

  @override
  String get posNoun => 'rzeczownik';

  @override
  String get posVerb => 'czasownik';

  @override
  String get posAdjective => 'przymiotnik';

  @override
  String get posAdverb => 'przysłówek';

  @override
  String get posPronoun => 'zaimek';

  @override
  String get posPreposition => 'przyimek';

  @override
  String get posConjunction => 'spójnik';

  @override
  String get posInterjection => 'wykrzyknik';

  @override
  String get posArticle => 'rodzajnik';

  @override
  String get posDeterminer => 'określnik';

  @override
  String get posAuxiliary => 'czasownik posiłkowy';

  @override
  String get posPhrasal => 'czasownik frazowy';

  @override
  String get showTranslationFirst => 'Pokaż najpierw tłumaczenie';

  @override
  String get showTranslationFirstDesc => 'Wyświetl przetłumaczone znaczenie przed angielskim';

  @override
  String get display => 'Wyświetlanie';

  @override
  String get useDarkTheme => 'Użyj ciemnego motywu';

  @override
  String get restartToApply => 'Uruchom ponownie aplikację, aby zastosować zmianę motywu';

  @override
  String get learningSection => 'Nauka';

  @override
  String currentSpeed(String speed) {
    return 'Aktualna: ${speed}x';
  }

  @override
  String get getDailyReminders => 'Otrzymuj codzienne przypomnienia o nauce';

  @override
  String get copyright => 'Prawa autorskie';

  @override
  String get copyrightDesc => 'Wszystkie definicje są oryginalne lub wygenerowane przez AI';

  @override
  String get copyrightNotice => 'Informacja o Prawach Autorskich';

  @override
  String get copyrightContent => 'Wszystkie definicje słów i przykładowe zdania w tej aplikacji są oryginalne lub wygenerowane przez AI. Nie wykorzystano treści słownikowych chronionych prawami autorskimi.\n\nTłumaczenia są dostarczane przez MyMemory API (bezpłatna usługa tłumaczeniowa).';

  @override
  String get privacyPolicy => 'Polityka Prywatności';

  @override
  String get privacyContent => 'Ta aplikacja nie zbiera, nie przechowuje ani nie udostępnia żadnych danych osobowych.\n\nŻądania tłumaczenia są wysyłane do MyMemory API w celu przetworzenia. Dane użytkownika nie są przechowywane na zewnętrznych serwerach.';

  @override
  String get alphabetical => 'Alfabetycznie';

  @override
  String get random => 'Losowo';

  @override
  String get quiz => 'Quiz';

  @override
  String get testYourself => 'Sprawdź się';

  @override
  String get wordQuiz => 'Quiz idiomów';

  @override
  String quizWithLevel(String level) {
    return 'Quiz $level';
  }

  @override
  String get wordToMeaningMode => 'Idiom→Znaczenie';

  @override
  String get meaningToWordMode => 'Znaczenie→Idiom';

  @override
  String get quizComplete => '🎉 Quiz ukończony!';

  @override
  String correctAnswers(int percentage) {
    return '$percentage% Poprawnie';
  }

  @override
  String get exit => 'Wyjdź';

  @override
  String get tryAgain => 'Spróbuj ponownie';

  @override
  String get quizCompleteMessage => 'Quiz ukończony!';

  @override
  String get excellent => 'Doskonale! 🌟';

  @override
  String get greatJob => 'Świetna robota! 👏';

  @override
  String get goodStart => 'Dobry początek! 💪';

  @override
  String get keepPracticing => 'Ćwicz dalej! 📚';

  @override
  String questionProgress(int current, int total) {
    return '$current / $total';
  }

  @override
  String get whatIsTheMeaning => 'Jakie jest znaczenie tego słowa?';

  @override
  String get whichWordMatches => 'Który idiom pasuje do tego znaczenia?';

  @override
  String get nextQuestion => 'Dalej';

  @override
  String get loading => 'Ładowanie...';

  @override
  String get removeAds => 'Usuń reklamy';

  @override
  String get removeAdsTitle => 'Usuń wszystkie reklamy';

  @override
  String get removeAdsDesc => 'Ciesz się nauką bez reklam';

  @override
  String get adsRemoved => 'Reklamy usunięte';

  @override
  String get enjoyAdFree => 'Ciesz się doświadczeniem bez reklam!';

  @override
  String get restorePurchase => 'Przywróć zakup';

  @override
  String get restorePurchaseDesc => 'Zainstalowałeś aplikację ponownie lub zmieniłeś urządzenie? Dotknij tutaj, aby przywrócić zakup bez reklam.';

  @override
  String get purchaseFailed => 'Zakup nie powiódł się. Spróbuj ponownie.';

  @override
  String get purchaseRestored => 'Zakup przywrócony pomyślnie!';

  @override
  String get noPurchaseToRestore => 'Nie znaleziono zakupu do przywrócenia';

  @override
  String get buy => 'Kup';

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
