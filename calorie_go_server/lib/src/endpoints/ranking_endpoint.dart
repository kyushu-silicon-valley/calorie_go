import 'package:calorie_go_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';
import 'package:serverpod_auth_server/module.dart';

class RankingEndpoint extends Endpoint {
  Future<List<RankingItemResponse>?> getRanking(Session session) async {
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
      orderDescending: true,
    );
    var rankedUserNames = <String>[];
    var steps = <int>[];
    var rankedMonsterImages = <String>[];

    for (final r in ranking) {
      steps.add(r.steps);
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

      final monsters = await Monster.db.find(
        session,
        where: (p0) => p0.userId.equals(user.id),
      );

      final monsterImageId = monsters.firstOrNull?.monsterImageIdId;
      if (monsterImageId != null) {
        final monsterImages = await MonsterImage.db.find(
          session,
          where: (p0) => p0.id.equals(monsterImageId),
        );
        if (monsterImages.isNotEmpty) {
          final img = monsterImages.first;
          rankedMonsterImages.add(img.imageUrl);
        }
      }
    }
    var response = <RankingItemResponse>[];
    for (int i = 0; i < ranking.length; i++) {
      response.add(RankingItemResponse(
        userName: rankedUserNames[i],
        totalSteps: steps[i],
        monsterImageB64: rankedMonsterImages[i],
      ));
    }
    return response;
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
