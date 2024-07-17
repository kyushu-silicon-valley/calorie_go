import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:health/health.dart';

part 'exercise_page_state.freezed.dart';

enum ExerciseState {
  started, // 運動開始状態
  finished, // 運動終了状態
}

@freezed
class ExercisePageState with _$ExercisePageState {
  const factory ExercisePageState({
    required Health health,
    @Default(0) int step,
    DateTime? startDateTime,
    DateTime? endDateTime,
    @Default(ExerciseState.started) ExerciseState state,
  }) = _ExercisePageState;
}
