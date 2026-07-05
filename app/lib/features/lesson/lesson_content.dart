import '../../shared/models/collectible_reward.dart';
import '../../shared/models/lesson_word.dart';

const yemmaLessonWord = LessonWord(
  id: 'yemma',
  darja: 'Yemma',
  kabyle: 'Yemma',
  english: 'Mother',
  pronunciation: 'yem-ma',
  familyPrompt: 'Say Yemma with care. It is a family word that carries warmth.',
);

const yemmaCollectibleReward = CollectibleReward(
  id: 'woven-heart',
  name: 'Woven Heart',
  symbol: '♡',
  description: 'A small village charm for the love carried in family words.',
  xp: 15,
);

const yemmaChallengeOptions = ['Yemma', 'Baba', 'Azul'];
