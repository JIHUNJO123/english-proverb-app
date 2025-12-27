import 'package:flutter/material.dart';
import 'package:english_proverb_app/l10n/generated/app_localizations.dart';
import '../db/database_helper.dart';
import '../models/word.dart';
import '../services/ad_service.dart';
import '../services/translation_service.dart';

class WordDetailScreen extends StatefulWidget {
  final Word word;
  final List<Word>? wordList;
  final int? currentIndex;

  const WordDetailScreen({
    super.key,
    required this.word,
    this.wordList,
    this.currentIndex,
  });

  @override
  State<WordDetailScreen> createState() => _WordDetailScreenState();
}

class _WordDetailScreenState extends State<WordDetailScreen> {
  late Word _word;
  late int _currentIndex;
  String? _translatedDefinition;
  String? _translatedExample;

  @override
  void initState() {
    super.initState();
    _word = widget.word;
    _currentIndex = widget.currentIndex ?? 0;
    _loadTranslations();
  }

  Future<void> _loadTranslations() async {
    final translationService = TranslationService.instance;
    await translationService.init();

    if (!translationService.needsTranslation) return;

    // 내장 번역만 사용 (API 호출 없음)
    final langCode = translationService.currentLanguage;
    final embeddedDef = _word.getEmbeddedTranslation(langCode, 'definition');
    final embeddedEx = _word.getEmbeddedTranslation(langCode, 'example');

    if (mounted) {
      setState(() {
        _translatedDefinition = embeddedDef;
        _translatedExample = embeddedEx;
      });
    }
  }

  Future<void> _toggleFavorite() async {
    await DatabaseHelper.instance.toggleFavorite(_word.id, !_word.isFavorite);
    setState(() {
      _word = _word.copyWith(isFavorite: !_word.isFavorite);
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          _word.isFavorite
              ? AppLocalizations.of(context)!.addedToFavorites
              : AppLocalizations.of(context)!.removedFromFavorites,
        ),
        duration: const Duration(seconds: 1),
      ),
    );
  }

  bool get _hasTranslation =>
      TranslationService.instance.needsTranslation &&
      (_translatedDefinition != null || _translatedExample != null);

  @override
  void dispose() {
    super.dispose();
  }

  Color _getLevelColor(String level) {
    switch (level) {
      case 'A1':
        return Colors.green;
      case 'A2':
        return Colors.lightGreen;
      case 'B1':
        return Colors.orange;
      case 'B2':
        return Colors.deepOrange;
      case 'C1':
        return Colors.red;
      default:
        return Colors.blue;
    }
  }

  // 잠긴 단어인지 확인 (짝수 인덱스 = 2, 4, 6...)
  bool _isWordLocked(int index) {
    if (index % 2 == 0) return false;
    return !AdService.instance.isUnlocked;
  }

  void _goToPreviousWord() {
    if (widget.wordList != null && _currentIndex > 0) {
      int newIndex = _currentIndex - 1;
      while (newIndex > 0 && _isWordLocked(newIndex)) {
        newIndex--;
      }
      if (_isWordLocked(newIndex)) return;

      setState(() {
        _currentIndex = newIndex;
        _word = widget.wordList![_currentIndex];
        _translatedDefinition = null;
        _translatedExample = null;
      });
      _loadTranslations();
    }
  }

  void _goToNextWord() {
    if (widget.wordList != null &&
        _currentIndex < widget.wordList!.length - 1) {
      int newIndex = _currentIndex + 1;
      while (newIndex < widget.wordList!.length - 1 &&
          _isWordLocked(newIndex)) {
        newIndex++;
      }
      if (_isWordLocked(newIndex)) return;

      setState(() {
        _currentIndex = newIndex;
        _word = widget.wordList![_currentIndex];
        _translatedDefinition = null;
        _translatedExample = null;
      });
      _loadTranslations();
    }
  }

  @override
  Widget build(BuildContext context) {
    final bool canGoPrevious = widget.wordList != null && _currentIndex > 0;
    final bool canGoNext =
        widget.wordList != null &&
        _currentIndex < (widget.wordList?.length ?? 1) - 1;

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) return;
        Navigator.of(context).pop(_currentIndex);
      },
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(_currentIndex),
          ),
          title: Text(_word.word),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(
                _word.isFavorite ? Icons.favorite : Icons.favorite_border,
                color: _word.isFavorite ? Colors.red : null,
              ),
              onPressed: _toggleFavorite,
            ),
          ],
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Word Header Card
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(24.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    gradient: LinearGradient(
                      colors: [
                        Theme.of(context).primaryColor,
                        Theme.of(
                          context,
                        ).primaryColor.withAlpha((0.7 * 255).toInt()),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Column(
                    children: [
                      Text(
                        _word.word,
                        style: const TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: _getLevelColor(_word.level),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          _word.level,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),

              // Definition Section
              _buildSection(
                title: AppLocalizations.of(context)!.definition,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 번역이 있으면 번역 먼저 표시
                    if (_hasTranslation && _translatedDefinition != null) ...[
                      Text(
                        _translatedDefinition!,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        _word.definition,
                        style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                      ),
                    ] else
                      Text(
                        _word.definition,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                  ],
                ),
              ),
              const SizedBox(height: 16),

              // Example Section
              _buildSection(
                title: AppLocalizations.of(context)!.example,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _word.example,
                      style: const TextStyle(
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    if (_hasTranslation && _translatedExample != null) ...[
                      const SizedBox(height: 8),
                      Text(
                        _translatedExample!,
                        style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                      ),
                    ],
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // Action Buttons
              Center(
                child: OutlinedButton.icon(
                  onPressed: _toggleFavorite,
                  icon: Icon(
                    _word.isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: _word.isFavorite ? Colors.red : null,
                  ),
                  label: Text(_word.isFavorite ? 'Unfavorite' : 'Favorite'),
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 24,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              if (widget.wordList != null) ...[
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton.icon(
                      onPressed: canGoPrevious ? _goToPreviousWord : null,
                      icon: const Icon(Icons.arrow_back),
                      label: Text(AppLocalizations.of(context)!.previous),
                    ),
                    Text(
                      '${_currentIndex + 1} / ${widget.wordList!.length}',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ElevatedButton.icon(
                      onPressed: canGoNext ? _goToNextWord : null,
                      icon: const Icon(Icons.arrow_forward),
                      label: Text(AppLocalizations.of(context)!.next),
                    ),
                  ],
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSection({required String title, required Widget child}) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title.toUpperCase(),
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w600,
                color: Colors.grey[500],
                letterSpacing: 1.2,
              ),
            ),
            const SizedBox(height: 10),
            child,
          ],
        ),
      ),
    );
  }
}
