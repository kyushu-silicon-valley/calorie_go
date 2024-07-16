import 'package:calorie_go_flutter/constants.dart';
import 'package:serverpod_auth_client/serverpod_auth_client.dart';

class UserRepository {
  /// サインアウト
  Future<void> signOut() async {
    // サインアウト処理
    await sessionManager.signOut();
  }

  /// 初回サインイン時の処理
  Future<void> firstSignInProcess() async {
    // サインイン処理
    try {
      await client.user.firstSignInProcess();
    } catch (e) {
      throw Exception(e);
    }
  }

  /// ニックネームの変更
  Future<UserInfo?> changeNickname(String nickname) async {
    // ニックネーム変更処理
    try {
      final user = await client.user.changeUserNickname(nickname: nickname);
      return user;
    } catch (e) {
      throw Exception(e);
    }
  }

  /// すでにサインアップ済みかどうか
  Future<bool> hasSignedUp() async {
    // サインアップ済みかどうかの判定
    try {
      final flag = await client.user.hasSignedUp();
      return flag;
    } catch (e) {
      throw Exception(e);
    }
  }
}
