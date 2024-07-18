import 'package:calorie_go_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';
import 'package:serverpod_auth_server/module.dart';

class RankingEndpoint extends Endpoint {
  Future<List<String>?> getRanking(Session session) async {
    if (!await session.isUserSignedIn) {
      return null;
    }

    final au = await session.authenticated;
    if (au == null) {
      return null;
    }

    final ranking = await UserExerciseHist.db.find(
      session,
      orderBy: (p0) => p0.steps,
    );
    print(ranking);
    var rankedUserNames = <String>[];
    for (final r in ranking) {
      final user = await Users.findUserByUserId(session, r.userId);
      if (user == null) {
        continue;
      }
      final calorieGoUser = await CalorieGoUser.db.find(
        session,
        where: (p0) => p0.authUserId.equals(user.id),
      );
      if (calorieGoUser.isNotEmpty) {
        rankedUserNames.add(calorieGoUser.first.nickname);
      }
    }

    return rankedUserNames;
  }

  Future<UserExerciseHist?> myRanking(Session session) async {
    if (!await session.isUserSignedIn) {
      return null;
    }

    final au = await session.authenticated;
    if (au == null) {
      return null;
    }

    final ranking = await UserExerciseHist.db.find(
      session,
      where: (p0) => p0.userId.equals(au.userId),
    );

    if (ranking.isNotEmpty) {
      return ranking.first;
    } else {
      return null;
    }
  }
}
