import 'package:calorie_go_flutter/components/bottom_app_bar.dart';
import 'package:calorie_go_flutter/pages/ranking/ranking_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RankingPage extends HookConsumerWidget {
  const RankingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(rankingPageControllerProvider);

    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        title: const Text('ランキング'),
      ),
      body: Center(
        child: SizedBox(
          width: 400,
          height: 700,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Center(
                child: Container(
                  color: Colors.yellow,
                  width: 300,
                  height: 80,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '今日のランキング',
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  LimitedBox(
                    maxHeight: 500,
                    child: ListView.builder(
                      itemCount: state.ranking.length,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                              color: index == 0
                                  ? Colors.yellow
                                  : index == 1
                                      ? Colors.grey
                                      : index == 2
                                          ? const Color.fromARGB(
                                              255, 182, 149, 5)
                                          : const Color.fromARGB(
                                              255, 244, 236, 169),
                              border: Border.all(color: Colors.yellowAccent),
                              borderRadius: index == 0
                                  ? const BorderRadius.vertical(
                                      top: Radius.circular(20),
                                    )
                                  : index + 1 == state.ranking.length
                                      ? const BorderRadius.vertical(
                                          bottom: Radius.circular(20),
                                        )
                                      : null),
                          child: SizedBox(
                            height: 80,
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  if (index == 0) ...[
                                    Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Text((index + 1).toString()),
                                        const Icon(Icons.star_border_outlined,
                                            size: 50),
                                      ],
                                    ),
                                  ] else if (index == 1) ...[
                                    Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Text((index + 1).toString()),
                                        const Icon(Icons.star_border_outlined,
                                            size: 50),
                                      ],
                                    ),
                                  ] else if (index == 2) ...[
                                    Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Text((index + 1).toString()),
                                        const Icon(Icons.star_border_outlined,
                                            size: 50),
                                      ],
                                    ),
                                  ] else ...[
                                    Text((index + 1).toString()),
                                  ],
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 50),
                                    child: Text(
                                      state.ranking[index],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  // TODO: バックエンドの工数的に実装を後回しにする
                  // if (state.myRanking != null)
                  //   Container(
                  //     height: 100,
                  //     decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(20),
                  //       color: const Color.fromARGB(255, 248, 227, 30),
                  //     ),
                  //     child: Row(
                  //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //       children: [
                  //         Column(
                  //           mainAxisAlignment: MainAxisAlignment.center,
                  //           children: [
                  //             const Text('自分のランキング'),
                  //             Text('${state.myRanking!.steps}位'),
                  //           ],
                  //         ),
                  //         const VerticalDivider(),
                  //         Column(
                  //           mainAxisAlignment: MainAxisAlignment.center,
                  //           children: [
                  //             const Text('自分の歩数'),
                  //             Text('${state.myRanking!.steps}歩'),
                  //           ],
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const AppBottomNavigationBar(),
    );
  }
}
