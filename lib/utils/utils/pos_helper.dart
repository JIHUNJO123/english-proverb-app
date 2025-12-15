import 'package:english_proverb_app/l10n/generated/app_localizations.dart';

/// 영어 품사를 현재 언어로 번역하는 헬퍼 함수
String translatePartOfSpeech(AppLocalizations l10n, String pos) {
  final posLower = pos.toLowerCase().trim();

  switch (posLower) {
    case 'noun':
      return l10n.posNoun;
    case 'verb':
      return l10n.posVerb;
    case 'adjective':
      return l10n.posAdjective;
    case 'adverb':
      return l10n.posAdverb;
    case 'pronoun':
      return l10n.posPronoun;
    case 'preposition':
      return l10n.posPreposition;
    case 'conjunction':
      return l10n.posConjunction;
    case 'interjection':
      return l10n.posInterjection;
    case 'article':
      return l10n.posArticle;
    case 'determiner':
      return l10n.posDeterminer;
    case 'auxiliary verb':
    case 'auxiliary':
      return l10n.posAuxiliary;
    case 'phrasal verb':
    case 'phrasal':
      return l10n.posPhrasal;
    default:
      return pos; // 번역이 없으면 원본 반환
  }
}
