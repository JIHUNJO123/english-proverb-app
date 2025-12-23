// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class AppLocalizationsTh extends AppLocalizations {
  AppLocalizationsTh([String locale = 'th']) : super(locale);

  @override
  String get appTitle => 'English Proverbs 300';

  @override
  String get todayWord => '📅 สำนวนวันนี้';

  @override
  String get learning => 'เรียน';

  @override
  String get levelLearning => 'ตามระดับ';

  @override
  String get allWords => 'ทั้งหมด';

  @override
  String get viewAllWords => 'ดูสำนวนทั้งหมด';

  @override
  String get favorites => 'รายการโปรด';

  @override
  String get savedWords => 'สำนวนที่บันทึก';

  @override
  String get flashcard => 'แฟลชการ์ด';

  @override
  String get cardLearning => 'เรียนด้วยการ์ด';

  @override
  String get search => 'ค้นหา';

  @override
  String get searchWords => 'ค้นหาสำนวน';

  @override
  String get settings => 'ตั้งค่า';

  @override
  String get noWords => 'ไม่มีสำนวน';

  @override
  String get cannotLoadWords => 'ไม่สามารถโหลดได้';

  @override
  String get addedToFavorites => 'เพิ่มในรายการโปรด';

  @override
  String get removedFromFavorites => 'ลบออกจากรายการโปรด';

  @override
  String get definition => '📖 ความหมาย';

  @override
  String get example => '💬 ตัวอย่าง';

  @override
  String get translating => 'กำลังแปล...';

  @override
  String get listenPronunciation => 'ฟัง';

  @override
  String get markAsLearned => 'ทำเครื่องหมายเรียนแล้ว';

  @override
  String get previous => 'ก่อนหน้า';

  @override
  String get next => 'ถัดไป';

  @override
  String get pronunciation => 'ออกเสียง';

  @override
  String cardCount(int current, int total) {
    return '$current / $total';
  }

  @override
  String get tapToFlip => 'แตะเพื่อพลิก';

  @override
  String get levelA1 => 'เริ่มต้น 1';

  @override
  String get levelA2 => 'เริ่มต้น 2';

  @override
  String get levelB1 => 'กลาง 1';

  @override
  String get levelB2 => 'กลาง 2';

  @override
  String get levelC1 => 'ขั้นสูง';

  @override
  String levelWords(String level) {
    return 'สำนวน $level';
  }

  @override
  String get flashcardMode => 'โหมดการ์ด';

  @override
  String get listMode => 'โหมดรายการ';

  @override
  String get language => 'ภาษา';

  @override
  String get selectLanguage => 'เลือกภาษา';

  @override
  String languageChanged(String language) {
    return 'เปลี่ยนเป็น $language';
  }

  @override
  String get translationInfo => 'ข้อมูลการแปล';

  @override
  String get translationInfoDesc => 'คำแปลจะดาวน์โหลดอัตโนมัติ เมื่อดาวน์โหลดแล้วจะใช้งานออฟไลน์ได้';

  @override
  String get ok => 'ตกลง';

  @override
  String get darkMode => 'โหมดมืด';

  @override
  String get speechRate => 'ความเร็ว';

  @override
  String get notifications => 'การแจ้งเตือน';

  @override
  String get dailyReminder => 'เตือนทุกวัน';

  @override
  String get about => 'เกี่ยวกับ';

  @override
  String get version => 'เวอร์ชัน';

  @override
  String get developer => 'ผู้พัฒนา';

  @override
  String get searchHint => 'ค้นหาสำนวน...';

  @override
  String get noSearchResults => 'ไม่พบผลลัพธ์';

  @override
  String get typeToSearch => 'พิมพ์เพื่อค้นหา';

  @override
  String get noFavorites => 'ยังไม่มีรายการโปรด';

  @override
  String get addFavoritesHint => 'แตะหัวใจเพื่อเพิ่ม';

  @override
  String get posNoun => 'คำนาม';

  @override
  String get posVerb => 'กริยา';

  @override
  String get posAdjective => 'คำคุณศัพท์';

  @override
  String get posAdverb => 'กริยาวิเศษณ์';

  @override
  String get posPronoun => 'สรรพนาม';

  @override
  String get posPreposition => 'คำบุพบท';

  @override
  String get posConjunction => 'คำเชื่อม';

  @override
  String get posInterjection => 'คำอุทาน';

  @override
  String get posArticle => 'คำนำหน้านาม';

  @override
  String get posDeterminer => 'คำกำหนด';

  @override
  String get posAuxiliary => 'กริยาช่วย';

  @override
  String get posPhrasal => 'กริยาวลี';

  @override
  String get showTranslationFirst => 'แสดงคำแปลก่อน';

  @override
  String get showTranslationFirstDesc => 'แสดงความหมายที่แปลแล้วก่อนภาษาอังกฤษ';

  @override
  String get display => 'การแสดงผล';

  @override
  String get useDarkTheme => 'ใช้ธีมมืด';

  @override
  String get restartToApply => 'รีสตาร์ทแอปเพื่อใช้การเปลี่ยนธีม';

  @override
  String get learningSection => 'การเรียนรู้';

  @override
  String currentSpeed(String speed) {
    return 'ปัจจุบัน: $speedเท่า';
  }

  @override
  String get getDailyReminders => 'รับการเตือนเรียนรู้ประจำวัน';

  @override
  String get copyright => 'ลิขสิทธิ์';

  @override
  String get copyrightDesc => 'คำนิยามทั้งหมดเป็นต้นฉบับหรือสร้างโดย AI';

  @override
  String get copyrightNotice => 'ประกาศลิขสิทธิ์';

  @override
  String get copyrightContent => 'คำนิยามคำศัพท์และตัวอย่างประโยคทั้งหมดในแอปนี้เป็นต้นฉบับหรือสร้างโดย AI ไม่มีการใช้เนื้อหาพจนานุกรมที่มีลิขสิทธิ์';

  @override
  String get privacyPolicy => 'นโยบายความเป็นส่วนตัว';

  @override
  String get privacyContent => 'แอปนี้ไม่เก็บรวบรวม จัดเก็บ หรือแชร์ข้อมูลส่วนบุคคลใดๆ';

  @override
  String get alphabetical => 'ตามตัวอักษร';

  @override
  String get random => 'สุ่ม';

  @override
  String get quiz => 'แบบทดสอบ';

  @override
  String get testYourself => 'ทดสอบตัวเอง';

  @override
  String get wordQuiz => 'แบบทดสอบสำนวน';

  @override
  String quizWithLevel(String level) {
    return 'แบบทดสอบ $level';
  }

  @override
  String get wordToMeaningMode => 'สำนวน→ความหมาย';

  @override
  String get meaningToWordMode => 'ความหมาย→สำนวน';

  @override
  String get quizComplete => '🎉 ทำแบบทดสอบเสร็จแล้ว!';

  @override
  String correctAnswers(int percentage) {
    return '$percentage% ถูกต้อง';
  }

  @override
  String get exit => 'ออก';

  @override
  String get tryAgain => 'ลองใหม่';

  @override
  String get quizCompleteMessage => 'ทำแบบทดสอบเสร็จแล้ว!';

  @override
  String get excellent => 'ยอดเยี่ยม! 🌟';

  @override
  String get greatJob => 'เก่งมาก! 👏';

  @override
  String get goodStart => 'เริ่มต้นดี! 💪';

  @override
  String get keepPracticing => 'ฝึกต่อไป! 📚';

  @override
  String questionProgress(int current, int total) {
    return '$current / $total';
  }

  @override
  String get whatIsTheMeaning => 'สำนวนนี้มีความหมายว่าอะไร?';

  @override
  String get whichWordMatches => 'สำนวนไหนตรงกับความหมายนี้?';

  @override
  String get nextQuestion => 'ถัดไป';

  @override
  String get loading => 'กำลงโหลด...';

  @override
  String get removeAds => 'ลบโฆษณา';

  @override
  String get removeAdsTitle => 'ลบโฆษณาทั้งหมด';

  @override
  String get removeAdsDesc => 'เพลิดเพลินกับการเรียนรู้โดยไม่มีโฆษณา';

  @override
  String get adsRemoved => 'ลบโฆษณาแล้ว';

  @override
  String get enjoyAdFree => 'เพลิดเพลินกับประสบการณ์ไร้โฆษณา!';

  @override
  String get restorePurchase => 'กู้คืนการซื้อ';

  @override
  String get restorePurchaseDesc => 'ติดตั้งแอปใหม่หรือเปลี่ยนอุปกรณ์ใช่ไหม? แตะที่นี่เพื่อกู้คืนการซื้อไม่มีโฆษณาของคุณ';

  @override
  String get purchaseFailed => 'การซื้อล้มเหลว กรุณาลองอีกครั้ง';

  @override
  String get purchaseRestored => 'กู้คืนการซื้อสำเร็จ!';

  @override
  String get noPurchaseToRestore => 'ไม่พบการซื้อที่จะกู้คืน';

  @override
  String get buy => 'ซื้อ';

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
  String get cancel => 'ยกเลิก';
}
