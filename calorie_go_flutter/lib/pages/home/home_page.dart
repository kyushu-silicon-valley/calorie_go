import 'package:calorie_go_flutter/components/bottom_app_bar.dart';
import 'package:calorie_go_flutter/pages/home/home_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homePageControllerProvider);
    final monster = state.monster;
    
    // return monster.when(data: (data){
    //   return Text(data.monsterImageId.imageUrl);
    // }, error: (err, stackTrace){
    //   return Text("error");
    // }, loading: (){
    //   return Text("loading");
    // });
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('ホーム'),
        elevation: 10,
        actions: [
          IconButton(
              onPressed: () {
                context.push('/notice');
              },
              icon: const Icon(Icons.notifications)),
        ],
      ),
      body: Center(
          child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(40.0),
            // child: Assets.images.sample.sampleImage.image(),
            child: monster.when(data: (data){
              return Image.network(data.monsterImageId?.imageUrl ?? '');
            }, error: (err, stackTrace){
              return const Text("error");
            }, loading: (){
              return const Text("loading");
            }),
          ),
          const SizedBox(
            height: 30,
          ),
          FractionallySizedBox(
            widthFactor: 0.8,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                '吹き出し',
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      )),
      bottomNavigationBar: const AppBottomNavigationBar(),
    );
  }
}
