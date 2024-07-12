import 'package:calorie_go_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';
import 'package:serverpod_auth_server/module.dart';

class RankingEndpoint extends Endpoint {
  Future<List<UserInfo>?> getRanking(Session session) async {
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

    var users = <UserInfo>[];
    for (final r in ranking) {
      final user = await Users.findUserByUserId(session, r.userId);
      if (user != null) {
        users.add(user);
      }
    }

    return users;
  }

  Future<int> myRanking(Session session) async {
    if (!await session.isUserSignedIn) {
      return 0;
    }

    final au = await session.authenticated;
    if (au == null) {
      return 0;
    }

    final ranking = await UserExerciseHist.db.find(
      session,
      orderBy: (p0) => p0.steps,
    );

    var rank = 1;
    for (final r in ranking) {
      if (r.userId == au.userId) {
        return rank;
      }
      rank++;
    }

    return 0;
  }
}
