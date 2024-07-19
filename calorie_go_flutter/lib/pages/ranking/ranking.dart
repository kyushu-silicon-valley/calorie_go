import 'package:calorie_go_flutter/components/bottom_app_bar.dart';
import 'package:calorie_go_flutter/pages/ranking/ranking_page_controller.dart';
import 'package:calorie_go_flutter/providers/theme_data_provider.dart';
import 'package:calorie_go_flutter/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RankingTileMock {
  final String iconPath;
  final String name;
  final int steps;

  RankingTileMock(this.iconPath, this.name, this.steps);
}

final rankingTileMock = [
  RankingTileMock('https://picsum.photos/200/300', 'ヨシムラ', 10000),
  RankingTileMock('https://picsum.photos/201/301', 'オトタケ', 9000),
  RankingTileMock('https://picsum.photos/202/302', 'タナベ', 8000),
  RankingTileMock('https://picsum.photos/203/303', 'タカハシ', 7000),
  RankingTileMock('https://picsum.photos/204/304', 'ナカムラ', 6000),
  RankingTileMock('https://picsum.photos/205/305', 'ツルタ', 5000),
  RankingTileMock('https://picsum.photos/206/306', 'ナカニシ', 4000),
  RankingTileMock('https://picsum.photos/207/307', 'サトウ', 3000),
  RankingTileMock('https://picsum.photos/208/308', 'ウケゾノ', 2000),
  RankingTileMock('https://picsum.photos/209/309', 'オノ', 1000),
  RankingTileMock('https://picsum.photos/210/310', 'ヒロシゲ', 900),
];

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
          print('refreshing...');
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
              for (final mockData in rankingTileMock)
                _MockRanking(
                  mockData: mockData,
                  index: rankingTileMock.indexOf(mockData),
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
    required this.mockData,
    required this.index,
  });

  final RankingTileMock mockData;
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
            backgroundImage: NetworkImage(mockData.iconPath),
          ),
        ],
      ),
      title: Text(mockData.name),
      subtitle: Text('${mockData.steps}歩'),
    );
  }
}
