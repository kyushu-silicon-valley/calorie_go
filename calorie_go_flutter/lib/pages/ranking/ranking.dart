import 'package:calorie_go_flutter/components/bottom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RankingPage extends HookConsumerWidget {
  const RankingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ranking'),
      ),
      body: const Center(
        child: Text('Ranking Page'),
      ),
      bottomNavigationBar: const AppBottomNavigationBar(),
    );
  }
}
