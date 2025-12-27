// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'English Proverbs 300';

  @override
  String get todayWord => '📅 Expression du jour';

  @override
  String get learning => 'Apprendre';

  @override
  String get levelLearning => 'Par niveau';

  @override
  String get allWords => 'Toutes les expressions';

  @override
  String get viewAllWords => 'Voir toutes les expressions';

  @override
  String get favorites => 'Favoris';

  @override
  String get savedWords => 'Expressions enregistrées';

  @override
  String get flashcard => 'Cartes';

  @override
  String get cardLearning => 'Apprendre avec cartes';

  @override
  String get search => 'Rechercher';

  @override
  String get searchWords => 'Chercher des expressions';

  @override
  String get settings => 'Paramètres';

  @override
  String get noWords => 'Aucune expression';

  @override
  String get cannotLoadWords => 'Impossible de charger';

  @override
  String get addedToFavorites => 'Ajouté aux favoris';

  @override
  String get removedFromFavorites => 'Retiré des favoris';

  @override
  String get definition => '📖 Définition';

  @override
  String get example => '💬 Exemple';

  @override
  String get translating => 'Traduction...';

  @override
  String get listenPronunciation => 'Écouter';

  @override
  String get markAsLearned => 'Marquer appris';

  @override
  String get previous => 'Précédent';

  @override
  String get next => 'Suivant';

  @override
  String get pronunciation => 'Prononcer';

  @override
  String cardCount(int current, int total) {
    return '$current / $total';
  }

  @override
  String get tapToFlip => 'Appuyez pour retourner';

  @override
  String get levelA1 => 'Débutant 1';

  @override
  String get levelA2 => 'Débutant 2';

  @override
  String get levelB1 => 'Intermédiaire 1';

  @override
  String get levelB2 => 'Intermédiaire 2';

  @override
  String get levelC1 => 'Avancé';

  @override
  String levelWords(String level) {
    return 'Expressions $level';
  }

  @override
  String get flashcardMode => 'Mode cartes';

  @override
  String get listMode => 'Mode liste';

  @override
  String get language => 'Langue';

  @override
  String get selectLanguage => 'Choisir la langue';

  @override
  String languageChanged(String language) {
    return 'Changé en $language';
  }

  @override
  String get translationInfo => 'Info traduction';

  @override
  String get translationInfoDesc =>
      'Les traductions sont téléchargées automatiquement. Une fois téléchargées, elles sont disponibles hors ligne.';

  @override
  String get ok => 'OK';

  @override
  String get darkMode => 'Mode sombre';

  @override
  String get speechRate => 'Vitesse';

  @override
  String get notifications => 'Notifications';

  @override
  String get dailyReminder => 'Rappel quotidien';

  @override
  String get about => 'À propos';

  @override
  String get version => 'Version';

  @override
  String get developer => 'Développeur';

  @override
  String get searchHint => 'Rechercher des expressions...';

  @override
  String get noSearchResults => 'Aucun résultat';

  @override
  String get typeToSearch => 'Tapez pour rechercher';

  @override
  String get noFavorites => 'Aucun favori';

  @override
  String get addFavoritesHint => 'Appuyez sur le cœur pour ajouter';

  @override
  String get posNoun => 'nom';

  @override
  String get posVerb => 'verbe';

  @override
  String get posAdjective => 'adjectif';

  @override
  String get posAdverb => 'adverbe';

  @override
  String get posPronoun => 'pronom';

  @override
  String get posPreposition => 'préposition';

  @override
  String get posConjunction => 'conjonction';

  @override
  String get posInterjection => 'interjection';

  @override
  String get posArticle => 'article';

  @override
  String get posDeterminer => 'déterminant';

  @override
  String get posAuxiliary => 'verbe auxiliaire';

  @override
  String get posPhrasal => 'verbe à particule';

  @override
  String get showTranslationFirst => 'Afficher la traduction d\'abord';

  @override
  String get showTranslationFirstDesc =>
      'Afficher la signification traduite avant l\'anglais';

  @override
  String get display => 'Affichage';

  @override
  String get useDarkTheme => 'Utiliser le thème sombre';

  @override
  String get restartToApply =>
      'Redémarrez l\'app pour appliquer le changement de thème';

  @override
  String get learningSection => 'Apprentissage';

  @override
  String currentSpeed(String speed) {
    return 'Actuel: ${speed}x';
  }

  @override
  String get getDailyReminders => 'Recevoir des rappels quotidiens';

  @override
  String get copyright => 'Droits d\'auteur';

  @override
  String get copyrightDesc =>
      'Toutes les définitions sont originales ou générées par IA';

  @override
  String get copyrightNotice => 'Avis de droits d\'auteur';

  @override
  String get copyrightContent =>
      'Toutes les définitions de mots et phrases d\'exemple dans cette application sont originales ou générées par IA. Aucun contenu de dictionnaire protégé par le droit d\'auteur n\'est utilisé.';

  @override
  String get privacyPolicy => 'Politique de confidentialité';

  @override
  String get privacyContent =>
      'Cette application ne collecte, ne stocke ni ne partage aucune information personnelle.';

  @override
  String get alphabetical => 'Alphabétique';

  @override
  String get random => 'Aléatoire';

  @override
  String get quiz => 'Quiz';

  @override
  String get testYourself => 'Testez-vous';

  @override
  String get wordQuiz => 'Quiz d\'expressions';

  @override
  String quizWithLevel(String level) {
    return 'Quiz $level';
  }

  @override
  String get wordToMeaningMode => 'Expression→Sens';

  @override
  String get meaningToWordMode => 'Sens→Expression';

  @override
  String get quizComplete => '🎉 Quiz terminé!';

  @override
  String correctAnswers(int percentage) {
    return '$percentage% Correct';
  }

  @override
  String get exit => 'Quitter';

  @override
  String get tryAgain => 'Réessayer';

  @override
  String get quizCompleteMessage => 'Quiz terminé!';

  @override
  String get excellent => 'Excellent! 🌟';

  @override
  String get greatJob => 'Bon travail! 👏';

  @override
  String get goodStart => 'Bon début! 💪';

  @override
  String get keepPracticing => 'Continuez à pratiquer! 📚';

  @override
  String questionProgress(int current, int total) {
    return '$current / $total';
  }

  @override
  String get whatIsTheMeaning => 'Quelle est la signification de ce mot?';

  @override
  String get whichWordMatches => 'Quelle expression correspond à ce sens?';

  @override
  String get nextQuestion => 'Suivant';

  @override
  String get loading => 'Chargement...';

  @override
  String get removeAds => 'Supprimer les pubs';

  @override
  String get removeAdsTitle => 'Supprimer toutes les pubs';

  @override
  String get removeAdsDesc => 'Profitez d\'un apprentissage sans publicité';

  @override
  String get adsRemoved => 'Publicités supprimées';

  @override
  String get enjoyAdFree => 'Profitez de votre expérience sans publicité!';

  @override
  String get restorePurchase => 'Restaurer l\'achat';

  @override
  String get restorePurchaseDesc =>
      'Vous avez réinstallé l\'app ou changé d\'appareil ? Appuyez ici pour restaurer votre achat sans pub.';

  @override
  String get purchaseFailed => 'L\'achat a échoué. Veuillez réessayer.';

  @override
  String get purchaseRestored => 'Achat restauré avec succès!';

  @override
  String get noPurchaseToRestore => 'Aucun achat à restaurer';

  @override
  String get buy => 'Acheter';

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
  String get cancel => 'Annuler';

  @override
  String get lockedContent => 'Contenu verrouillé';

  @override
  String get watchAdToUnlock =>
      'Regardez une courte vidéo pour débloquer tous les mots jusqu\'à minuit !';

  @override
  String get watchAd => 'Voir la pub';

  @override
  String get adNotReady =>
      'La publicité n\'est pas encore prête. Veuillez réessayer.';

  @override
  String get unlockedUntilMidnight =>
      'Tous les mots débloqués jusqu\'à minuit !';
}
