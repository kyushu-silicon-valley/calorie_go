import 'package:freezed_annotation/freezed_annotation.dart';

part 'sample_page_state.freezed.dart';

@freezed
class SamplePageState with _$SamplePageState {
  const factory SamplePageState({
    @Default('') String resultMessage,
    String? errorMessage,
  }) = _SamplePageState;
}
