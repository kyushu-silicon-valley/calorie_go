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
    });
    return const HomePageState();
  }

  Future<void> getMonster() async {
    try {
      final monster = await MonsterRepository().getMonster();
      if(monster == null) throw Exception('モンスターが見つかりませんでした');
      state = state.copyWith(monster: AsyncValue.data(monster));
    } catch (e) {
      state = state.copyWith(errorMessage: '$e');
    }
  }
}
