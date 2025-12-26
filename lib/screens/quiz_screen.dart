import 'package:flutter/material.dart';
import 'package:english_proverb_app/l10n/generated/app_localizations.dart';
import '../db/database_helper.dart';
import '../models/word.dart';
import '../services/translation_service.dart';

enum QuizType { wordToMeaning, meaningToWord }

class QuizScreen extends StatefulWidget {
  final String? level;
  final bool favoritesOnly;

  const QuizScreen({super.key, this.level, this.favoritesOnly = false});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<Word> _words = [];
  bool _isLoading = true;
  int _currentIndex = 0;
  int _score = 0;
  int _totalAnswered = 0;
  bool _answered = false;
  int? _selectedAnswer;
  List<Word> _currentOptions = [];
  QuizType _quizType = QuizType.wordToMeaning;

  // 번역 관련
  Map<int, String> _translatedDefinitions = {};

  @override
  void initState() {
    super.initState();
    _loadWords();
  }

  Future<void> _loadWords() async {
    List<Word> words;
    if (widget.favoritesOnly) {
      words = await DatabaseHelper.instance.getFavorites();
    } else if (widget.level != null) {
      words = await DatabaseHelper.instance.getWordsByLevel(widget.level!);
    } else {
      words = await DatabaseHelper.instance.getAllWords();
    }
    words.shuffle();

    // 퀴즈용으로 20개씩만 사용 (너무 많으면 지루함)
    if (words.length > 20) {
      words = words.sublist(0, 20);
    }

    setState(() {
      _words = words;
      _isLoading = false;
    });

    if (_words.isNotEmpty) {
      _generateOptions();
    }
  }

  void _loadTranslationsForOptions() {
    final translationService = TranslationService.instance;

    if (!translationService.needsTranslation) return;
    if (!mounted) return;

    final langCode = translationService.currentLanguage;
    for (final word in _currentOptions) {
      if (!_translatedDefinitions.containsKey(word.id)) {
        // 내장 번역만 사용 (API 호출 없음)
        final embeddedDef = word.getEmbeddedTranslation(langCode, 'definition');
        if (embeddedDef != null && embeddedDef.isNotEmpty) {
          _translatedDefinitions[word.id] = embeddedDef;
        }
      }
    }

    if (mounted) setState(() {});
  }

  void _generateOptions() {
    if (_words.isEmpty || _currentIndex >= _words.length) return;

    final correctWord = _words[_currentIndex];
    final options = <Word>[correctWord];

    // 오답 3개 생성
    final otherWords = _words.where((w) => w.id != correctWord.id).toList();
    otherWords.shuffle();

    for (int i = 0; i < 3 && i < otherWords.length; i++) {
      options.add(otherWords[i]);
    }

    options.shuffle();

    setState(() {
      _currentOptions = options;
      _answered = false;
      _selectedAnswer = null;
    });

    _loadTranslationsForOptions();
  }

  void _checkAnswer(int index) {
    if (_answered) return;

    final correctWord = _words[_currentIndex];
    final selectedWord = _currentOptions[index];
    final isCorrect = selectedWord.id == correctWord.id;

    setState(() {
      _answered = true;
      _selectedAnswer = index;
      _totalAnswered++;
      if (isCorrect) {
        _score++;
      }
    });
  }

  void _nextQuestion() {
    if (_currentIndex < _words.length - 1) {
      setState(() {
        _currentIndex++;
      });
      _generateOptions();
    } else {
      _showResultDialog();
    }
  }

