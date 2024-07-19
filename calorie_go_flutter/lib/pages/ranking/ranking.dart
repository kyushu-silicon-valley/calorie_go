import 'package:calorie_go_flutter/components/bottom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// TODO: バックエンド連携時に削除
class RankingListData {
  final List<String> ranking = [
    'ニックネーム1',
    'ニックネーム2',
    'ニックネーム3',
    'ニックネーム4',
    'ニックネーム5',
    'ニックネーム6',
    'ニックネーム7',
    'ニックネーム8',
    'ニックネーム9',
    'ニックネーム10',
    'ニックネーム11',
  ];

  RankingListData();
}

class RankingPage extends HookConsumerWidget {
  const RankingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final RankingListData rankinglist = RankingListData();

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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'ウィークリーランキング',
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: const EdgeInsets.all(5),
                        margin: const EdgeInsets.all(5),
                        child: const Text('期間：⚪︎月⚪︎日〜⚪︎月⚪︎日'),
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
                    itemCount: rankinglist.ranking.length,
                    itemBuilder: (context, index){
                      return Container(
                        decoration: BoxDecoration(
                          color: index == 0 ? Colors.yellow 
                          : index == 1 ? Colors.grey
                            :index == 2 ? const Color.fromARGB(255, 182, 149, 5)
                              :const Color.fromARGB(255, 244, 236, 169),
                          border: Border.all(color: Colors.yellowAccent),
                          borderRadius: index == 0 ? const BorderRadius.vertical(top: Radius.circular(20)) 
                            : index + 1 == rankinglist.ranking.length ? const BorderRadius.vertical(bottom: Radius.circular(20))
                              : null
                        ),
                        child: SizedBox(
                          height: 80,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                if(index == 0) ...[
                                  Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Text((index + 1).toString()),
                                      const Icon(Icons.star_border_outlined, size: 50),
                                    ]
                                  ),
                
                                ]
                                else if(index == 1) ...[
                                  Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Text((index + 1).toString()),
                                      const Icon(Icons.star_border_outlined, size: 50),
                                    ]
                                  ),
                                ]
                                else if(index == 2) ...[
                                  Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Text((index + 1).toString()),
                                      const Icon(Icons.star_border_outlined, size: 50),
                                    ]
                                  ),
                                ]
                                else ...[
                                  Text((index + 1).toString()),
                                  
                                ],
                                Container(
                                    margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                                    child: Text(
                                      rankinglist.ranking[index],
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
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 248, 227, 30),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('自分のランキング'),
                          Text('⚪︎位'),
                        ]
                      ),
                      VerticalDivider(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('自分の歩数'),
                          Text('⚪︎歩'),
                        ]
                      ),

                    ],
                  ),
                ),
                ]
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const AppBottomNavigationBar(),
    );
  }
}
