import 'package:flutter/material.dart';
import 'package:english_proverb_app/l10n/generated/app_localizations.dart';
import '../db/database_helper.dart';
import '../models/word.dart';
import '../services/translation_service.dart';
import 'word_detail_screen.dart';
import 'favorites_flashcard_screen.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  List<Word> _favorites = [];
  Map<int, String> _translatedDefinitions = {}; // 번역된 정의 캐시
  bool _isLoading = true;
  bool _showNativeLanguage = true; // 모국어/영어 전환 (기본: 모국어)

  @override
  void initState() {
    super.initState();
    _loadFavorites();
  }

  Future<void> _loadFavorites() async {
    final favorites = await DatabaseHelper.instance.getFavorites();

    // 내장 번역만 사용 (API 호출 없음)
    final translationService = TranslationService.instance;
    await translationService.init();

    Map<int, String> translations = {};
    if (translationService.needsTranslation) {
      final langCode = translationService.currentLanguage;
      for (var word in favorites) {
        final embeddedDef = word.getEmbeddedTranslation(langCode, 'definition');
        if (embeddedDef != null && embeddedDef.isNotEmpty) {
          translations[word.id] = embeddedDef;
        }
      }
    }

    setState(() {
      _favorites = favorites;
      _translatedDefinitions = translations;
      _isLoading = false;
    });
  }

  Future<void> _removeFavorite(Word word) async {
    await DatabaseHelper.instance.toggleFavorite(word.id, false);
    setState(() {
      _favorites.removeWhere((w) => w.id == word.id);
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(AppLocalizations.of(context)!.removedFromFavorites),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: () async {
            await DatabaseHelper.instance.toggleFavorite(word.id, true);
            _loadFavorites();
          },
        ),
        duration: const Duration(seconds: 3),
      ),
    );
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

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.favorites),
        centerTitle: true,
        actions: [
          // 영어/모국어 전환 버튼
          if (_favorites.isNotEmpty &&
              TranslationService.instance.needsTranslation)
            IconButton(
              icon: Icon(
                _showNativeLanguage ? Icons.translate : Icons.language,
                color:
                    _showNativeLanguage ? Theme.of(context).primaryColor : null,
              ),
              tooltip: _showNativeLanguage ? 'English' : l10n.language,
              onPressed: () {
                setState(() {
                  _showNativeLanguage = !_showNativeLanguage;
                });
              },
            ),
          if (_favorites.isNotEmpty)
            IconButton(
              icon: const Icon(Icons.style),
              tooltip: l10n.flashcard,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) =>
                            FavoritesFlashcardScreen(favorites: _favorites),
                  ),
                );
              },
            ),
          if (_favorites.isNotEmpty)
            IconButton(
              icon: const Icon(Icons.delete_sweep),
              tooltip: 'Delete All',
              onPressed: () {
                showDialog(
                  context: context,
                  builder:
                      (context) => AlertDialog(
                        title: const Text('Delete All Favorites'),
                        content: const Text(
                          'Are you sure you want to delete all favorites?',
                        ),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () async {
                              Navigator.pop(context);
                              for (var word in _favorites) {
                                await DatabaseHelper.instance.toggleFavorite(
                                  word.id,
                                  false,
                                );
                              }
                              _loadFavorites();
                            },
                            child: const Text(
                              'Delete',
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                        ],
                      ),
                );
              },
            ),
        ],
      ),
      body:
          _isLoading
              ? const Center(child: CircularProgressIndicator())
              : _favorites.isEmpty
              ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.favorite_border,
                      size: 80,
                      color: Colors.grey[400],
                    ),
                    const SizedBox(height: 16),
                    Text(
                      l10n.noFavorites,
                      style: TextStyle(fontSize: 18, color: Colors.grey[600]),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      l10n.addFavoritesHint,
                      style: TextStyle(fontSize: 14, color: Colors.grey[500]),
                    ),
                  ],
                ),
              )
              : ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: _favorites.length,
                itemBuilder: (context, index) {
                  final word = _favorites[index];
                  return Dismissible(
                    key: Key(word.id.toString()),
                    direction: DismissDirection.endToStart,
                    background: Container(
                      alignment: Alignment.centerRight,
                      padding: const EdgeInsets.only(right: 20),
                      margin: const EdgeInsets.symmetric(
                        vertical: 4,
                        horizontal: 8,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Icon(Icons.delete, color: Colors.white),
                    ),
                    onDismissed: (direction) {
                      _removeFavorite(word);
                    },
                    child: Card(
                      margin: const EdgeInsets.symmetric(
                        vertical: 4,
                        horizontal: 8,
                      ),
                      child: ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        leading: Container(
                          width: 48,
                          height: 48,
                          decoration: BoxDecoration(
                            color: Theme.of(
                              context,
                            ).primaryColor.withAlpha((0.1 * 255).toInt()),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Icon(Icons.favorite, color: Colors.red[400]),
                          ),
                        ),
                        title: Row(
                          children: [
                            Expanded(
                              child: Text(
                                word.word,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            const SizedBox(width: 8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 2,
                              ),
                              decoration: BoxDecoration(
                                color: _getLevelColor(
                                  word.level,
                                ).withAlpha((0.2 * 255).toInt()),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Text(
                                word.level,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: _getLevelColor(word.level),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              _showNativeLanguage
                                  ? (_translatedDefinitions[word.id] ??
                                      word.definition)
                                  : word.definition,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => WordDetailScreen(word: word),
                            ),
                          ).then((_) => _loadFavorites());
                        },
                      ),
                    ),
                  );
                },
              ),
    );
  }
}
