import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../shared/models/child_profile.dart';
import 'child_profile_repository.dart';

final childProfileControllerProvider =
    AsyncNotifierProvider<ChildProfileController, ChildProfile?>(
      ChildProfileController.new,
    );

class ChildProfileController extends AsyncNotifier<ChildProfile?> {
  @override
  Future<ChildProfile?> build() {
    return ref.watch(childProfileRepositoryProvider).loadProfile();
  }

  Future<void> saveProfile({
    required String name,
    required String avatar,
    required String languageName,
  }) async {
    final profile = ChildProfile(
      name: name.trim(),
      avatar: avatar,
      languageName: languageName,
    );

    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await ref.read(childProfileRepositoryProvider).saveProfile(profile);
      return profile;
    });
  }
}
