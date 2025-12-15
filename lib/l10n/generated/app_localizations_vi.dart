// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get appTitle => 'English Idioms 1000';

  @override
  String get todayWord => '📅 Thành ngữ hôm nay';

  @override
  String get learning => 'Học';

  @override
  String get levelLearning => 'Theo cấp độ';

  @override
  String get allWords => 'Tất cả';

  @override
  String get viewAllWords => 'Xem tất cả thành ngữ';

  @override
  String get favorites => 'Yêu thích';

  @override
  String get savedWords => 'Thành ngữ đã lưu';

  @override
  String get flashcard => 'Thẻ';

  @override
  String get cardLearning => 'Học bằng thẻ';

  @override
  String get search => 'Tìm kiếm';

  @override
  String get searchWords => 'Tìm thành ngữ';

  @override
  String get settings => 'Cài đặt';

  @override
  String get noWords => 'Không có thành ngữ';

  @override
  String get cannotLoadWords => 'Không thể tải thành ngữ';

  @override
  String get addedToFavorites => 'Đã thêm vào yêu thích';

  @override
  String get removedFromFavorites => 'Đã xóa khỏi yêu thích';

  @override
  String get definition => '📖 Nghĩa';

  @override
  String get example => '💬 Ví dụ';

  @override
  String get translating => 'Đang dịch...';

  @override
  String get listenPronunciation => 'Nghe';

  @override
  String get markAsLearned => 'Đánh dấu đã học';

  @override
  String get previous => 'Trước';

  @override
  String get next => 'Tiếp';

  @override
  String get pronunciation => 'Phát âm';

  @override
  String cardCount(int current, int total) {
    return '$current / $total';
  }

  @override
  String get tapToFlip => 'Chạm để lật';

  @override
  String get levelA1 => 'Sơ cấp 1';

  @override
  String get levelA2 => 'Sơ cấp 2';

  @override
  String get levelB1 => 'Trung cấp 1';

  @override
  String get levelB2 => 'Trung cấp 2';

  @override
  String get levelC1 => 'Cao cấp';

  @override
  String levelWords(String level) {
    return 'Thành ngữ $level';
  }

  @override
  String get flashcardMode => 'Chế độ thẻ';

  @override
  String get listMode => 'Chế độ danh sách';

  @override
  String get language => 'Ngôn ngữ';

  @override
  String get selectLanguage => 'Chọn ngôn ngữ';

  @override
  String languageChanged(String language) {
    return 'Đã đổi sang $language';
  }

  @override
  String get translationInfo => 'Thông tin dịch';

  @override
  String get translationInfoDesc => 'Bản dịch sẽ được tải xuống tự động. Sau khi tải, có thể sử dụng ngoại tuyến.';

  @override
  String get ok => 'OK';

  @override
  String get darkMode => 'Chế độ tối';

  @override
  String get speechRate => 'Tốc độ';

  @override
  String get notifications => 'Thông báo';

  @override
  String get dailyReminder => 'Nhắc nhở hàng ngày';

  @override
  String get about => 'Về';

  @override
  String get version => 'Phiên bản';

  @override
  String get developer => 'Nhà phát triển';

  @override
  String get searchHint => 'Tìm thành ngữ...';

  @override
  String get noSearchResults => 'Không có kết quả';

  @override
  String get typeToSearch => 'Nhập để tìm kiếm';

  @override
  String get noFavorites => 'Chưa có yêu thích';

  @override
  String get addFavoritesHint => 'Nhấn vào trái tim để thêm';

  @override
  String get posNoun => 'danh từ';

  @override
  String get posVerb => 'động từ';

  @override
  String get posAdjective => 'tính từ';

  @override
  String get posAdverb => 'trạng từ';

  @override
  String get posPronoun => 'đại từ';

  @override
  String get posPreposition => 'giới từ';

  @override
  String get posConjunction => 'liên từ';

  @override
  String get posInterjection => 'thán từ';

  @override
  String get posArticle => 'mạo từ';

  @override
  String get posDeterminer => 'từ hạn định';

  @override
  String get posAuxiliary => 'trợ động từ';

  @override
  String get posPhrasal => 'cụm động từ';

  @override
  String get showTranslationFirst => 'Hiển thị bản dịch trước';

  @override
  String get showTranslationFirstDesc => 'Hiển thị nghĩa đã dịch trước tiếng Anh';

  @override
  String get display => 'Hiển thị';

  @override
  String get useDarkTheme => 'Sử dụng giao diện tối';

  @override
  String get restartToApply => 'Khởi động lại ứng dụng để áp dụng thay đổi giao diện';

  @override
  String get learningSection => 'Học tập';

  @override
  String currentSpeed(String speed) {
    return 'Hiện tại: ${speed}x';
  }

  @override
  String get getDailyReminders => 'Nhận nhắc nhở học tập hàng ngày';

  @override
  String get copyright => 'Bản quyền';

  @override
  String get copyrightDesc => 'Tất cả định nghĩa là gốc hoặc do AI tạo';

  @override
  String get copyrightNotice => 'Thông báo bản quyền';

  @override
  String get copyrightContent => 'Tất cả định nghĩa từ và câu ví dụ trong ứng dụng này là gốc hoặc do AI tạo ra. Không sử dụng nội dung từ điển có bản quyền.\n\nBản dịch được cung cấp bởi MyMemory API (dịch vụ dịch miễn phí).';

  @override
  String get privacyPolicy => 'Chính sách quyền riêng tư';

  @override
  String get privacyContent => 'Ứng dụng này không thu thập, lưu trữ hoặc chia sẻ bất kỳ thông tin cá nhân nào.\n\nCác yêu cầu dịch được gửi đến MyMemory API để xử lý. Dữ liệu người dùng không được lưu trữ trên máy chủ bên ngoài.';

  @override
  String get alphabetical => 'Theo bảng chữ cái';

  @override
  String get random => 'Ngẫu nhiên';

  @override
  String get quiz => 'Kiểm tra';

  @override
  String get testYourself => 'Tự kiểm tra';

  @override
  String get wordQuiz => 'Kiểm tra thành ngữ';

  @override
  String quizWithLevel(String level) {
    return 'Kiểm tra $level';
  }

  @override
  String get wordToMeaningMode => 'Thành ngữ→Nghĩa';

  @override
  String get meaningToWordMode => 'Nghĩa→Thành ngữ';

  @override
  String get quizComplete => '🎉 Hoàn thành kiểm tra!';

  @override
  String correctAnswers(int percentage) {
    return '$percentage% Đúng';
  }

  @override
  String get exit => 'Thoát';

  @override
  String get tryAgain => 'Thử lại';

  @override
  String get quizCompleteMessage => 'Hoàn thành kiểm tra!';

  @override
  String get excellent => 'Xuất sắc! 🌟';

  @override
  String get greatJob => 'Làm tốt lắm! 👏';

  @override
  String get goodStart => 'Khởi đầu tốt! 💪';

  @override
  String get keepPracticing => 'Tiếp tục luyện tập! 📚';

  @override
  String questionProgress(int current, int total) {
    return '$current / $total';
  }

  @override
  String get whatIsTheMeaning => 'Nghĩa của thành ngữ này là gì?';

  @override
  String get whichWordMatches => 'Thành ngữ nào phù hợp với nghĩa này?';

  @override
  String get nextQuestion => 'Tiếp theo';

  @override
  String get loading => 'Đang tải...';

  @override
  String get removeAds => 'Xóa quảng cáo';

  @override
  String get removeAdsTitle => 'Xóa tất cả quảng cáo';

  @override
  String get removeAdsDesc => 'Tận hưởng trải nghiệm học không quảng cáo';

  @override
  String get adsRemoved => 'Đã xóa quảng cáo';

  @override
  String get enjoyAdFree => 'Tận hưởng trải nghiệm không quảng cáo!';

  @override
  String get restorePurchase => 'Khôi phục giao dịch';

  @override
  String get restorePurchaseDesc => 'Đã cài lại ứng dụng hoặc đổi thiết bị? Nhấn vào đây để khôi phục giao dịch không quảng cáo.';

  @override
  String get purchaseFailed => 'Giao dịch thất bại. Vui lòng thử lại.';

  @override
  String get purchaseRestored => 'Khôi phục giao dịch thành công!';

  @override
  String get noPurchaseToRestore => 'Không tìm thấy giao dịch để khôi phục';

  @override
  String get buy => 'Mua';

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
