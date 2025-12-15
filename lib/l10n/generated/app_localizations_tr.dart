// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get appTitle => 'English Idioms 1000';

  @override
  String get todayWord => '📅 Günün Deyimi';

  @override
  String get learning => 'Öğrenme';

  @override
  String get levelLearning => 'Seviyeye Göre Öğrenme';

  @override
  String get allWords => 'Tüm Deyimler';

  @override
  String get viewAllWords => 'Tüm deyimleri görüntüle';

  @override
  String get favorites => 'Favoriler';

  @override
  String get savedWords => 'Kayıtlı deyimler';

  @override
  String get flashcard => 'Kartlar';

  @override
  String get cardLearning => 'Kartlarla öğren';

  @override
  String get search => 'Ara';

  @override
  String get searchWords => 'Deyim ara';

  @override
  String get settings => 'Ayarlar';

  @override
  String get noWords => 'Deyim bulunamadı';

  @override
  String get cannotLoadWords => 'Deyimler yüklenemedi';

  @override
  String get addedToFavorites => 'Favorilere eklendi';

  @override
  String get removedFromFavorites => 'Favorilerden kaldırıldı';

  @override
  String get definition => '📖 Tanım';

  @override
  String get example => '💬 Örnek';

  @override
  String get translating => 'Çevriliyor...';

  @override
  String get listenPronunciation => 'Telaffuzu Dinle';

  @override
  String get markAsLearned => 'Öğrenildi Olarak İşaretle';

  @override
  String get previous => 'Önceki';

  @override
  String get next => 'Sonraki';

  @override
  String get pronunciation => 'Telaffuz';

  @override
  String cardCount(int current, int total) {
    return '$current / $total';
  }

  @override
  String get tapToFlip => 'Çevirmek için dokun';

  @override
  String get levelA1 => 'Başlangıç 1';

  @override
  String get levelA2 => 'Başlangıç 2';

  @override
  String get levelB1 => 'Orta 1';

  @override
  String get levelB2 => 'Orta 2';

  @override
  String get levelC1 => 'İleri';

  @override
  String levelWords(String level) {
    return '$level Deyimler';
  }

  @override
  String get flashcardMode => 'Kart Modu';

  @override
  String get listMode => 'Liste Modu';

  @override
  String get language => 'Dil';

  @override
  String get selectLanguage => 'Dilinizi Seçin';

  @override
  String languageChanged(String language) {
    return 'Dil $language olarak değiştirildi';
  }

  @override
  String get translationInfo => 'Çeviri Bilgisi';

  @override
  String get translationInfoDesc => 'Kelimeleri görüntülediğinizde çeviriler otomatik olarak indirilecektir. İndirildikten sonra çevrimdışı kullanım için yerel olarak önbelleğe alınır.';

  @override
  String get ok => 'Tamam';

  @override
  String get darkMode => 'Karanlık Mod';

  @override
  String get speechRate => 'Konuşma Hızı';

  @override
  String get notifications => 'Bildirimler';

  @override
  String get dailyReminder => 'Günlük Hatırlatıcı';

  @override
  String get about => 'Hakkında';

  @override
  String get version => 'Sürüm';

  @override
  String get developer => 'Geliştirici';

  @override
  String get searchHint => 'Deyim ara...';

  @override
  String get noSearchResults => 'Sonuç bulunamadı';

  @override
  String get typeToSearch => 'Deyim aramak için yazın';

  @override
  String get noFavorites => 'Henüz favori yok';

  @override
  String get addFavoritesHint => 'Kalp simgesine dokunarak favorilere kelime ekleyin';

  @override
  String get posNoun => 'isim';

  @override
  String get posVerb => 'fiil';

  @override
  String get posAdjective => 'sıfat';

  @override
  String get posAdverb => 'zarf';

  @override
  String get posPronoun => 'zamir';

  @override
  String get posPreposition => 'edat';

  @override
  String get posConjunction => 'bağlaç';

  @override
  String get posInterjection => 'ünlem';

  @override
  String get posArticle => 'artikel';

  @override
  String get posDeterminer => 'belirleyici';

  @override
  String get posAuxiliary => 'yardımcı fiil';

  @override
  String get posPhrasal => 'deyimsel fiil';

  @override
  String get showTranslationFirst => 'Önce çeviriyi göster';

  @override
  String get showTranslationFirstDesc => 'İngilizceden önce çevrilmiş anlamı görüntüle';

  @override
  String get display => 'Görünüm';

  @override
  String get useDarkTheme => 'Karanlık tema kullan';

  @override
  String get restartToApply => 'Tema değişikliğini uygulamak için uygulamayı yeniden başlatın';

  @override
  String get learningSection => 'Öğrenme';

  @override
  String currentSpeed(String speed) {
    return 'Mevcut: ${speed}x';
  }

  @override
  String get getDailyReminders => 'Günlük öğrenme hatırlatıcıları al';

  @override
  String get copyright => 'Telif Hakkı';

  @override
  String get copyrightDesc => 'Tüm tanımlar orijinal veya yapay zeka tarafından oluşturulmuştur';

  @override
  String get copyrightNotice => 'Telif Hakkı Bildirimi';

  @override
  String get copyrightContent => 'Bu uygulamadaki tüm kelime tanımları ve örnek cümleler orijinaldir veya yapay zeka tarafından oluşturulmuştur. Telif hakkıyla korunan sözlük içeriği kullanılmamıştır.\n\nÇeviriler MyMemory API (ücretsiz çeviri hizmeti) tarafından sağlanmaktadır.';

  @override
  String get privacyPolicy => 'Gizlilik Politikası';

  @override
  String get privacyContent => 'Bu uygulama hiçbir kişisel bilgi toplamaz, saklamaz veya paylaşmaz.\n\nÇeviri istekleri işlenmek üzere MyMemory API\'ye gönderilir. Kullanıcı verileri harici sunucularda saklanmaz.';

  @override
  String get alphabetical => 'Alfabetik';

  @override
  String get random => 'Rastgele';

  @override
  String get quiz => 'Test';

  @override
  String get testYourself => 'Kendini test et';

  @override
  String get wordQuiz => 'Deyim testi';

  @override
  String quizWithLevel(String level) {
    return '$level Testi';
  }

  @override
  String get wordToMeaningMode => 'Deyim→Anlam';

  @override
  String get meaningToWordMode => 'Anlam→Deyim';

  @override
  String get quizComplete => '🎉 Test tamamlandı!';

  @override
  String correctAnswers(int percentage) {
    return '$percentage% Doğru';
  }

  @override
  String get exit => 'Çık';

  @override
  String get tryAgain => 'Tekrar dene';

  @override
  String get quizCompleteMessage => 'Test tamamlandı!';

  @override
  String get excellent => 'Mükemmel! 🌟';

  @override
  String get greatJob => 'Harika iş! 👏';

  @override
  String get goodStart => 'İyi başlangıç! 💪';

  @override
  String get keepPracticing => 'Pratik yapmaya devam et! 📚';

  @override
  String questionProgress(int current, int total) {
    return '$current / $total';
  }

  @override
  String get whatIsTheMeaning => 'Bu deyimin anlamı nedir?';

  @override
  String get whichWordMatches => 'Hangi deyim bu anlama uyuyor?';

  @override
  String get nextQuestion => 'İleri';

  @override
  String get loading => 'Yükleniyor...';

  @override
  String get removeAds => 'Reklamları Kaldır';

  @override
  String get removeAdsTitle => 'Tüm Reklamları Kaldır';

  @override
  String get removeAdsDesc => 'Reklamsız öğrenme deneyiminin tadını çıkarın';

  @override
  String get adsRemoved => 'Reklamlar Kaldırıldı';

  @override
  String get enjoyAdFree => 'Reklamsız deneyiminizin tadını çıkarın!';

  @override
  String get restorePurchase => 'Satın Almayı Geri Yükle';

  @override
  String get restorePurchaseDesc => 'Uygulamayı yeniden yüklediniz veya cihaz değiştirdiniz mi? Reklamsız satın alımınızı geri yüklemek için buraya dokunun.';

  @override
  String get purchaseFailed => 'Satın alma başarısız oldu. Lütfen tekrar deneyin.';

  @override
  String get purchaseRestored => 'Satın alma başarıyla geri yüklendi!';

  @override
  String get noPurchaseToRestore => 'Geri yüklenecek satın alma bulunamadı';

  @override
  String get buy => 'Satın Al';

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
