import 'package:calorie_go_client/calorie_go_client.dart';
import 'package:calorie_go_flutter/constants.dart';

class MonsterRepository {
  /// 現在ログインしているユーザーのモンスターの情報を取得する
  Future<Monster?> getMonster() async {
    try {
      final monster = await client.monster.fetchCurrentUserMonster();
      return monster;
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<String> getUserMonsterImage() async {
    try {
      final imageUrl = await client.monster.fetchCurrentUserMonsterImage();
      return imageUrl;
    } catch (e) {
      throw Exception(e);
    }
  }
}
