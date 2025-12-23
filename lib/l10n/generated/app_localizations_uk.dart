// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class AppLocalizationsUk extends AppLocalizations {
  AppLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get appTitle => 'English Proverbs 300';

  @override
  String get todayWord => '📅 Ідіома дня';

  @override
  String get learning => 'Навчання';

  @override
  String get levelLearning => 'Навчання за рівнями';

  @override
  String get allWords => 'Усі ідіоми';

  @override
  String get viewAllWords => 'Переглянути всі ідіоми';

  @override
  String get favorites => 'Обране';

  @override
  String get savedWords => 'Збережені ідіоми';

  @override
  String get flashcard => 'Картки';

  @override
  String get cardLearning => 'Вчитися з картками';

  @override
  String get search => 'Пошук';

  @override
  String get searchWords => 'Шукати ідіоми';

  @override
  String get settings => 'Налаштування';

  @override
  String get noWords => 'Ідіом не знайдено';

  @override
  String get cannotLoadWords => 'Не вдалося завантажити ідіоми';

  @override
  String get addedToFavorites => 'Додано до обраного';

  @override
  String get removedFromFavorites => 'Видалено з обраного';

  @override
  String get definition => '📖 Визначення';

  @override
  String get example => '💬 Приклад';

  @override
  String get translating => 'Перекладаємо...';

  @override
  String get listenPronunciation => 'Прослухати вимову';

  @override
  String get markAsLearned => 'Позначити як вивчене';

  @override
  String get previous => 'Попереднє';

  @override
  String get next => 'Наступне';

  @override
  String get pronunciation => 'Вимова';

  @override
  String cardCount(int current, int total) {
    return '$current / $total';
  }

  @override
  String get tapToFlip => 'Натисніть, щоб перевернути';

  @override
  String get levelA1 => 'Початківець 1';

  @override
  String get levelA2 => 'Початківець 2';

  @override
  String get levelB1 => 'Середній 1';

  @override
  String get levelB2 => 'Середній 2';

  @override
  String get levelC1 => 'Просунутий';

  @override
  String levelWords(String level) {
    return 'Ідіоми $level';
  }

  @override
  String get flashcardMode => 'Режим карток';

  @override
  String get listMode => 'Режим списку';

  @override
  String get language => 'Мова';

  @override
  String get selectLanguage => 'Виберіть мову';

  @override
  String languageChanged(String language) {
    return 'Мову змінено на $language';
  }

  @override
  String get translationInfo => 'Інформація про переклад';

  @override
  String get translationInfoDesc => 'Переклади завантажуються автоматично під час перегляду слів. Після завантаження вони зберігаються локально для офлайн-використання.';

  @override
  String get ok => 'OK';

  @override
  String get darkMode => 'Темний режим';

  @override
  String get speechRate => 'Швидкість мовлення';

  @override
  String get notifications => 'Сповіщення';

  @override
  String get dailyReminder => 'Щоденне нагадування';

  @override
  String get about => 'Про додаток';

  @override
  String get version => 'Версія';

  @override
  String get developer => 'Розробник';

  @override
  String get searchHint => 'Шукати ідіоми...';

  @override
  String get noSearchResults => 'Результатів не знайдено';

  @override
  String get typeToSearch => 'Введіть для пошуку слів';

  @override
  String get noFavorites => 'Поки що немає обраного';

  @override
  String get addFavoritesHint => 'Додайте слова до обраного, натиснувши на іконку серця';

  @override
  String get posNoun => 'іменник';

  @override
  String get posVerb => 'дієслово';

  @override
  String get posAdjective => 'прикметник';

  @override
  String get posAdverb => 'прислівник';

  @override
  String get posPronoun => 'займенник';

  @override
  String get posPreposition => 'прийменник';

  @override
  String get posConjunction => 'сполучник';

  @override
  String get posInterjection => 'вигук';

  @override
  String get posArticle => 'артикль';

  @override
  String get posDeterminer => 'детермінатив';

  @override
  String get posAuxiliary => 'допоміжне дієслово';

  @override
  String get posPhrasal => 'фразове дієслово';

  @override
  String get showTranslationFirst => 'Спочатку показати переклад';

  @override
  String get showTranslationFirstDesc => 'Показувати перекладене значення перед англійським';

  @override
  String get display => 'Відображення';

  @override
  String get useDarkTheme => 'Використовувати темну тему';

  @override
  String get restartToApply => 'Перезапустіть додаток для застосування зміни теми';

  @override
  String get learningSection => 'Навчання';

  @override
  String currentSpeed(String speed) {
    return 'Поточна: ${speed}x';
  }

  @override
  String get getDailyReminders => 'Отримувати щоденні нагадування про навчання';

  @override
  String get copyright => 'Авторське право';

  @override
  String get copyrightDesc => 'Усі визначення оригінальні або згенеровані ШІ';

  @override
  String get copyrightNotice => 'Повідомлення про авторське право';

  @override
  String get copyrightContent => 'Усі визначення слів та приклади речень у цьому додатку є оригінальними або згенерованими ШІ.';

  @override
  String get privacyPolicy => 'Політика конфіденційності';

  @override
  String get privacyContent => 'Цей додаток не збирає, не зберігає та не передає жодної персональної інформації.';

  @override
  String get alphabetical => 'За алфавітом';

  @override
  String get random => 'Випадково';

  @override
  String get quiz => 'Тест';

  @override
  String get testYourself => 'Перевірте себе';

  @override
  String get wordQuiz => 'Тест ідіом';

  @override
  String quizWithLevel(String level) {
    return 'Тест $level';
  }

  @override
  String get wordToMeaningMode => 'Ідіома→Значення';

  @override
  String get meaningToWordMode => 'Значення→Ідіома';

  @override
  String get quizComplete => '🎉 Тест завершено!';

  @override
  String correctAnswers(int percentage) {
    return '$percentage% правильно';
  }

  @override
  String get exit => 'Вийти';

  @override
  String get tryAgain => 'Спробувати ще';

  @override
  String get quizCompleteMessage => 'Тест завершено!';

  @override
  String get excellent => 'Відмінно! 🌟';

  @override
  String get greatJob => 'Чудово! 👏';

  @override
  String get goodStart => 'Гарний початок! 💪';

  @override
  String get keepPracticing => 'Продовжуйте практикуватися! 📚';

  @override
  String questionProgress(int current, int total) {
    return '$current / $total';
  }

  @override
  String get whatIsTheMeaning => 'Що означає ця ідіома?';

  @override
  String get whichWordMatches => 'Яка ідіома відповідає цьому значенню?';

  @override
  String get nextQuestion => 'Далі';

  @override
  String get loading => 'Завантаження...';

  @override
  String get removeAds => 'Видалити рекламу';

  @override
  String get removeAdsTitle => 'Видалити всю рекламу';

  @override
  String get removeAdsDesc => 'Насолоджуйтесь навчанням без реклами';

  @override
  String get adsRemoved => 'Рекламу видалено';

  @override
  String get enjoyAdFree => 'Насолоджуйтесь без реклами!';

  @override
  String get restorePurchase => 'Відновити покупку';

  @override
  String get restorePurchaseDesc => 'Перевстановили застосунок або змінили пристрій? Натисніть тут, щоб відновити покупку без реклами.';

  @override
  String get purchaseFailed => 'Покупка не вдалася. Спробуйте ще раз.';

  @override
  String get purchaseRestored => 'Покупку успішно відновлено!';

  @override
  String get noPurchaseToRestore => 'Немає покупок для відновлення';

  @override
  String get buy => 'Купити';

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
  String get apiTranslationNotice => 'Translations are being provided via API (online translation)';

  @override
  String get cancel => 'Скасувати';
}
