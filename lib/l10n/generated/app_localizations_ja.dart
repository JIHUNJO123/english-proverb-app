// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appTitle => 'English Idioms 1000';

  @override
  String get todayWord => '📅 今日の熟語';

  @override
  String get learning => '学習';

  @override
  String get levelLearning => 'レベル別学習';

  @override
  String get allWords => '全熟語';

  @override
  String get viewAllWords => 'すべての熟語を見る';

  @override
  String get favorites => 'お気に入り';

  @override
  String get savedWords => '保存した熟語';

  @override
  String get flashcard => 'フラッシュカード';

  @override
  String get cardLearning => 'カードで学習';

  @override
  String get search => '検索';

  @override
  String get searchWords => '熟語を探す';

  @override
  String get settings => '設定';

  @override
  String get noWords => '熟語がありません';

  @override
  String get cannotLoadWords => '熟語を読み込めません';

  @override
  String get addedToFavorites => 'お気に入りに追加しました';

  @override
  String get removedFromFavorites => 'お気に入りから削除しました';

  @override
  String get definition => '📖 意味';

  @override
  String get example => '💬 例文';

  @override
  String get translating => '翻訳中...';

  @override
  String get listenPronunciation => '発音を聞く';

  @override
  String get markAsLearned => '学習済み';

  @override
  String get previous => '前へ';

  @override
  String get next => '次へ';

  @override
  String get pronunciation => '発音';

  @override
  String cardCount(int current, int total) {
    return '$current / $total';
  }

  @override
  String get tapToFlip => 'タップして裏返す';

  @override
  String get levelA1 => '初級1';

  @override
  String get levelA2 => '初級2';

  @override
  String get levelB1 => '中級1';

  @override
  String get levelB2 => '中級2';

  @override
  String get levelC1 => '上級';

  @override
  String levelWords(String level) {
    return '$level 熟語';
  }

  @override
  String get flashcardMode => 'フラッシュカードモード';

  @override
  String get listMode => 'リストモード';

  @override
  String get language => '言語';

  @override
  String get selectLanguage => '言語を選択';

  @override
  String languageChanged(String language) {
    return '$languageに変更しました';
  }

  @override
  String get translationInfo => '翻訳について';

  @override
  String get translationInfoDesc => '熟語を見ると自動的に翻訳がダウンロードされます。ダウンロードした翻訳はオフラインでも使用できます。';

  @override
  String get ok => 'OK';

  @override
  String get darkMode => 'ダークモード';

  @override
  String get speechRate => '読み上げ速度';

  @override
  String get notifications => '通知';

  @override
  String get dailyReminder => '毎日のリマインダー';

  @override
  String get about => '情報';

  @override
  String get version => 'バージョン';

  @override
  String get developer => '開発者';

  @override
  String get searchHint => '熟語を検索...';

  @override
  String get noSearchResults => '検索結果がありません';

  @override
  String get typeToSearch => '熟語を検索してください';

  @override
  String get noFavorites => 'お気に入りがありません';

  @override
  String get addFavoritesHint => 'ハートアイコンをタップしてお気に入りに追加';

  @override
  String get posNoun => '名詞';

  @override
  String get posVerb => '動詞';

  @override
  String get posAdjective => '形容詞';

  @override
  String get posAdverb => '副詞';

  @override
  String get posPronoun => '代名詞';

  @override
  String get posPreposition => '前置詞';

  @override
  String get posConjunction => '接続詞';

  @override
  String get posInterjection => '間投詞';

  @override
  String get posArticle => '冠詞';

  @override
  String get posDeterminer => '限定詞';

  @override
  String get posAuxiliary => '助動詞';

  @override
  String get posPhrasal => '句動詞';

  @override
  String get showTranslationFirst => '翻訳を先に表示';

  @override
  String get showTranslationFirstDesc => '英語の前に翻訳された意味を表示';

  @override
  String get display => '表示';

  @override
  String get useDarkTheme => 'ダークテーマを使用';

  @override
  String get restartToApply => 'テーマ変更を適用するにはアプリを再起動';

  @override
  String get learningSection => '学習';

  @override
  String currentSpeed(String speed) {
    return '現在: $speed倍速';
  }

  @override
  String get getDailyReminders => '毎日学習リマインダーを受け取る';

  @override
  String get copyright => '著作権';

  @override
  String get copyrightDesc => 'すべての定義はオリジナルまたはAI生成';

  @override
  String get copyrightNotice => '著作権情報';

  @override
  String get copyrightContent => 'このアプリのすべての熟語定義と例文はオリジナルまたはAIで生成されています。著作権のある辞書コンテンツは使用されていません。\n\n翻訳はMyMemory API（無料翻訳サービス）で提供されています。';

  @override
  String get privacyPolicy => 'プライバシーポリシー';

  @override
  String get privacyContent => 'このアプリは個人情報を収集、保存、共有しません。\n\n翻訳リクエストはMyMemory APIに送信されて処理されます。ユーザーデータは外部サーバーに保存されません。';

  @override
  String get alphabetical => 'アルファベット順';

  @override
  String get random => 'ランダム';

  @override
  String get quiz => 'クイズ';

  @override
  String get testYourself => '実力テスト';

  @override
  String get wordQuiz => '熟語クイズ';

  @override
  String quizWithLevel(String level) {
    return '$level クイズ';
  }

  @override
  String get wordToMeaningMode => '熟語→意味';

  @override
  String get meaningToWordMode => '意味→熟語';

  @override
  String get quizComplete => '🎉 クイズ完了！';

  @override
  String correctAnswers(int percentage) {
    return '$percentage% 正解';
  }

  @override
  String get exit => '終了';

  @override
  String get tryAgain => 'もう一度';

  @override
  String get quizCompleteMessage => 'クイズ完了！';

  @override
  String get excellent => '完璧です！ 🌟';

  @override
  String get greatJob => 'よくできました！ 👏';

  @override
  String get goodStart => 'いいスタート！ 💪';

  @override
  String get keepPracticing => 'もっと練習しよう！ 📚';

  @override
  String questionProgress(int current, int total) {
    return '$current / $total';
  }

  @override
  String get whatIsTheMeaning => 'この熟語の意味は何ですか？';

  @override
  String get whichWordMatches => 'この意味に合う熟語は？';

  @override
  String get nextQuestion => '次へ';

  @override
  String get loading => '読み込み中...';

  @override
  String get removeAds => '広告を削除';

  @override
  String get removeAdsTitle => 'すべての広告を削除';

  @override
  String get removeAdsDesc => '広告なしの学習体験をお楽しみください';

  @override
  String get adsRemoved => '広告が削除されました';

  @override
  String get enjoyAdFree => '広告なしの体験をお楽しみください！';

  @override
  String get restorePurchase => '購入を復元';

  @override
  String get restorePurchaseDesc => '再インストールまたは機種変更しましたか？こちらをタップして広告削除の購入を復元してください。';

  @override
  String get purchaseFailed => '購入に失敗しました。もう一度お試しください。';

  @override
  String get purchaseRestored => '購入が正常に復元されました！';

  @override
  String get noPurchaseToRestore => '復元する購入が見つかりません';

  @override
  String get buy => '購入';

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
