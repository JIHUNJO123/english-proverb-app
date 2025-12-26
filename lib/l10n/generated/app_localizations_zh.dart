// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appTitle => 'English Proverbs 300';

  @override
  String get todayWord => '📅 今日熟语';

  @override
  String get learning => '学习';

  @override
  String get levelLearning => '分级学习';

  @override
  String get allWords => '全部熟语';

  @override
  String get viewAllWords => '查看所有熟语';

  @override
  String get favorites => '收藏夹';

  @override
  String get savedWords => '已保存';

  @override
  String get flashcard => '闪卡';

  @override
  String get cardLearning => '卡片学习';

  @override
  String get search => '搜索';

  @override
  String get searchWords => '搜索熟语';

  @override
  String get settings => '设置';

  @override
  String get noWords => '没有熟语';

  @override
  String get cannotLoadWords => '无法加载熟语';

  @override
  String get addedToFavorites => '已添加到收藏夹';

  @override
  String get removedFromFavorites => '已从收藏夹移除';

  @override
  String get definition => '📖 释义';

  @override
  String get example => '💬 例句';

  @override
  String get translating => '翻译中...';

  @override
  String get listenPronunciation => '听发音';

  @override
  String get markAsLearned => '标记已学';

  @override
  String get previous => '上一个';

  @override
  String get next => '下一个';

  @override
  String get pronunciation => '发音';

  @override
  String cardCount(int current, int total) {
    return '$current / $total';
  }

  @override
  String get tapToFlip => '点击翻转';

  @override
  String get levelA1 => '初级1';

  @override
  String get levelA2 => '初级2';

  @override
  String get levelB1 => '中级1';

  @override
  String get levelB2 => '中级2';

  @override
  String get levelC1 => '高级';

  @override
  String levelWords(String level) {
    return '$level 熟语';
  }

  @override
  String get flashcardMode => '闪卡模式';

  @override
  String get listMode => '列表模式';

  @override
  String get language => '语言';

  @override
  String get selectLanguage => '选择语言';

  @override
  String languageChanged(String language) {
    return '已切换到$language';
  }

  @override
  String get translationInfo => '翻译说明';

  @override
  String get translationInfoDesc => '查看熟语时会自动下载翻译。下载后可离线使用。';

  @override
  String get ok => '确定';

  @override
  String get darkMode => '深色模式';

  @override
  String get speechRate => '朗读速度';

  @override
  String get notifications => '通知';

  @override
  String get dailyReminder => '每日提醒';

  @override
  String get about => '关于';

  @override
  String get version => '版本';

  @override
  String get developer => '开发者';

  @override
  String get searchHint => '搜索熟语...';

  @override
  String get noSearchResults => '没有找到结果';

  @override
  String get typeToSearch => '输入以搜索熟语';

  @override
  String get noFavorites => '暂无收藏';

  @override
  String get addFavoritesHint => '点击心形图标添加收藏';

  @override
  String get posNoun => '名词';

  @override
  String get posVerb => '动词';

  @override
  String get posAdjective => '形容词';

  @override
  String get posAdverb => '副词';

  @override
  String get posPronoun => '代词';

  @override
  String get posPreposition => '介词';

  @override
  String get posConjunction => '连词';

  @override
  String get posInterjection => '感叹词';

  @override
  String get posArticle => '冠词';

  @override
  String get posDeterminer => '限定词';

  @override
  String get posAuxiliary => '助动词';

  @override
  String get posPhrasal => '短语动词';

  @override
  String get showTranslationFirst => '先显示翻译';

  @override
  String get showTranslationFirstDesc => '在英语之前显示翻译含义';

  @override
  String get display => '显示';

  @override
  String get useDarkTheme => '使用深色主题';

  @override
  String get restartToApply => '重启应用以应用主题更改';

  @override
  String get learningSection => '学习';

  @override
  String currentSpeed(String speed) {
    return '当前: $speed倍速';
  }

  @override
  String get getDailyReminders => '接收每日学习提醒';

  @override
  String get copyright => '版权';

  @override
  String get copyrightDesc => '所有定义均为原创或AI生成';

  @override
  String get copyrightNotice => '版权声明';

  @override
  String get copyrightContent => '此应用程序中的所有熟语定义和例句均为原创或AI生成。未使用受版权保护的词典内容。';

  @override
  String get privacyPolicy => '隐私政策';

  @override
  String get privacyContent => '此应用程序不收集、存储或分享任何个人信息。';

  @override
  String get alphabetical => '字母顺序';

  @override
  String get random => '随机';

  @override
  String get quiz => '测验';

  @override
  String get testYourself => '测试能力';

  @override
  String get wordQuiz => '熟语测验';

  @override
  String quizWithLevel(String level) {
    return '$level 测验';
  }

  @override
  String get wordToMeaningMode => '熟语→释义';

  @override
  String get meaningToWordMode => '释义→熟语';

  @override
  String get quizComplete => '🎉 测验完成！';

  @override
  String correctAnswers(int percentage) {
    return '$percentage% 正确';
  }

  @override
  String get exit => '退出';

  @override
  String get tryAgain => '再试一次';

  @override
  String get quizCompleteMessage => '测验完成！';

  @override
  String get excellent => '太棒了！ 🌟';

  @override
  String get greatJob => '做得好！ 👏';

  @override
  String get goodStart => '好的开始！ 💪';

  @override
  String get keepPracticing => '继续练习！ 📚';

  @override
  String questionProgress(int current, int total) {
    return '$current / $total';
  }

  @override
  String get whatIsTheMeaning => '这个熟语的意思是什么？';

  @override
  String get whichWordMatches => '哪个熟语符合这个意思？';

  @override
  String get nextQuestion => '下一题';

  @override
  String get loading => '加载中...';

  @override
  String get removeAds => '移除广告';

  @override
  String get removeAdsTitle => '移除所有广告';

  @override
  String get removeAdsDesc => '享受无广告学习体验';

  @override
  String get adsRemoved => '广告已移除';

  @override
  String get enjoyAdFree => '享受无广告体验！';

  @override
  String get restorePurchase => '恢复购买';

  @override
  String get restorePurchaseDesc => '重新安装应用或更换设备了吗？点击此处恢复您的去广告购买。';

  @override
  String get purchaseFailed => '购买失败，请重试。';

  @override
  String get purchaseRestored => '购买恢复成功！';

  @override
  String get noPurchaseToRestore => '没有可恢复的购买';

  @override
  String get buy => '购买';

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
  String get apiTranslationNotice =>
      'Translations are being provided via API (online translation)';

  @override
  String get cancel => '取消';

  @override
  String get lockedContent => '锁定内容';

  @override
  String get watchAdToUnlock => '观看短视频即可解锁所有单词至午夜！';

  @override
  String get watchAd => '观看广告';

  @override
  String get adNotReady => '广告尚未准备好，请稍后再试。';

  @override
  String get unlockedUntilMidnight => '所有单词已解锁至午夜！';
}
