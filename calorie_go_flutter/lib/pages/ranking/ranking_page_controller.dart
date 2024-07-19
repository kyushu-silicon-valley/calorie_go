import 'package:calorie_go_flutter/pages/ranking/ranking_page_state.dart';
import 'package:calorie_go_flutter/repositories/ranking_repository.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ranking_page_controller.g.dart';

@riverpod
class RankingPageController extends _$RankingPageController {
  @override
  RankingPageState build() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      fetchRanking();
      fetchMyRanking();
    });

    return const RankingPageState();
  }

  Future<void> fetchRanking() async {
    final ranking = await RankingRepository().getRanking();
    state = state.copyWith(ranking: ranking);
  }

  Future<void> fetchMyRanking() async {
    final myRanking = await RankingRepository().getMyRanking();
    state = state.copyWith(myRanking: myRanking);
  }
}
