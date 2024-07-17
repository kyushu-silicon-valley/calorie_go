import 'package:calorie_go_flutter/pages/exercise/exercise_page_state.dart';
import 'package:health/health.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'exercise_page_controller.g.dart';

@riverpod
class ExercisePageController extends _$ExercisePageController {
  @override
  ExercisePageState build() {
    return ExercisePageState(health: Health());
  }

  Future<void> startExercise() async {
    state = state.copyWith(
      startDateTime: DateTime.now(),
      state: ExerciseState.started,
    );
  }

  Future<void> endExercise() async {
    if (state.startDateTime == null) {
      throw Exception('運動を開始していません');
    }
    state = state.copyWith(
      endDateTime: DateTime.now(),
      state: ExerciseState.finished,
    );
  }
}
