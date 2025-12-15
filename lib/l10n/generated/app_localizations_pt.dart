// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appTitle => 'English Idioms 1000';

  @override
  String get todayWord => '📅 Expressão do dia';

  @override
  String get learning => 'Aprender';

  @override
  String get levelLearning => 'Por nível';

  @override
  String get allWords => 'Todas as expressões';

  @override
  String get viewAllWords => 'Ver todas as expressões';

  @override
  String get favorites => 'Favoritos';

  @override
  String get savedWords => 'Expressões salvas';

  @override
  String get flashcard => 'Cartões';

  @override
  String get cardLearning => 'Aprender com cartões';

  @override
  String get search => 'Buscar';

  @override
  String get searchWords => 'Buscar expressões';

  @override
  String get settings => 'Configurações';

  @override
  String get noWords => 'Nenhuma expressão';

  @override
  String get cannotLoadWords => 'Não foi possível carregar';

  @override
  String get addedToFavorites => 'Adicionado aos favoritos';

  @override
  String get removedFromFavorites => 'Removido dos favoritos';

  @override
  String get definition => '📖 Definição';

  @override
  String get example => '💬 Exemplo';

  @override
  String get translating => 'Traduzindo...';

  @override
  String get listenPronunciation => 'Ouvir';

  @override
  String get markAsLearned => 'Marcar como aprendido';

  @override
  String get previous => 'Anterior';

  @override
  String get next => 'Próximo';

  @override
  String get pronunciation => 'Pronunciar';

  @override
  String cardCount(int current, int total) {
    return '$current / $total';
  }

  @override
  String get tapToFlip => 'Toque para virar';

  @override
  String get levelA1 => 'Iniciante 1';

  @override
  String get levelA2 => 'Iniciante 2';

  @override
  String get levelB1 => 'Intermediário 1';

  @override
  String get levelB2 => 'Intermediário 2';

  @override
  String get levelC1 => 'Avançado';

  @override
  String levelWords(String level) {
    return 'Expressões $level';
  }

  @override
  String get flashcardMode => 'Modo cartões';

  @override
  String get listMode => 'Modo lista';

  @override
  String get language => 'Idioma';

  @override
  String get selectLanguage => 'Selecionar idioma';

  @override
  String languageChanged(String language) {
    return 'Alterado para $language';
  }

  @override
  String get translationInfo => 'Info de tradução';

  @override
  String get translationInfoDesc => 'As traduções são baixadas automaticamente. Uma vez baixadas, ficam disponíveis offline.';

  @override
  String get ok => 'OK';

  @override
  String get darkMode => 'Modo escuro';

  @override
  String get speechRate => 'Velocidade';

  @override
  String get notifications => 'Notificações';

  @override
  String get dailyReminder => 'Lembrete diário';

  @override
  String get about => 'Sobre';

  @override
  String get version => 'Versão';

  @override
  String get developer => 'Desenvolvedor';

  @override
  String get searchHint => 'Buscar expressões...';

  @override
  String get noSearchResults => 'Nenhum resultado';

  @override
  String get typeToSearch => 'Digite para buscar';

  @override
  String get noFavorites => 'Sem favoritos';

  @override
  String get addFavoritesHint => 'Toque no coração para adicionar';

  @override
  String get posNoun => 'substantivo';

  @override
  String get posVerb => 'verbo';

  @override
  String get posAdjective => 'adjetivo';

  @override
  String get posAdverb => 'advérbio';

  @override
  String get posPronoun => 'pronome';

  @override
  String get posPreposition => 'preposição';

  @override
  String get posConjunction => 'conjunção';

  @override
  String get posInterjection => 'interjeição';

  @override
  String get posArticle => 'artigo';

  @override
  String get posDeterminer => 'determinante';

  @override
  String get posAuxiliary => 'verbo auxiliar';

  @override
  String get posPhrasal => 'verbo frasal';

  @override
  String get showTranslationFirst => 'Mostrar tradução primeiro';

  @override
  String get showTranslationFirstDesc => 'Exibir significado traduzido antes do inglês';

  @override
  String get display => 'Exibição';

  @override
  String get useDarkTheme => 'Usar tema escuro';

  @override
  String get restartToApply => 'Reinicie o app para aplicar a mudança de tema';

  @override
  String get learningSection => 'Aprendizado';

  @override
  String currentSpeed(String speed) {
    return 'Atual: ${speed}x';
  }

  @override
  String get getDailyReminders => 'Receber lembretes diários de aprendizado';

  @override
  String get copyright => 'Direitos autorais';

  @override
  String get copyrightDesc => 'Todas as expressões as definições são originais ou geradas por IA';

  @override
  String get copyrightNotice => 'Aviso de direitos autorais';

  @override
  String get copyrightContent => 'Todas as expressões as definições de palavras e frases de exemplo neste aplicativo são originais ou geradas por IA. Nenhum conteúdo de dicionário com direitos autorais é usado.\n\nAs traduções são fornecidas pela MyMemory API (serviço de tradução gratuito).';

  @override
  String get privacyPolicy => 'Política de privacidade';

  @override
  String get privacyContent => 'Este aplicativo não coleta, armazena ou compartilha nenhuma informação pessoal.\n\nAs solicitações de tradução são enviadas para a MyMemory API para processamento. Os dados do usuário não são armazenados em servidores externos.';

  @override
  String get alphabetical => 'Alfabética';

  @override
  String get random => 'Aleatório';

  @override
  String get quiz => 'Teste';

  @override
  String get testYourself => 'Teste-se';

  @override
  String get wordQuiz => 'Teste de expressões';

  @override
  String quizWithLevel(String level) {
    return 'Teste $level';
  }

  @override
  String get wordToMeaningMode => 'Expressão→Significado';

  @override
  String get meaningToWordMode => 'Significado→Expressão';

  @override
  String get quizComplete => '🎉 Teste concluído!';

  @override
  String correctAnswers(int percentage) {
    return '$percentage% Correto';
  }

  @override
  String get exit => 'Sair';

  @override
  String get tryAgain => 'Tentar novamente';

  @override
  String get quizCompleteMessage => 'Teste concluído!';

  @override
  String get excellent => 'Excelente! 🌟';

  @override
  String get greatJob => 'Bom trabalho! 👏';

  @override
  String get goodStart => 'Bom começo! 💪';

  @override
  String get keepPracticing => 'Continue praticando! 📚';

  @override
  String questionProgress(int current, int total) {
    return '$current / $total';
  }

  @override
  String get whatIsTheMeaning => 'Qual é o significado desta palavra?';

  @override
  String get whichWordMatches => 'Qual expressão corresponde a este significado?';

  @override
  String get nextQuestion => 'Próximo';

  @override
  String get loading => 'Carregando...';

  @override
  String get removeAds => 'Remover anúncios';

  @override
  String get removeAdsTitle => 'Remover todos os anúncios';

  @override
  String get removeAdsDesc => 'Aproveite uma experiência de aprendizado sem anúncios';

  @override
  String get adsRemoved => 'Anúncios removidos';

  @override
  String get enjoyAdFree => 'Aproveite sua experiência sem anúncios!';

  @override
  String get restorePurchase => 'Restaurar compra';

  @override
  String get restorePurchaseDesc => 'Reinstalou o app ou trocou de dispositivo? Toque aqui para restaurar sua compra sem anúncios.';

  @override
  String get purchaseFailed => 'A compra falhou. Por favor, tente novamente.';

  @override
  String get purchaseRestored => 'Compra restaurada com sucesso!';

  @override
  String get noPurchaseToRestore => 'Nenhuma compra encontrada para restaurar';

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
