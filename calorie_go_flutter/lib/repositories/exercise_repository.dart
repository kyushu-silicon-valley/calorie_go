import 'package:calorie_go_client/calorie_go_client.dart';
import 'package:calorie_go_flutter/constants.dart';

class ExerciseRepository {
  /// 運動を開始するときの処理
  Future<Exercise?> startExercise() async {
    try {
      final ex = await client.exercise.startExercise();
      return ex;
    } catch (e) {
      throw Exception(e);
    }
  }

  /// 運動を終了するときの処理
  Future<Exercise?> endExercise({
    required int exerciseId,
    required int totalStep,
  }) async {
    try {
      final ex = await client.exercise.finishExercise(
        exerciseId: exerciseId,
        stepCount: totalStep,
      );
      return ex;
    } catch (e) {
      throw Exception(e);
    }
  }
}
