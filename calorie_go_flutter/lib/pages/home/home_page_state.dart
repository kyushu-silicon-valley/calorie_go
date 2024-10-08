import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_page_state.freezed.dart';

@freezed
class HomePageState with _$HomePageState {
  const factory HomePageState({
    @Default('') String b64Image,
    @Default('') String message,
    @Default(true) bool isLoading,
    String? errorMessage,
  }) = _HomePageState;
}
