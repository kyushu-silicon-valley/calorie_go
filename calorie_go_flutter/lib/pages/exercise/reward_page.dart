import 'package:calorie_go_flutter/components/bottom_app_bar.dart';
import 'package:calorie_go_flutter/providers/current_tab_index_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RewardPage extends HookConsumerWidget {
  const RewardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentBottomTabIndex = ref.watch(currentTabIndexNotifierProvider.notifier); // 現在のタブのインデックスを取得

    return Scaffold(
      appBar: AppBar(
        title: const Text('チケット獲得'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'おめでとうございます！',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              'チケットを獲得しました',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.go('/exercise');
                currentBottomTabIndex.change(1);
              },
              child: const Text('運動に戻る'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const AppBottomNavigationBar(),
    );
  }
}