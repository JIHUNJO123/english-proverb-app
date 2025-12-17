import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:english_proverb_app/l10n/generated/app_localizations.dart';
import '../models/word.dart';
import '../services/translation_service.dart';

class FavoritesFlashcardScreen extends StatefulWidget {
  final List<Word> favorites;

  const FavoritesFlashcardScreen({super.key, required this.favorites});

  @override
  State<FavoritesFlashcardScreen> createState() =>
      _FavoritesFlashcardScreenState();
}

class _FavoritesFlashcardScreenState extends State<FavoritesFlashcardScreen>
    with SingleTickerProviderStateMixin {
  int _currentIndex = 0;
  bool _showAnswer = false;
  late List<Word> _shuffledFavorites;
  late AnimationController _flipController;
  late Animation<double> _flipAnimation;

  // 번역 관련
  String? _translatedDefinition;
  String? _translatedExample;
  bool _isLoadingTranslation = false;
  double _wordFontSize = 1.0; // 단어 폰트 크기 배율

  @override
  void initState() {
    super.initState();
    _shuffledFavorites = List.from(widget.favorites)..shuffle();
    _initAnimation();
    _loadTranslation();
    _loadFontSize();
  }

  Future<void> _loadFontSize() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _wordFontSize = prefs.getDouble('wordFontSize') ?? 1.0;
    });
  }

  void _initAnimation() {
    _flipController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _flipAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _flipController, curve: Curves.easeInOut),
    );
  }

  Future<void> _loadTranslation() async {
    if (_shuffledFavorites.isEmpty) return;

    final word = _shuffledFavorites[_currentIndex];
    final translationService = TranslationService.instance;
    await translationService.init();

    if (translationService.needsTranslation) {
      setState(() => _isLoadingTranslation = true);

      // 내장 번역 먼저 확인
      final langCode = translationService.currentLanguage;
      final embeddedDef = word.getEmbeddedTranslation(langCode, 'definition');
      final embeddedEx = word.getEmbeddedTranslation(langCode, 'example');

      String translatedDef;
      String translatedEx;

      if (embeddedDef != null && embeddedDef.isNotEmpty) {
        translatedDef = embeddedDef;
      } else {
        translatedDef = await translationService.translate(
          word.definition,
          word.id,
          'definition',
        );
      }

      if (embeddedEx != null && embeddedEx.isNotEmpty) {
        translatedEx = embeddedEx;
      } else {
        translatedEx = await translationService.translate(
          word.example,
          word.id,
          'example',
        );
      }

      setState(() {
        _translatedDefinition = translatedDef;
        _translatedExample = translatedEx;
        _isLoadingTranslation = false;
      });
    } else {
      setState(() {
        _translatedDefinition = null;
        _translatedExample = null;
      });
    }
  }

  void _flipCard() {
    if (_showAnswer) {
      _flipController.reverse();
    } else {
      _flipController.forward();
    }
    setState(() {
      _showAnswer = !_showAnswer;
    });
  }

  void _nextCard() {
    if (_currentIndex < _shuffledFavorites.length - 1) {
      setState(() {
        _currentIndex++;
        _showAnswer = false;
        _translatedDefinition = null;
        _translatedExample = null;
      });
      _flipController.reset();
      _loadTranslation();
    }
  }

  void _previousCard() {
    if (_currentIndex > 0) {
      setState(() {
        _currentIndex--;
        _showAnswer = false;
        _translatedDefinition = null;
        _translatedExample = null;
      });
      _flipController.reset();
      _loadTranslation();
    }
  }

  void _shuffleCards() {
    setState(() {
      _shuffledFavorites.shuffle();
      _currentIndex = 0;
      _showAnswer = false;
      _translatedDefinition = null;
      _translatedExample = null;
    });
    _flipController.reset();
    _loadTranslation();
  }

  @override
  void dispose() {
    _flipController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    if (_shuffledFavorites.isEmpty) {
      return Scaffold(
        appBar: AppBar(title: Text(l10n.flashcard)),
        body: Center(child: Text(l10n.noFavorites)),
      );
    }

    final word = _shuffledFavorites[_currentIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.flashcard),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.shuffle),
            tooltip: '섞기',
            onPressed: _shuffleCards,
          ),
        ],
      ),
      body: Column(
        children: [
          // 진행 표시
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  '${_currentIndex + 1} / ${_shuffledFavorites.length}',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                LinearProgressIndicator(
                  value: (_currentIndex + 1) / _shuffledFavorites.length,
                  backgroundColor: Colors.grey[300],
                ),
              ],
            ),
          ),

          // 플래시카드
          Expanded(
            child: GestureDetector(
              onTap: _flipCard,
              onHorizontalDragEnd: (details) {
                if (details.primaryVelocity != null) {
                  if (details.primaryVelocity! < -200) {
                    _nextCard();
                  } else if (details.primaryVelocity! > 200) {
                    _previousCard();
                  }
                }
              },
              child: AnimatedBuilder(
                animation: _flipAnimation,
                builder: (context, child) {
                  final angle = _flipAnimation.value * 3.14159;
                  final isBack = _flipAnimation.value > 0.5;

                  return Transform(
                    transform:
                        Matrix4.identity()
                          ..setEntry(3, 2, 0.001)
                          ..rotateY(angle),
                    alignment: Alignment.center,
                    child:
                        isBack
                            ? Transform(
                              transform: Matrix4.identity()..rotateY(3.14159),
                              alignment: Alignment.center,
                              child: _buildBackCard(word, l10n),
                            )
                            : _buildFrontCard(word, l10n),
                  );
                },
              ),
            ),
          ),

          // 네비게이션 버튼
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 16.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Previous 버튼
                Container(
                  width: 56,
                  height: 56,
                  decoration: BoxDecoration(
                    color:
                        _currentIndex > 0
                            ? Theme.of(context).colorScheme.primary
                            : Colors.grey.shade300,
                    shape: BoxShape.circle,
                    boxShadow:
                        _currentIndex > 0
                            ? [
                              BoxShadow(
                                color: Theme.of(
                                  context,
                                ).colorScheme.primary.withAlpha(100),
                                blurRadius: 8,
                                offset: const Offset(0, 2),
                              ),
                            ]
                            : null,
                  ),
                  child: IconButton(
                    onPressed: _currentIndex > 0 ? _previousCard : null,
                    icon: Icon(
                      Icons.arrow_back_rounded,
                      color: _currentIndex > 0 ? Colors.white : Colors.grey,
                    ),
                    iconSize: 28,
                  ),
                ),
                const SizedBox(width: 16),
                // Flip 버튼
                Container(
                  width: 56,
                  height: 56,
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.purple.withAlpha(100),
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: IconButton(
                    onPressed: _flipCard,
                    icon: Icon(
                      _showAnswer ? Icons.flip_to_front : Icons.flip_to_back,
                      color: Colors.white,
                    ),
                    iconSize: 28,
                  ),
                ),
                const SizedBox(width: 32),
                // Next 버튼
                Container(
                  width: 56,
                  height: 56,
                  decoration: BoxDecoration(
                    color:
                        _currentIndex < _shuffledFavorites.length - 1
                            ? Theme.of(context).colorScheme.primary
                            : Colors.grey.shade300,
                    shape: BoxShape.circle,
                    boxShadow:
                        _currentIndex < _shuffledFavorites.length - 1
                            ? [
                              BoxShadow(
                                color: Theme.of(
                                  context,
                                ).colorScheme.primary.withAlpha(100),
                                blurRadius: 8,
                                offset: const Offset(0, 2),
                              ),
                            ]
                            : null,
                  ),
                  child: IconButton(
                    onPressed:
                        _currentIndex < _shuffledFavorites.length - 1
                            ? _nextCard
                            : null,
                    icon: Icon(
                      Icons.arrow_forward_rounded,
                      color:
                          _currentIndex < _shuffledFavorites.length - 1
                              ? Colors.white
                              : Colors.grey,
                    ),
                    iconSize: 28,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFrontCard(Word word, AppLocalizations l10n) {
    // 앞면: 영어 단어 보여주기 (단어 보고 뜻 맞추기)
    return _buildCard(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            word.word,
            style: TextStyle(
              fontSize: 36 * _wordFontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: _getLevelColor(word.level).withAlpha(50),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              word.level,
              style: TextStyle(
                color: _getLevelColor(word.level),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 24),
          Text(
            l10n.tapToFlip,
            style: TextStyle(fontSize: 14, color: Colors.grey[500]),
          ),
        ],
      ),
    );
  }

  Widget _buildBackCard(Word word, AppLocalizations l10n) {
    // 뒷면: 번역된 뜻과 예문
    return _buildCard(
      color: Colors.blue[50],
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 단어 (크고 눈에 띄게)
            Text(
              word.word,
              style: TextStyle(
                fontSize: 28 * _wordFontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF1565C0),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            // 의미 (크고 눈에 띄게)
            if (_isLoadingTranslation)
              const CircularProgressIndicator()
            else ...[
              Text(
                _translatedDefinition ?? word.definition,
                style: TextStyle(
                  fontSize: 20 * _wordFontSize,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                  height: 1.3,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              // 예문 (덜 눈에 띄게)
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white.withAlpha(150),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    Text(
                      word.example,
                      style: TextStyle(
                        fontSize: 13,
                        fontStyle: FontStyle.italic,
                        color: Colors.grey[600],
                      ),
                      textAlign: TextAlign.center,
                    ),
                    if (_translatedExample != null) ...[
                      const SizedBox(height: 8),
                      Text(
                        _translatedExample!,
                        style: TextStyle(fontSize: 12, color: Colors.grey[500]),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildCard({required Widget child, Color? color}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: color ?? Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(25),
            blurRadius: 10,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Center(child: child),
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
}