  void _showResultDialog() {
    final l10n = AppLocalizations.of(context)!;
    final percentage =
        _totalAnswered > 0 ? (_score / _totalAnswered * 100).round() : 0;

    showDialog(
      context: context,
      barrierDismissible: false,
      builder:
          (context) => AlertDialog(
            title: Text(l10n.quizComplete),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '$_score / $_totalAnswered',
                  style: const TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  l10n.correctAnswers(percentage),
                  style: TextStyle(
                    fontSize: 24,
                    color:
                        percentage >= 70
                            ? Colors.green
                            : percentage >= 40
                            ? Colors.orange
                            : Colors.red,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  _getResultMessage(l10n, percentage),
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
                child: Text(l10n.exit),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  _restartQuiz();
                },
                child: Text(l10n.tryAgain),
              ),
            ],
          ),
    );
  }

  String _getResultMessage(AppLocalizations l10n, int percentage) {
    if (percentage >= 90) return l10n.excellent;
    if (percentage >= 70) return l10n.greatJob;
    if (percentage >= 50) return l10n.goodStart;
    return l10n.keepPracticing;
  }

  void _restartQuiz() {
    // 새로운 20개 세트를 위해 전체 단어를 다시 로드
    _loadWords();
    setState(() {
      _currentIndex = 0;
      _score = 0;
      _totalAnswered = 0;
      _answered = false;
      _selectedAnswer = null;
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.favoritesOnly
              ? '${l10n.favorites} ${l10n.quiz}'
              : widget.level != null
              ? l10n.quizWithLevel(widget.level!)
              : l10n.wordQuiz,
        ),
        centerTitle: true,
        actions: [
          // 퀴즈 타입 전환
          IconButton(
            icon: Icon(
              _quizType == QuizType.wordToMeaning ? Icons.translate : Icons.abc,
            ),
            tooltip:
                _quizType == QuizType.wordToMeaning
                    ? l10n.meaningToWordMode
                    : l10n.wordToMeaningMode,
            onPressed: () {
              setState(() {
                _quizType =
                    _quizType == QuizType.wordToMeaning
                        ? QuizType.meaningToWord
                        : QuizType.wordToMeaning;
              });
              _generateOptions();
            },
          ),
        ],
      ),
      body:
          _isLoading
              ? const Center(child: CircularProgressIndicator())
              : _words.isEmpty
              ? Center(child: Text(l10n.noWords))
              : _buildQuizContent(),
    );
  }

  Widget _buildQuizContent() {
    final l10n = AppLocalizations.of(context)!;
    if (_currentIndex >= _words.length) {
      return Center(child: Text(l10n.quizCompleteMessage));
    }

    final currentWord = _words[_currentIndex];

    return Column(
      children: [
        // 진행률 & 점수
        Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    l10n.questionProgress(_currentIndex + 1, _words.length),
                    style: const TextStyle(fontSize: 16),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.green[100],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      '$_score',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.green[800],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              LinearProgressIndicator(
                value: (_currentIndex + 1) / _words.length,
                backgroundColor: Colors.grey[300],
              ),
            ],
          ),
        ),

        // 문제 카드
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                // 문제
                Card(
                  elevation: 4,
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      children: [
                        if (_quizType == QuizType.wordToMeaning) ...[
                          // 단어 → 뜻 맞추기
                          Text(
                            currentWord.word,
                            style: const TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 16),
                          Text(
                            l10n.whatIsTheMeaning,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[700],
                            ),
                          ),
                        ] else ...[
                          // 뜻 → 단어 맞추기
                          Text(
                            _translatedDefinitions[currentWord.id] ??
                                currentWord.definition,
                            style: const TextStyle(fontSize: 18),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 16),
                          Text(
                            l10n.whichWordMatches,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[700],
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 16),

                // 보기
                Expanded(
                  child: ListView.builder(
                    itemCount: _currentOptions.length,
                    itemBuilder: (context, index) {
                      final option = _currentOptions[index];
                      final isCorrect = option.id == currentWord.id;
                      final isSelected = _selectedAnswer == index;

                      Color? cardColor;
                      if (_answered) {
                        if (isCorrect) {
                          cardColor = Colors.green[100];
                        } else if (isSelected) {
                          cardColor = Colors.red[100];
                        }
                      }

                      return Card(
                        color: cardColor,
                        margin: const EdgeInsets.only(bottom: 8),
                        child: InkWell(
                          onTap: () => _checkAnswer(index),
                          borderRadius: BorderRadius.circular(12),
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Row(
                              children: [
                                Container(
                                  width: 32,
                                  height: 32,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color:
                                        _answered
                                            ? (isCorrect
                                                ? Colors.green
                                                : (isSelected
                                                    ? Colors.red
                                                    : Colors.grey[300]))
                                            : Theme.of(context).primaryColor,
                                  ),
                                  child: Center(
                                    child:
                                        _answered
                                            ? Icon(
                                              isCorrect
                                                  ? Icons.check
                                                  : (isSelected
                                                      ? Icons.close
                                                      : null),
                                              color: Colors.white,
                                              size: 20,
                                            )
                                            : Text(
                                              '${index + 1}',
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                  ),
                                ),
                                const SizedBox(width: 16),
                                Expanded(
                                  child:
                                      _quizType == QuizType.wordToMeaning
                                          ? Text(
                                            _translatedDefinitions[option.id] ??
                                                option.definition,
                                            style: const TextStyle(
                                              fontSize: 16,
                                            ),
                                          )
                                          : Text(
                                            option.word,
                                            style: const TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),

                // 다음 버튼
                if (_answered)
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: _nextQuestion,
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                        ),
                        child: Text(
                          l10n.nextQuestion,
                          style: const TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
