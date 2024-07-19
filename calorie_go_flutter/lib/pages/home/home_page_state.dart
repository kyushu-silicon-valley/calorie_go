import 'package:calorie_go_client/calorie_go_client.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'home_page_state.freezed.dart';

@freezed
class HomePageState with _$HomePageState {
  const factory HomePageState({
    @Default(AsyncValue<Monster>.loading()) AsyncValue<Monster> monster,
    String? errorMessage,
  }) = _HomePageState;
}
