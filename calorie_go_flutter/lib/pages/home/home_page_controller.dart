import 'package:calorie_go_flutter/pages/home/home_page_state.dart';
import 'package:calorie_go_flutter/repositories/monster_repository.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_page_controller.g.dart';

@riverpod
class HomePageController extends _$HomePageController {
  @override
  HomePageState build() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      getMonster();
      setRandomMessage();
    });
    return const HomePageState();
  }

  Future<void> getMonster() async {
    try {
      state = state.copyWith(isLoading: true);
      final b64Image = await MonsterRepository().getUserMonsterImage();
      if (b64Image == '') {
        throw Exception('モンスターが見つかりませんでした');
      }
      state = state.copyWith(
        b64Image: b64Image,
      );
    } catch (e) {
      state = state.copyWith(errorMessage: '$e');
    } finally {
      state = state.copyWith(isLoading: false);
    }
  }

  // TODO: これはバックエンドで生成すべきだが、一旦mockで実装
  void setRandomMessage() {
    final List<String> messages = [
      '今日も頑張りましょう！',
      'お疲れ様です！',
      '今日も楽しい一日にしましょう！',
      'おはようございます！',
      'こんにちは！',
      'こんばんは！',
    ];
    final randomIndex = DateTime.now().millisecondsSinceEpoch % messages.length;
    state = state.copyWith(message: messages[randomIndex]);
  }
}
