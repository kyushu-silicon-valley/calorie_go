import 'dart:async';

import 'package:calorie_go_server/prompt.dart';
import 'package:calorie_go_server/src/generated/protocol.dart';
import 'package:dart_openai/dart_openai.dart';
import 'package:serverpod/serverpod.dart';
import 'package:serverpod_auth_server/module.dart';

class UserEndpoint extends Endpoint {
  /// 現在ログイン中のユーザー情報を取得する
  /// ログインしていない場合はnullを返す
  Future<UserInfo?> fetchCurrentUser(Session session) async {
    if (!await session.isUserSignedIn) {
      return null;
    }

    final au = await session.authenticated;
    if (au == null) {
      return null;
    }

    final u = await Users.findUserByUserId(session, au.userId);
    return u;
  }

  /// 現在のログイン中のユーザーのニックネームを変更するためのエンドポイント
  /// [nickname]に変更後のニックネームを指定する
  Future<UserInfo?> changeUserNickname(Session session,
      {required String nickname}) async {
    if (!await session.isUserSignedIn) {
      return null;
    }

    final au = await session.authenticated;
    if (au == null) {
      return null;
    }

    final u = await Users.changeUserName(
      session,
      au.userId,
      nickname,
    );
    final calorieGoUser = await CalorieGoUser.db.find(
      session,
      where: (p0) => p0.authId.equals(au.userId.toString()),
    );
    if (calorieGoUser.isEmpty) {
      await CalorieGoUser.db.insert(session, [
        CalorieGoUser(
          authId: 'DEPRECATED',
          authUserId: au.userId,
          nickname: nickname,
        ),
      ]);
    } else {
      await CalorieGoUser.db.update(session, [
        CalorieGoUser(
          id: calorieGoUser[0].id,
          authId: 'DEPRECATED',
          authUserId: au.userId,
          nickname: nickname,
        ),
      ]);
    }
    return u;
  }

  Future<void> firstSignInProcess(Session session) async {
    // 最初に登録した時の処理
    try {
      // モンスターをランダムに生成する
      if (!await session.isUserSignedIn) {
        return;
      }
      final au = await session.authenticated;
      if (au == null) {
        return;
      }

      // すでにモンスターが存在する場合は作成しない
      final existMonster = await Monster.db.find(
        session,
        where: (p0) => p0.userId.equals(au.userId),
      );
      if (existMonster.isNotEmpty) return;

      final feature = PromptGenerator().getFirstFeature();
      // 特徴をDBに保存する
      await UserMonsterFeature.db.insert(
        session,
        [
          UserMonsterFeature(
            userId: au.userId,
            feature: feature,
          ),
        ],
      );
      // モンスター画像を生成する
      final prompt = PromptGenerator().createPrompt([feature]);
      final generatedImage = await OpenAI.instance.image.create(
        model: 'dall-e-3',
        prompt: prompt,
        n: 1,
        size: OpenAIImageSize.size1024,
        responseFormat: OpenAIImageResponseFormat.b64Json,
      );
      final b64json = generatedImage.data[0].b64Json;
      if (b64json == null) return;

      // 画像を登録し、現在のユーザとリレーションする
      final monsterImages = await MonsterImage.db
          .insert(session, [MonsterImage(imageUrl: b64json)]);
      final monsterImage = monsterImages[0];
      if (monsterImage.id == null) {
        return;
      }
      await Monster.db.insert(
        session,
        [
          Monster(
            name: "MonsterName",
            monsterImageIdId: monsterImage.id!,
            userId: au.userId,
          ),
        ],
      );

      // 運動のレコードを作成し、合計歩数を0で初期化する
      await UserExerciseHist.db.insert(
        session,
        [
          UserExerciseHist(
            userId: au.userId,
            updatedAt: DateTime.now(),
            steps: 0,
          )
        ],
      );
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<bool> hasSignedUp(Session session) async {
    if (!await session.isUserSignedIn) {
      return false;
    }

    final au = await session.authenticated;
    if (au == null) {
      return false;
    }

    final user = await CalorieGoUser.db.find(
      session,
      where: (p0) => p0.authId.equals(au.userId.toString()),
    );
    return user.isNotEmpty;
  }
}
