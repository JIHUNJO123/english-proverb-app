import 'package:flutter/material.dart';
import 'package:english_proverb_app/l10n/generated/app_localizations.dart';
import '../db/database_helper.dart';
import '../models/word.dart';
import '../services/translation_service.dart';
import '../services/ad_service.dart';
import 'word_list_screen.dart';
import 'word_detail_screen.dart';
import 'favorites_screen.dart';
import 'quiz_screen.dart';
import 'settings_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Word? _todayWord;
  String? _translatedDefinition;
  bool _isLoading = true;
  String? _lastLanguage; // 마지막 로드된 언어 추적

  @override
  void initState() {
    super.initState();
    _loadTodayWord();
    AdService.instance.loadRewardedAd();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // 언어 변경 감지하여 오늘의 단어 새로고침
    final currentLanguage = TranslationService.instance.currentLanguage;
    if (_lastLanguage != null && _lastLanguage != currentLanguage) {
      _loadTodayWord();
    }
    _lastLanguage = currentLanguage;
  }

  Future<void> _loadTodayWord() async {
    try {
      // JSON에서 내장 번역이 포함된 단어 로드 (API 호출 없음)
      final word = await DatabaseHelper.instance.getTodayWordWithTranslations();
      if (word != null) {
        final translationService = TranslationService.instance;
        await translationService.init();

        String? translated;
        if (translationService.needsTranslation) {
          // 내장 번역만 사용 (API 호출 없음)
          final langCode = translationService.currentLanguage;
          translated = word.getEmbeddedTranslation(langCode, 'definition');
        }

        if (mounted) {
          setState(() {
            _todayWord = word;
            _translatedDefinition = translated;
            _isLoading = false;
          });
        }
      } else {
        if (mounted) {
          setState(() {
            _todayWord = null;
            _isLoading = false;
          });
        }
      }
    } catch (e) {
      print('Error loading today word: $e');
      if (mounted) {
        setState(() {
          _todayWord = null;
          _isLoading = false;
        });
      }
    }
  }

  @override
  void dispose() {
    AdService.instance.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          l10n.appTitle,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingsScreen()),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Today's Word Card
                  _buildTodayWordCard(),
                  const SizedBox(height: 24),

                  // Quick Actions
                  Text(
                    l10n.learning,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  _buildMenuGrid(),

                  const SizedBox(height: 24),

                  // Level Selection
                  Text(
                    l10n.levelLearning,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  _buildLevelCards(),
                ],
              ),
            ),
          ),
          // 배너 광고
        ],
      ),
    );
  }

  Widget _buildTodayWordCard() {
    final l10n = AppLocalizations.of(context)!;

    if (_isLoading) {
      return const Card(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Center(child: CircularProgressIndicator()),
        ),
      );
    }

    if (_todayWord == null) {
      return Card(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Center(child: Text(l10n.cannotLoadWords)),
        ),
      );
    }

    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WordDetailScreen(word: _todayWord!),
            ),
          );
        },
        borderRadius: BorderRadius.circular(16),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(24.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(
              colors: [
                Theme.of(context).primaryColor,
                Theme.of(context).primaryColor.withAlpha((0.7 * 255).toInt()),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white.withAlpha((0.2 * 255).toInt()),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      "📅",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white.withAlpha((0.2 * 255).toInt()),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      _todayWord!.level,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      _todayWord!.word,
                      style: const TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Text(
                _translatedDefinition ?? _todayWord!.definition,
                style: const TextStyle(fontSize: 16, color: Colors.white),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuGrid() {
    final l10n = AppLocalizations.of(context)!;

    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      childAspectRatio: 1.3,
      children: [
        _buildMenuCard(
          icon: Icons.list_alt,
          title: l10n.allWords,
          subtitle: l10n.viewAllWords,
          color: Colors.blue,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const WordListScreen()),
            );
          },
        ),
        _buildMenuCard(
          icon: Icons.favorite,
          title: l10n.favorites,
          subtitle: l10n.savedWords,
          color: Colors.red,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FavoritesScreen()),
            );
          },
        ),
        _buildMenuCard(
          icon: Icons.style,
          title: l10n.flashcard,
          subtitle: l10n.cardLearning,
          color: Colors.orange,
          onTap: () => _showLevelSelectionDialog(isQuiz: false),
        ),
        _buildMenuCard(
          icon: Icons.quiz,
          title: l10n.quiz,
          subtitle: l10n.testYourself,
          color: Colors.green,
          onTap: () => _showLevelSelectionDialog(isQuiz: true),
        ),
      ],
    );
  }

  Widget _buildMenuCard({
    required IconData icon,
    required String title,
    required String subtitle,
    required Color color,
    required VoidCallback onTap,
  }) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
          child: Row(
            children: [
              Icon(icon, size: 36, color: color),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 2),
                    Text(
                      subtitle,
                      style: TextStyle(color: Colors.grey[600], fontSize: 11),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLevelCards() {
    final l10n = AppLocalizations.of(context)!;

    final levels = [
      {'level': 'A1', 'name': l10n.levelA1, 'color': Colors.green},
      {'level': 'A2', 'name': l10n.levelA2, 'color': Colors.lightGreen},
      {'level': 'B1', 'name': l10n.levelB1, 'color': Colors.orange},
      {'level': 'B2', 'name': l10n.levelB2, 'color': Colors.deepOrange},
      {'level': 'C1', 'name': l10n.levelC1, 'color': Colors.red},
    ];

    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: levels.length,
        itemBuilder: (context, index) {
          final level = levels[index];
          return Container(
            width: 90,
            margin: const EdgeInsets.only(right: 10),
            child: Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          WordListScreen(level: level['level'] as String),
                    ),
                  );
                },
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: LinearGradient(
                      colors: [
                        (level['color'] as Color).withAlpha(
                          (0.8 * 255).toInt(),
                        ),
                        (level['color'] as Color),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 6.0,
                      vertical: 8.0,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          level['level'] as String,
                          style: const TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          level['name'] as String,
                          style: const TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void _showLevelSelectionDialog({required bool isQuiz}) {
    final l10n = AppLocalizations.of(context)!;

    final levels = [
      {'level': 'A1', 'name': l10n.levelA1},
      {'level': 'A2', 'name': l10n.levelA2},
      {'level': 'B1', 'name': l10n.levelB1},
      {'level': 'B2', 'name': l10n.levelB2},
      {'level': 'C1', 'name': l10n.levelC1},
    ];

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(isQuiz ? l10n.quiz : l10n.flashcard),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.list_alt),
                title: Text(l10n.allWords),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => isQuiz
                          ? const QuizScreen()
                          : const WordListScreen(
                              isFlashcardMode: true,
                            ),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.favorite, color: Colors.red),
                title: Text(l10n.favorites),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => isQuiz
                          ? const QuizScreen(favoritesOnly: true)
                          : const WordListScreen(
                              isFlashcardMode: true,
                              favoritesOnly: true,
                            ),
                    ),
                  );
                },
              ),
              const Divider(),
              // Level options
              ...levels.map(
                (level) => ListTile(
                  leading: CircleAvatar(
                    backgroundColor: _getLevelColor(
                      level['level'] as String,
                    ),
                    radius: 16,
                    child: Text(
                      level['level'] as String,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  title: Text('${level['level']} - ${level['name']}'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => isQuiz
                            ? QuizScreen(
                                level: level['level'] as String,
                              )
                            : WordListScreen(
                                isFlashcardMode: true,
                                level: level['level'] as String,
                              ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(l10n.cancel),
          ),
        ],
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
        return Colors.grey;
    }
  }
}
