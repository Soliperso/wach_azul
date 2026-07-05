import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/services/preferences_service.dart';
import '../../shared/models/child_profile.dart';

final childProfileRepositoryProvider = Provider<ChildProfileRepository>((ref) {
  return ChildProfileRepository(ref.watch(sharedPreferencesProvider.future));
});

class ChildProfileRepository {
  const ChildProfileRepository(this._preferences);

  static const _profileKey = 'child_profile';

  final Future<SharedPreferences> _preferences;

  Future<ChildProfile?> loadProfile() async {
    final preferences = await _preferences;
    final encodedProfile = preferences.getString(_profileKey);

    if (encodedProfile == null) {
      return null;
    }

    final decodedProfile = jsonDecode(encodedProfile) as Map<String, Object?>;
    return ChildProfile.fromJson(decodedProfile);
  }

  Future<void> saveProfile(ChildProfile profile) async {
    final preferences = await _preferences;
    await preferences.setString(_profileKey, jsonEncode(profile.toJson()));
  }
}
