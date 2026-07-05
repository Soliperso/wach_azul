import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/models.dart';

final foxProvider = Provider<Fox>((ref) {
  return const Fox(
    id: 'azul',
    name: 'Azul',
    role: 'Companion guide',
    defaultLine: 'Azul! Let us learn a family word together.',
  );
});

final wordsProvider = Provider<List<Word>>((ref) {
  return const [
    Word(
      id: 'yemma',
      darja: 'Yemma',
      kabyle: 'Yemma',
      english: 'Mother',
      pronunciation: 'yem-ma',
      familyPrompt:
          'Say Yemma with care. It is a family word that carries warmth.',
    ),
  ];
});

final collectiblesProvider = Provider<List<Collectible>>((ref) {
  return const [
    Collectible(
      id: 'woven-heart',
      name: 'Woven Heart',
      symbol: '♡',
      description:
          'A small village charm for the love carried in family words.',
    ),
  ];
});

final rewardsProvider = Provider<List<Reward>>((ref) {
  return const [
    Reward(
      id: 'yemma-reward',
      name: 'Yemma Reward',
      collectibleId: 'woven-heart',
      xp: 15,
    ),
  ];
});

final lessonsProvider = Provider<List<Lesson>>((ref) {
  return const [
    Lesson(
      id: 'yemma',
      title: 'Yemma',
      worldId: 'family-village',
      wordIds: ['yemma'],
      rewardId: 'yemma-reward',
    ),
  ];
});

final worldsProvider = Provider<List<World>>((ref) {
  return const [
    World(
      id: 'family-village',
      name: 'Family Village',
      description: 'A warm first world for family words and village sounds.',
      lessonIds: ['yemma'],
      isUnlocked: true,
    ),
  ];
});

final adventuresProvider = Provider<List<Adventure>>((ref) {
  return const [
    Adventure(
      id: 'm1-family-loop',
      title: 'Family Village First Adventure',
      worldIds: ['family-village'],
    ),
  ];
});
