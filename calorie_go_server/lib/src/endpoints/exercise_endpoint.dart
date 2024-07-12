import 'package:calorie_go_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class ExerciseEndpoint extends Endpoint {
  Future<Exercise?> startExercise(Session session) async {
    if (!await session.isUserSignedIn) {
      return null;
    }

    final au = await session.authenticated;
    if (au == null) {
      return null;
    }

    final ex = await Exercise.db.insert(
      session,
      [
        Exercise(
          userId: au.userId,
          startedAt: DateTime.now(),
          totalSteps: 0,
        ),
      ],
    );

    return ex.firstOrNull;
  }

  Future<Exercise?> finishExercise(
    Session session, {
    required int exerciseId,
    required int stepCount,
  }) async {
    if (!await session.isUserSignedIn) {
      return null;
    }

    final au = await session.authenticated;
    if (au == null) {
      return null;
    }

    final exercises = await Exercise.db.find(
      session,
      where: (p0) => p0.userId.equals(au.userId) & p0.id.equals(exerciseId),
      limit: 1,
      orderBy: (p0) => p0.startedAt,
    );
    final current = exercises.firstOrNull;
    if (current == null) {
      return null;
    }

    current.totalSteps = stepCount;
    final result = await Exercise.db.updateRow(session, current);


    // 運動が終わるたびに、ユーザーの運動履歴を更新する
    final currentUserExerciseHist = await UserExerciseHist.db.find(
      session,
      where: (p0) => p0.userId.equals(au.userId),
    );
    final hist = currentUserExerciseHist.firstOrNull;
    if (hist == null) return null;
    UserExerciseHist.db.updateRow(
      session,
      UserExerciseHist(
        userId: au.userId,
        steps: hist.steps + stepCount,
        updatedAt: DateTime.now(),
      ),
    );

    return result;
  }

  Future<List<Exercise>> myExerciseHist(Session session) async {
    if (!await session.isUserSignedIn) {
      return [];
    }

    final au = await session.authenticated;
    if (au == null) {
      return [];
    }

    final hist = await Exercise.db.find(
      session,
      where: (p0) => p0.userId.equals(au.userId),
    );

    return hist;
  }
}
