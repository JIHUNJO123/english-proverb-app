// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appTitle => 'English Proverbs 300';

  @override
  String get todayWord => '📅 Идиома дня';

  @override
  String get learning => 'Обучение';

  @override
  String get levelLearning => 'Обучение по уровням';

  @override
  String get allWords => 'Все идиомы';

  @override
  String get viewAllWords => 'Показать все идиомы';

  @override
  String get favorites => 'Избранное';

  @override
  String get savedWords => 'Сохраненные идиомы';

  @override
  String get flashcard => 'Карточки';

  @override
  String get cardLearning => 'Учиться по карточкам';

  @override
  String get search => 'Поиск';

  @override
  String get searchWords => 'Поиск идиом';

  @override
  String get settings => 'Настройки';

  @override
  String get noWords => 'Идиомы не найдены';

  @override
  String get cannotLoadWords => 'Невозможно загрузить идиомы';

  @override
  String get addedToFavorites => 'Добавлено в избранное';

  @override
  String get removedFromFavorites => 'Удалено из избранного';

  @override
  String get definition => '📖 Определение';

  @override
  String get example => '💬 Пример';

  @override
  String get translating => 'Перевод...';

  @override
  String get listenPronunciation => 'Прослушать произношение';

  @override
  String get markAsLearned => 'Отметить как изученное';

  @override
  String get previous => 'Назад';

  @override
  String get next => 'Далее';

  @override
  String get pronunciation => 'Произношение';

  @override
  String cardCount(int current, int total) {
    return '$current / $total';
  }

  @override
  String get tapToFlip => 'Нажмите, чтобы перевернуть';

  @override
  String get levelA1 => 'Начальный 1';

  @override
  String get levelA2 => 'Начальный 2';

  @override
  String get levelB1 => 'Средний 1';

  @override
  String get levelB2 => 'Средний 2';

  @override
  String get levelC1 => 'Продвинутый';

  @override
  String levelWords(String level) {
    return 'Идиомы $level';
  }

  @override
  String get flashcardMode => 'Режим карточек';

  @override
  String get listMode => 'Режим списка';

  @override
  String get language => 'Язык';

  @override
  String get selectLanguage => 'Выберите язык';

  @override
  String languageChanged(String language) {
    return 'Язык изменен на $language';
  }

  @override
  String get translationInfo => 'Информация о переводе';

  @override
  String get translationInfoDesc => 'Переводы будут загружены автоматически при просмотре слов. После загрузки они кэшируются локально для офлайн-использования.';

  @override
  String get ok => 'OK';

  @override
  String get darkMode => 'Темный режим';

  @override
  String get speechRate => 'Скорость речи';

  @override
  String get notifications => 'Уведомления';

  @override
  String get dailyReminder => 'Ежедневное напоминание';

  @override
  String get about => 'О приложении';

  @override
  String get version => 'Версия';

  @override
  String get developer => 'Разработчик';

  @override
  String get searchHint => 'Поиск идиом...';

  @override
  String get noSearchResults => 'Результаты не найдены';

  @override
  String get typeToSearch => 'Введите для поиска слов';

  @override
  String get noFavorites => 'Пока нет избранного';

  @override
  String get addFavoritesHint => 'Добавьте слова в избранное, нажав на значок сердца';

  @override
  String get posNoun => 'существительное';

  @override
  String get posVerb => 'глагол';

  @override
  String get posAdjective => 'прилагательное';

  @override
  String get posAdverb => 'наречие';

  @override
  String get posPronoun => 'местоимение';

  @override
  String get posPreposition => 'предлог';

  @override
  String get posConjunction => 'союз';

  @override
  String get posInterjection => 'междометие';

  @override
  String get posArticle => 'артикль';

  @override
  String get posDeterminer => 'определитель';

  @override
  String get posAuxiliary => 'вспомогательный глагол';

  @override
  String get posPhrasal => 'фразовый глагол';

  @override
  String get showTranslationFirst => 'Показать перевод первым';

  @override
  String get showTranslationFirstDesc => 'Показывать переведенное значение перед английским';

  @override
  String get display => 'Отображение';

  @override
  String get useDarkTheme => 'Использовать темную тему';

  @override
  String get restartToApply => 'Перезапустите приложение для применения темы';

  @override
  String get learningSection => 'Обучение';

  @override
  String currentSpeed(String speed) {
    return 'Текущая: ${speed}x';
  }

  @override
  String get getDailyReminders => 'Получать ежедневные напоминания об обучении';

  @override
  String get copyright => 'Авторские права';

  @override
  String get copyrightDesc => 'Все определения оригинальные или созданы ИИ';

  @override
  String get copyrightNotice => 'Уведомление об авторских правах';

  @override
  String get copyrightContent => 'Все определения слов и примеры предложений в этом приложении являются оригинальными или созданы ИИ. Контент словарей, защищенный авторским правом, не используется.';

  @override
  String get privacyPolicy => 'Политика конфиденциальности';

  @override
  String get privacyContent => 'Это приложение не собирает, не хранит и не передает личную информацию.';

  @override
  String get alphabetical => 'По алфавиту';

  @override
  String get random => 'Случайный';

  @override
  String get quiz => 'Тест';

  @override
  String get testYourself => 'Проверь себя';

  @override
  String get wordQuiz => 'Тест по идиомам';

  @override
  String quizWithLevel(String level) {
    return 'Тест $level';
  }

  @override
  String get wordToMeaningMode => 'Идиома→Значение';

  @override
  String get meaningToWordMode => 'Значение→Идиома';

  @override
  String get quizComplete => '🎉 Тест завершен!';

  @override
  String correctAnswers(int percentage) {
    return '$percentage% Правильно';
  }

  @override
  String get exit => 'Выход';

  @override
  String get tryAgain => 'Попробовать снова';

  @override
  String get quizCompleteMessage => 'Тест завершен!';

  @override
  String get excellent => 'Отлично! 🌟';

  @override
  String get greatJob => 'Хорошая работа! 👏';

  @override
  String get goodStart => 'Хорошее начало! 💪';

  @override
  String get keepPracticing => 'Продолжайте практиковаться! 📚';

  @override
  String questionProgress(int current, int total) {
    return '$current / $total';
  }

  @override
  String get whatIsTheMeaning => 'Что означает эта идиома?';

  @override
  String get whichWordMatches => 'Какая идиома соответствует этому значению?';

  @override
  String get nextQuestion => 'Далее';

  @override
  String get loading => 'Загрузка...';

  @override
  String get removeAds => 'Убрать рекламу';

  @override
  String get removeAdsTitle => 'Убрать всю рекламу';

  @override
  String get removeAdsDesc => 'Наслаждайтесь обучением без рекламы';

  @override
  String get adsRemoved => 'Реклама удалена';

  @override
  String get enjoyAdFree => 'Наслаждайтесь без рекламы!';

  @override
  String get restorePurchase => 'Восстановить покупку';

  @override
  String get restorePurchaseDesc => 'Переустановили приложение или сменили устройство? Нажмите здесь, чтобы восстановить покупку без рекламы.';

  @override
  String get purchaseFailed => 'Покупка не удалась. Пожалуйста, попробуйте снова.';

  @override
  String get purchaseRestored => 'Покупка успешно восстановлена!';

  @override
  String get noPurchaseToRestore => 'Нет покупок для восстановления';

  @override
  String get buy => 'Купить';

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
  String get cancel => 'Отмена';
}
