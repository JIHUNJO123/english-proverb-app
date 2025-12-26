import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:english_proverb_app/l10n/generated/app_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../db/database_helper.dart';
import '../models/word.dart';
import '../services/translation_service.dart';
import '../services/ad_service.dart';
import 'word_detail_screen.dart';

class WordListScreen extends StatefulWidget {
  final String? level;
  final bool isFlashcardMode;
  final bool favoritesOnly;

  const WordListScreen({
    super.key,
    this.level,
    this.isFlashcardMode = false,
    this.favoritesOnly = false,
  });

  @override
  State<WordListScreen> createState() => _WordListScreenState();
}

class _WordListScreenState extends State<WordListScreen> {
  List<Word> _words = [];
  bool _isLoading = true;
  int _currentFlashcardIndex = 0;
  late PageController _pageController;
  String _sortOrder = 'alphabetical'; // 'alphabetical' or 'random'
  int _flashcardViewCount = 0; // 플래시카드 전면 광고용 카운터
  double _wordFontSize = 1.0; // 단어 폰트 크기 배율
  bool _showNativeLanguage = true; // 모국어/영어 전환 (기본: 모국어)

  // 리스트 모드용 스크롤 컨트롤러
  final ScrollController _listScrollController = ScrollController();
  int _lastListPosition = 0;

  // 번역 관련
  Map<int, String> _translatedDefinitions = {};
  Map<int, String> _translatedExamples = {};

  // 위치 저장 키 생성
  String get _positionKey =>
      'word_list_position_${widget.level ?? 'all'}_${widget.isFlashcardMode ? 'flashcard' : 'list'}';

