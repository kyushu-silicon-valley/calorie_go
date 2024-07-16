
import 'package:calorie_go_flutter/repositories/user_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'calorie_go_user_provider.g.dart';

@riverpod
FutureOr<bool> hasSignedUp(AutoDisposeFutureProviderRef<bool> ref) async {
  try {
    final flag = await UserRepository().hasSignedUp();
    return flag;
  } catch (e) {
    throw Exception(e);
  }
}
