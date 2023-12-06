import 'package:app/features/user/data/user_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/user_database.dart';
import '../domain/user.dart';

part 'users_controller.g.dart';

@riverpod
class UsersController extends _$UsersController {
  bool mounted = true;

  @override
  FutureOr<void> build() {
    ref.onDispose(() => mounted = false);
    state = const AsyncData(null);
  }

  Future<void> updateUser({
    required User user,
    required VoidCallback onSuccess,
  }) async {
    state = const AsyncLoading();
    UserDatabase userDatabase = ref.watch(userDatabaseProvider);
    final newState = await AsyncValue.guard(() => userDatabase.setUser(user));
    if (mounted) {
      state = newState;
    }
    // Weird. Can't use "if (state.hasValue)" below.
    if (!state.hasError) {
      onSuccess();
    }
  }
}
