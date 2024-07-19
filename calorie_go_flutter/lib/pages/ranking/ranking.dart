import 'package:calorie_go_flutter/components/bottom_app_bar.dart';
import 'package:calorie_go_flutter/pages/ranking/ranking_page_controller.dart';
import 'package:calorie_go_flutter/providers/theme_data_provider.dart';
import 'package:calorie_go_flutter/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'dart:convert';

class RankingTileData {
  final String iconPath;
  final String name;
  final int steps;

  RankingTileData(this.iconPath, this.name, this.steps);
}

class RankingPage extends HookConsumerWidget {
  const RankingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(rankingPageControllerProvider);

    //TODO: デモ用
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        title: const Text('ランキング'),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          await Future.delayed(const Duration(seconds: 1));
        },
        child: SingleChildScrollView(
          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: [
              // 自分のランキングを出す
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                child: Row(
                  children: [
                    const Icon(Icons.star),
                    const SizedBox(width: 10),
                    const Text('自分の歩数'),
                    const SizedBox(width: 10),
                    Text(
                      '${state.myRanking?.steps}歩',
                      style: const TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              for (int i = 0; i < state.ranking.length; i++)
                _MockRanking(
                  data: RankingTileData(
                    state.ranking[i].monsterImageB64,
                    state.ranking[i].userName,
                    state.ranking[i].totalSteps,
                  ),
                  index: i,
                ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const AppBottomNavigationBar(),
    );
  }
}

class _MockRanking extends HookConsumerWidget {
  const _MockRanking({
    required this.data,
    required this.index,
  });

  final RankingTileData data;
  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Color getRankColor(int rank, bool isDarkMode) {
      if (rank == 1) {
        return Colors.yellow[800]!;
      } else if (rank == 2) {
        return Colors.grey;
      } else if (rank == 3) {
        return const Color.fromARGB(255, 182, 149, 5);
      } else {
        return AppColors(isDarkMode: isDarkMode).textColor;
      }
    }

    final themeMode = ref.watch(themeModeNotifierProvider);

    return ListTile(
      leading: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            (index + 1).toString(),
            style: TextStyle(
              fontSize: 24,
              color: getRankColor(
                index + 1,
                themeMode == ThemeMode.dark,
              ),
            ),
          ),
          const SizedBox(width: 10),
          CircleAvatar(
            backgroundImage: MemoryImage(base64Decode(data.iconPath)),
          ),
        ],
      ),
      title: Text(data.name),
      subtitle: Text('${data.steps}歩'),
    );
  }
}
