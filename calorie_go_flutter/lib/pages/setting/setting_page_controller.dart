import 'package:hooks_riverpod/hooks_riverpod.dart';

enum Gender {
  man,
  woman,
  other,
}

final genderValueProvider = StateProvider<Enum>(
  (ref) {
    return Gender.other;
  }
);