  void _restoreScrollPosition() {
    if (widget.isFlashcardMode) return;
    final prefs = SharedPreferences.getInstance();
    prefs.then((p) {
      final position = p.getInt(_positionKey) ?? 0;
      if (position > 0 && mounted) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (_listScrollController.hasClients && mounted) {
            _listScrollController.jumpTo(position * 80.0);
          }
        });
      }
    });
  }

  Future<void> _saveScrollPosition() async {
    if (_listScrollController.hasClients) {
      final prefs = await SharedPreferences.getInstance();
      final itemIndex = (_listScrollController.offset / 80.0).round();
      await prefs.setInt(_positionKey, itemIndex);
    }
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _loadWords();
    _loadUnlockStatus();
    AdService.instance.loadRewardedAd();
    _loadFontSize();
  }

  Future<void> _loadFontSize() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _wordFontSize = prefs.getDouble('wordFontSize') ?? 1.0;
    });
  }

  Future<void> _loadUnlockStatus() async {
    await AdService.instance.loadUnlockStatus();
    if (mounted) setState(() {});
  }

  // 잠긴 단어인지 확인 (짝수 인덱스 = 2, 4, 6...)
  bool _isWordLocked(int index) {
    // 홀수 단어는 무료, 짝수 단어(2, 4, 6...)는 잠김
    if (index % 2 == 0) return false; // 0, 2, 4... -> 1번, 3번, 5번 단어 (무료)
    return !AdService.instance.isUnlocked; // 1, 3, 5... -> 2번, 4번, 6번 단어 (잠김)
  }

  // 광고 시청 다이얼로그 표시
  void _showUnlockDialog() {
    final l10n = AppLocalizations.of(context)!;
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Row(
          children: [
            const Icon(Icons.lock, color: Colors.orange),
            const SizedBox(width: 8),
            Expanded(child: Text(l10n.lockedContent)),
          ],
        ),
        content: Text(l10n.watchAdToUnlock),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(l10n.cancel),
          ),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.pop(context);
              _watchAdToUnlock();
            },
            icon: const Icon(Icons.play_circle_outline),
            label: Text(l10n.watchAd),
          ),
        ],
      ),
    );
  }

  // 광고 시청하여 잠금 해제
  Future<void> _watchAdToUnlock() async {
    final l10n = AppLocalizations.of(context)!;
    final adService = AdService.instance;

    if (!adService.isAdReady) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(l10n.adNotReady)),
      );
      adService.loadRewardedAd();
      return;
    }

    await adService.showRewardedAd(
      onRewarded: () async {
        await adService.unlockUntilMidnight();
        if (mounted) {
          setState(() {});
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(l10n.unlockedUntilMidnight)),
          );
        }
      },
    );
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

    // 저장된 위치 불러오기
    final prefs = await SharedPreferences.getInstance();
    final savedPosition = prefs.getInt(_positionKey) ?? 0;

    setState(() {
      _words = words;
      _isLoading = false;
    });

    // 저장된 위치로 이동
    if (words.isNotEmpty) {
      final position = savedPosition.clamp(0, words.length - 1);
      if (widget.isFlashcardMode) {
        _currentFlashcardIndex = position;
        // PageController 초기 페이지 설정
        _pageController = PageController(initialPage: position);
        setState(() {});
      } else {
        _lastListPosition = position;
        // 정확한 스크롤 오프셋으로 복원
        _restoreScrollPosition();
      }
    }
  }

  Future<void> _savePosition(int position) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_positionKey, position);
  }

  Future<void> _loadTranslationForWord(Word word) async {
    if (_translatedDefinitions.containsKey(word.id)) return;

    final translationService = TranslationService.instance;
    await translationService.init();

    if (!translationService.needsTranslation) return;
    if (!mounted) return;

    // 내장 번역만 사용 (API 호출 없음)
    final langCode = translationService.currentLanguage;
    final embeddedDef = word.getEmbeddedTranslation(langCode, 'definition');
    final embeddedEx = word.getEmbeddedTranslation(langCode, 'example');

    if (!mounted) return;
    if (embeddedDef != null && embeddedDef.isNotEmpty) {
      setState(() {
        _translatedDefinitions[word.id] = embeddedDef;
        if (embeddedEx != null && embeddedEx.isNotEmpty) {
          _translatedExamples[word.id] = embeddedEx;
        }
      });
    }
  }

  void _sortWords(String order) {
    // 현재 보고 있는 단어 저장
    final currentWord =
        _words.isNotEmpty ? _words[_currentFlashcardIndex] : null;

    setState(() {
      _sortOrder = order;
      if (order == 'alphabetical') {
        _words.sort(
          (a, b) => a.word.toLowerCase().compareTo(b.word.toLowerCase()),
        );
      } else if (order == 'random') {
        _words.shuffle();
      }

      // 현재 보고 있던 단어의 새 위치 찾기
      if (currentWord != null) {
        final newIndex = _words.indexWhere((w) => w.id == currentWord.id);
        _currentFlashcardIndex = newIndex >= 0 ? newIndex : 0;
      } else {
        _currentFlashcardIndex = 0;
      }

      if (_pageController.hasClients) {
        _pageController.jumpToPage(_currentFlashcardIndex);
      }
    });
  }

  String _getAlphabeticalText() {
    // 간단한 언어별 텍스트 반환
    final locale = Localizations.localeOf(context).languageCode;
    switch (locale) {
      case 'ko':
        return '알파벳순';
      case 'ja':
        return 'アルファベット順';
      case 'zh':
        return '字母顺序';
      default:
        return 'Alphabetical';
    }
  }

  String _getRandomText() {
    final locale = Localizations.localeOf(context).languageCode;
    switch (locale) {
      case 'ko':
        return '랜덤';
      case 'ja':
        return 'ランダム';
      case 'zh':
        return '随机';
      default:
        return 'Random';
    }
  }

  Future<void> _toggleFavorite(Word word) async {
    await DatabaseHelper.instance.toggleFavorite(word.id, !word.isFavorite);
    setState(() {
      word.isFavorite = !word.isFavorite;
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          word.isFavorite
              ? AppLocalizations.of(context)!.addedToFavorites
              : AppLocalizations.of(context)!.removedFromFavorites,
        ),
        duration: const Duration(seconds: 1),
      ),
    );
  }

  // 플래시카드 모드에서 뒤로가기
  Future<void> _handleBackPress() async {
    if (mounted) {
      Navigator.of(context).pop();
    }
  }

  @override
  void dispose() {
    if (!widget.isFlashcardMode) {
      _saveScrollPosition();
    }
    _pageController.dispose();
    _listScrollController.dispose();
    // 종료 시 현재 위치 저장
    if (widget.isFlashcardMode) {
      _savePosition(_currentFlashcardIndex);
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    String title = l10n.allWords;
    if (widget.favoritesOnly) {
      title = '${l10n.favorites} ${l10n.flashcard}';
    } else if (widget.level != null) {
      title = l10n.levelWords(widget.level!);
    } else if (widget.isFlashcardMode) {
      title = l10n.flashcard;
    }

    return Scaffold(
      appBar: AppBar(
        leading:
            widget.isFlashcardMode
                ? IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: _handleBackPress,
                )
                : null,
        title: Text(title),
        centerTitle: true,
        actions: [
          // 영어/모국어 전환 버튼
          if (_words.isNotEmpty && TranslationService.instance.needsTranslation)
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
          // 정렬 옵션
          if (_words.isNotEmpty)
            PopupMenuButton<String>(
              icon: const Icon(Icons.sort),
              tooltip: '정렬',
              onSelected: _sortWords,
              itemBuilder:
                  (context) => [
                    PopupMenuItem(
                      value: 'alphabetical',
                      child: Row(
                        children: [
                          Icon(
                            Icons.sort_by_alpha,
                            color:
                                _sortOrder == 'alphabetical'
                                    ? Theme.of(context).primaryColor
                                    : null,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            _getAlphabeticalText(),
                            style: TextStyle(
                              fontWeight:
                                  _sortOrder == 'alphabetical'
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                    PopupMenuItem(
                      value: 'random',
                      child: Row(
                        children: [
                          Icon(
                            Icons.shuffle,
                            color:
                                _sortOrder == 'random'
                                    ? Theme.of(context).primaryColor
                                    : null,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            _getRandomText(),
                            style: TextStyle(
                              fontWeight:
                                  _sortOrder == 'random'
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
            ),
          if (!widget.isFlashcardMode && _words.isNotEmpty)
            IconButton(
              icon: const Icon(Icons.style),
              tooltip: l10n.flashcardMode,
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) => WordListScreen(
                          level: widget.level,
                          isFlashcardMode: true,
                        ),
                  ),
                );
              },
            ),
          if (widget.isFlashcardMode && _words.isNotEmpty)
            IconButton(
              icon: const Icon(Icons.list),
              tooltip: l10n.listMode,
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) => WordListScreen(
                          level: widget.level,
                          isFlashcardMode: false,
                        ),
                  ),
                );
              },
            ),
        ],
      ),
      body: Column(
        children: [
          // 잠금 해제 안내 배너 (잠긴 상태일 때만 표시)
          if (!AdService.instance.isUnlocked)
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.orange.shade400,
                    Colors.deepOrange.shade400,
                  ],
                ),
              ),
              child: InkWell(
                onTap: _showUnlockDialog,
                child: Row(
                  children: [
                    const Icon(Icons.lock_open, color: Colors.white, size: 20),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        l10n.watchAdToUnlock,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.play_circle_filled, 
                            color: Colors.deepOrange.shade400, size: 16),
                          const SizedBox(width: 4),
                          Text(
                            l10n.watchAd,
                            style: TextStyle(
                              color: Colors.deepOrange.shade400,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          Expanded(
            child:
                _isLoading
                    ? const Center(child: CircularProgressIndicator())
                    : _words.isEmpty
                    ? Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.inbox, size: 64, color: Colors.grey),
                          const SizedBox(height: 16),
                          Text(
                            l10n.noWords,
                            style: const TextStyle(
                              fontSize: 18,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    )
                    : widget.isFlashcardMode
                    ? _buildFlashcardMode()
                    : _buildListMode(),
          ),
        ],
      ),
    );
  }

  Widget _buildListMode() {
    return NotificationListener<ScrollNotification>(
      onNotification: (scrollNotification) {
        if (scrollNotification is ScrollEndNotification) {
          // 스크롤이 끝났을 때 현재 보이는 아이템 인덱스 저장
          final scrollPosition = _listScrollController.position.pixels;
          final itemIndex = (scrollPosition / 80.0).round().clamp(
            0,
            _words.length - 1,
          );
          _savePosition(itemIndex);
        }
        return false;
      },
      child: ListView.builder(
        controller: _listScrollController,
        padding: const EdgeInsets.all(8),
        itemCount: _words.length,
        itemBuilder: (context, index) {
          final word = _words[index];
          final isLocked = _isWordLocked(index);

          // 리스트 모드에서도 번역 로드 (잠기지 않은 경우에만)
          if (!isLocked) {
            _loadTranslationForWord(word);
          }
          final translatedDef = _translatedDefinitions[word.id];

          // 잠긴 상태일 때 definition 마스킹
          final definition =
              isLocked
                  ? '🔒 ••••••••••••••'
                  : (_showNativeLanguage
                      ? (translatedDef ?? '')
                      : word.definition);

          // 잠긴 상태일 때 proverb 텍스트 마스킹
          final displayWord =
              isLocked
                  ? '${word.word.substring(0, (word.word.length * 0.3).clamp(3, 10).toInt())}...'
                  : word.word;

          return Card(
            margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              title: Row(
                children: [
                  if (isLocked) ...[
                    Icon(Icons.lock, size: 18, color: Colors.grey[500]),
                    const SizedBox(width: 6),
                  ],
                  Expanded(
                    child: Text(
                      displayWord,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: isLocked ? Colors.grey : null,
                      ),
                    ),
                  ),
                ],
              ),
              subtitle: Text(
                definition,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 13,
                  color: isLocked ? Colors.grey[400] : Colors.grey[600],
                ),
              ),
              trailing: IconButton(
                icon: Icon(
                  word.isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: word.isFavorite ? Colors.red : null,
                ),
                onPressed: () => _toggleFavorite(word),
              ),
              onTap: () async {
                // 잠긴 단어면 광고 다이얼로그 표시
                if (isLocked) {
                  _showUnlockDialog();
                  return;
                }
                // 클릭한 위치 저장
                _savePosition(index);
                final result = await Navigator.push<int>(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) => WordDetailScreen(
                          word: word,
                          wordList: List<Word>.from(_words),
                          currentIndex: index,
                        ),
                  ),
                );
                if (result != null && result != index && mounted) {
                  _listScrollController.animateTo(
                    result * 80.0,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                }
                _loadWords();
              },
            ),
          );
        },
      ),
    );
  }

  Widget _buildFlashcardMode() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            '${_currentFlashcardIndex + 1} / ${_words.length}',
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: PageView.builder(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentFlashcardIndex = index;
              });
              // 위치 저장
              _savePosition(index);

              // 카드 뷰 카운트
              _flashcardViewCount++;
            },
            itemCount: _words.length,
            itemBuilder: (context, index) {
              final word = _words[index];
              return Padding(
                padding: const EdgeInsets.all(24.0),
                child: FlipCard(
                  direction: FlipDirection.HORIZONTAL,
                  front: _buildFlashcardFront(word),
                  back: _buildFlashcardBack(word),
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Previous 버튼
              Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  color:
                      _currentFlashcardIndex > 0
                          ? Theme.of(context).colorScheme.primary
                          : Colors.grey.shade300,
                  shape: BoxShape.circle,
                  boxShadow:
                      _currentFlashcardIndex > 0
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
                      _currentFlashcardIndex > 0
                          ? () {
                            _pageController.previousPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          }
                          : null,
                  icon: Icon(
                    Icons.arrow_back_rounded,
                    color:
                        _currentFlashcardIndex > 0 ? Colors.white : Colors.grey,
                  ),
                  iconSize: 28,
                ),
              ),
              const SizedBox(width: 48),
              // Next 버튼
              Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  color:
                      _currentFlashcardIndex < _words.length - 1
                          ? Theme.of(context).colorScheme.primary
                          : Colors.grey.shade300,
                  shape: BoxShape.circle,
                  boxShadow:
                      _currentFlashcardIndex < _words.length - 1
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
                      _currentFlashcardIndex < _words.length - 1
                          ? () {
                            _pageController.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          }
                          : null,
                  icon: Icon(
                    Icons.arrow_forward_rounded,
                    color:
                        _currentFlashcardIndex < _words.length - 1
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
    );
  }

  Widget _buildFlashcardFront(Word word) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            colors: [
              Theme.of(context).primaryColor,
              Theme.of(context).primaryColor.withAlpha((0.7 * 255).toInt()),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                word.word,
                style: TextStyle(
                  fontSize: 36 * _wordFontSize,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              // partOfSpeech badge removed for proverbs
              const SizedBox(height: 24),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: Colors.white.withAlpha((0.2 * 255).toInt()),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  word.level,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Text(
                AppLocalizations.of(context)!.tapToFlip,
                style: TextStyle(
                  color: Colors.white.withAlpha((0.6 * 255).toInt()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFlashcardBack(Word word) {
    // 번역 로드
    _loadTranslationForWord(word);
    final translatedDef = _translatedDefinitions[word.id];
    final translatedEx = _translatedExamples[word.id];

    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // 단어 (크고 눈에 띄게)
              Text(
                word.word,
                style: TextStyle(
                  fontSize: 32 * _wordFontSize,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              // 의미 (크고 눈에 띄게)
              Text(
                translatedDef ?? '',
                style: TextStyle(
                  fontSize: 22 * _wordFontSize,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                  height: 1.3,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              // 예문 섹션 (덜 눈에 띄게)
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey[50],
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey[200]!),
                ),
                child: Column(
                  children: [
                    Text(
                      word.example,
                      style: TextStyle(
                        fontSize: 14,
                        fontStyle: FontStyle.italic,
                        color: Colors.grey[600],
                      ),
                      textAlign: TextAlign.center,
                    ),
                    if (translatedEx != null) ...[
                      const SizedBox(height: 8),
                      Text(
                        translatedEx,
                        style: TextStyle(fontSize: 13, color: Colors.grey[500]),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ],
                ),
              ),
              const SizedBox(height: 24),
              IconButton(
                onPressed: () => _toggleFavorite(word),
                icon: Icon(
                  word.isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: word.isFavorite ? Colors.red : Colors.grey,
                  size: 32,
                ),
              ),
            ],
          ),
        ),
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
}
