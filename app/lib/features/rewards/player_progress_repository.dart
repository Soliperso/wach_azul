import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/services/preferences_service.dart';
import '../../shared/models/player_progress.dart';

final playerProgressRepositoryProvider = Provider<PlayerProgressRepository>((
  ref,
) {
  return PlayerProgressRepository(ref.watch(sharedPreferencesProvider.future));
});

class PlayerProgressRepository {
  const PlayerProgressRepository(this._preferences);

  static const _progressKey = 'player_progress';

  final Future<SharedPreferences> _preferences;

  Future<PlayerProgress> loadProgress() async {
    final preferences = await _preferences;
    final encodedProgress = preferences.getString(_progressKey);

    if (encodedProgress == null) {
      return const PlayerProgress.empty();
    }

    final decodedProgress = jsonDecode(encodedProgress) as Map<String, Object?>;
    return PlayerProgress.fromJson(decodedProgress);
  }

  Future<void> saveProgress(PlayerProgress progress) async {
    final preferences = await _preferences;
    await preferences.setString(_progressKey, jsonEncode(progress.toJson()));
  }
}
