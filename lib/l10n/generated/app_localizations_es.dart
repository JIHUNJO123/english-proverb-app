// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'English Idioms 1000';

  @override
  String get todayWord => '📅 Modismo del día';

  @override
  String get learning => 'Aprender';

  @override
  String get levelLearning => 'Por nivel';

  @override
  String get allWords => 'Todos los modismos';

  @override
  String get viewAllWords => 'Ver todos los modismos';

  @override
  String get favorites => 'Favoritos';

  @override
  String get savedWords => 'Modismos guardados';

  @override
  String get flashcard => 'Tarjetas';

  @override
  String get cardLearning => 'Aprender con tarjetas';

  @override
  String get search => 'Buscar';

  @override
  String get searchWords => 'Buscar modismos';

  @override
  String get settings => 'Ajustes';

  @override
  String get noWords => 'No hay modismos';

  @override
  String get cannotLoadWords => 'No se pueden cargar';

  @override
  String get addedToFavorites => 'Añadido a favoritos';

  @override
  String get removedFromFavorites => 'Eliminado de favoritos';

  @override
  String get definition => '📖 Definición';

  @override
  String get example => '💬 Ejemplo';

  @override
  String get translating => 'Traduciendo...';

  @override
  String get listenPronunciation => 'Escuchar';

  @override
  String get markAsLearned => 'Marcar aprendido';

  @override
  String get previous => 'Anterior';

  @override
  String get next => 'Siguiente';

  @override
  String get pronunciation => 'Pronunciar';

  @override
  String cardCount(int current, int total) {
    return '$current / $total';
  }

  @override
  String get tapToFlip => 'Toca para voltear';

  @override
  String get levelA1 => 'Principiante 1';

  @override
  String get levelA2 => 'Principiante 2';

  @override
  String get levelB1 => 'Intermedio 1';

  @override
  String get levelB2 => 'Intermedio 2';

  @override
  String get levelC1 => 'Avanzado';

  @override
  String levelWords(String level) {
    return 'Modismos $level';
  }

  @override
  String get flashcardMode => 'Modo tarjetas';

  @override
  String get listMode => 'Modo lista';

  @override
  String get language => 'Idioma';

  @override
  String get selectLanguage => 'Seleccionar idioma';

  @override
  String languageChanged(String language) {
    return 'Cambiado a $language';
  }

  @override
  String get translationInfo => 'Info traducción';

  @override
  String get translationInfoDesc => 'Las traducciones se descargan automáticamente. Una vez descargadas, están disponibles sin conexión.';

  @override
  String get ok => 'OK';

  @override
  String get darkMode => 'Modo oscuro';

  @override
  String get speechRate => 'Velocidad';

  @override
  String get notifications => 'Notificaciones';

  @override
  String get dailyReminder => 'Recordatorio diario';

  @override
  String get about => 'Acerca de';

  @override
  String get version => 'Versión';

  @override
  String get developer => 'Desarrollador';

  @override
  String get searchHint => 'Buscar modismos...';

  @override
  String get noSearchResults => 'Sin resultados';

  @override
  String get typeToSearch => 'Escribe para buscar';

  @override
  String get noFavorites => 'Sin favoritos';

  @override
  String get addFavoritesHint => 'Toca el corazón para añadir';

  @override
  String get posNoun => 'sustantivo';

  @override
  String get posVerb => 'verbo';

  @override
  String get posAdjective => 'adjetivo';

  @override
  String get posAdverb => 'adverbio';

  @override
  String get posPronoun => 'pronombre';

  @override
  String get posPreposition => 'preposición';

  @override
  String get posConjunction => 'conjunción';

  @override
  String get posInterjection => 'interjección';

  @override
  String get posArticle => 'artículo';

  @override
  String get posDeterminer => 'determinante';

  @override
  String get posAuxiliary => 'verbo auxiliar';

  @override
  String get posPhrasal => 'verbo frasal';

  @override
  String get showTranslationFirst => 'Mostrar traducción primero';

  @override
  String get showTranslationFirstDesc => 'Mostrar significado traducido antes del inglés';

  @override
  String get display => 'Pantalla';

  @override
  String get useDarkTheme => 'Usar tema oscuro';

  @override
  String get restartToApply => 'Reinicia la app para aplicar el cambio de tema';

  @override
  String get learningSection => 'Aprendizaje';

  @override
  String currentSpeed(String speed) {
    return 'Actual: ${speed}x';
  }

  @override
  String get getDailyReminders => 'Recibir recordatorios diarios';

  @override
  String get copyright => 'Derechos de autor';

  @override
  String get copyrightDesc => 'Todas las definiciones son originales o generadas por IA';

  @override
  String get copyrightNotice => 'Aviso de derechos de autor';

  @override
  String get copyrightContent => 'Todas las definiciones de palabras y oraciones de ejemplo en esta aplicación son originales o generadas por IA. No se utiliza contenido de diccionarios con derechos de autor.\n\nLas traducciones son proporcionadas por MyMemory API (servicio de traducción gratuito).';

  @override
  String get privacyPolicy => 'Política de privacidad';

  @override
  String get privacyContent => 'Esta aplicación no recopila, almacena ni comparte información personal.\n\nLas solicitudes de traducción se envían a MyMemory API para su procesamiento. Los datos del usuario no se almacenan en servidores externos.';

  @override
  String get alphabetical => 'Alfabético';

  @override
  String get random => 'Aleatorio';

  @override
  String get quiz => 'Prueba';

  @override
  String get testYourself => 'Ponte a prueba';

  @override
  String get wordQuiz => 'Prueba de modismos';

  @override
  String quizWithLevel(String level) {
    return 'Prueba $level';
  }

  @override
  String get wordToMeaningMode => 'Modismo→Significado';

  @override
  String get meaningToWordMode => 'Significado→Modismo';

  @override
  String get quizComplete => '🎉 ¡Prueba completada!';

  @override
  String correctAnswers(int percentage) {
    return '$percentage% Correcto';
  }

  @override
  String get exit => 'Salir';

  @override
  String get tryAgain => 'Intentar de nuevo';

  @override
  String get quizCompleteMessage => '¡Prueba completada!';

  @override
  String get excellent => '¡Excelente! 🌟';

  @override
  String get greatJob => '¡Buen trabajo! 👏';

  @override
  String get goodStart => '¡Buen comienzo! 💪';

  @override
  String get keepPracticing => '¡Sigue practicando! 📚';

  @override
  String questionProgress(int current, int total) {
    return '$current / $total';
  }

  @override
  String get whatIsTheMeaning => '¿Cuál es el significado de esta palabra?';

  @override
  String get whichWordMatches => '¿Qué modismo corresponde a este significado?';

  @override
  String get nextQuestion => 'Siguiente';

  @override
  String get loading => 'Cargando...';

  @override
  String get removeAds => 'Quitar anuncios';

  @override
  String get removeAdsTitle => 'Quitar todos los anuncios';

  @override
  String get removeAdsDesc => 'Disfruta de una experiencia de aprendizaje sin anuncios';

  @override
  String get adsRemoved => 'Anuncios eliminados';

  @override
  String get enjoyAdFree => '¡Disfruta tu experiencia sin anuncios!';

  @override
  String get restorePurchase => 'Restaurar compra';

  @override
  String get restorePurchaseDesc => '¿Reinstalaste la app o cambiaste de dispositivo? Toca aquí para restaurar tu compra sin anuncios.';

  @override
  String get purchaseFailed => 'La compra falló. Por favor, inténtalo de nuevo.';

  @override
  String get purchaseRestored => '¡Compra restaurada con éxito!';

  @override
  String get noPurchaseToRestore => 'No se encontró ninguna compra para restaurar';

  @override
  String get buy => 'Comprar';

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
