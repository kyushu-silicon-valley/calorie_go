import 'package:serverpod/serverpod.dart';

import '../generated/protocol.dart';

class MonsterEndpoint extends Endpoint {
  Future<Monster?> fetchCurrentUserMonster(Session session) async {
    if (!await session.isUserSignedIn) {
      return null;
    }

    final au = await session.authenticated;
    if (au == null) {
      return null;
    }
    final monster = await Monster.db.find(
      session,
      where: (p0) => p0.userId.equals(au.userId),
    );

    return monster.firstOrNull;
  }

  Future<String> fetchCurrentUserMonsterImage(Session session) async {
    if (!await session.isUserSignedIn) {
      return '';
    }

    final au = await session.authenticated;
    if (au == null) {
      return '';
    }
    final monster = await Monster.db.find(
      session,
      where: (p0) => p0.userId.equals(au.userId),
    );
    final imageId = monster.firstOrNull?.monsterImageIdId;
    if (imageId == null) {
      return '';
    }

    final monsterImage = await MonsterImage.db.find(
      session,
      where: (p0) => p0.id.equals(imageId),
    );
    return monsterImage.firstOrNull?.imageUrl ?? '';
  }
}
