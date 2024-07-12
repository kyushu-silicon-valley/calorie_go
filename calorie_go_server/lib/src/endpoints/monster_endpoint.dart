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
}
