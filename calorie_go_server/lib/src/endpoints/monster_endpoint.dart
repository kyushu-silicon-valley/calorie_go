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

  Future<Monster?> changeCurrentMonster(
      Session session, int newMonsterId) async {
    if (!await session.isUserSignedIn) {
      return null;
    }

    final au = await session.authenticated;
    if (au == null) {
      return null;
    }
    print('New monster id: $newMonsterId');
    final newMonsterImage = await MonsterImage.db.find(
      session,
      where: (p0) => p0.id.equals(newMonsterId),
    );
    print(newMonsterImage);
    if (newMonsterImage.isEmpty) {
      return null;
    }

    final monsters = await Monster.db.find(
      session,
      where: (p0) => p0.userId.equals(au.userId),
    );
    print(monsters);
    if (monsters.isEmpty) {
      return null;
    }

    final currentMonster = monsters.first;

    final updatedMonster = await Monster.db.update(session, [
      Monster(
        id: currentMonster.id,
        name: currentMonster.name,
        userId: currentMonster.userId,
        monsterImageIdId: newMonsterId,
      ),
    ]);
    print('Updated monster: $updatedMonster');
    if (updatedMonster.isEmpty) {
      return null;
    }

    return updatedMonster.first;
  }
}
