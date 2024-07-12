import 'package:serverpod/serverpod.dart';

import '../generated/user_exercise_hist.dart';

class UserExerciseHistEndpoint extends Endpoint {
  Future<void> create(Session session) async {
    if (!await session.isUserSignedIn) {
      return;
    }

    final au = await session.authenticated;
    if (au == null) {
      return;
    }

    await UserExerciseHist.db.insert(
      session,
      [
        UserExerciseHist(
          userId: au.userId,
          steps: 0,
          updatedAt: DateTime.now(),
        ),
      ],
    );
  }

  Future<UserExerciseHist> myExerciseHist(Session session) async {
    if (!await session.isUserSignedIn) {
      throw Exception('Not signed in');
    }

    final au = await session.authenticated;
    if (au == null) {
      throw Exception('Not signed in');
    }

    final hist = await UserExerciseHist.db.find(
      session,
      where: (p0) => p0.userId.equals(au.userId),
    );

    if (hist.isEmpty) {
      throw Exception('No exercise history found');
    }

    return hist.first;
  }
}
