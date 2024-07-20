import 'package:calorie_go_client/calorie_go_client.dart';
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

  Future<UserInfo?> editUserInfo(String nickname, Gender gender) async {
    // ユーザー情報の変更
    try {
      final user = await client.user.editUserInfo(
        nickname: nickname,
        gender: gender,
      );
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
