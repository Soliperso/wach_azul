import '../../shared/models/collectible_reward.dart';
import '../../shared/models/lesson_word.dart';

const firstLessonWord = LessonWord(
  id: 'azul',
  darja: 'Azul',
  kabyle: 'Azul',
  english: 'Hello',
  pronunciation: 'ah-zool',
  familyPrompt: 'Say Azul to someone at home and listen for their smile.',
);

const firstCollectibleReward = CollectibleReward(
  id: 'village-star',
  name: 'Village Star',
  symbol: '*',
  description:
      'A bright reminder that your family words belong in the village.',
  xp: 10,
);

const firstChallengeOptions = ['Azul', 'Afak', 'Tanemmirt'];
