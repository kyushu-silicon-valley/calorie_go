import 'package:calorie_go_flutter/providers/current_tab_index_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppBottomNavigationBar extends HookConsumerWidget {
  const AppBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(currentTabIndexNotifierProvider.notifier);
    return BottomNavigationBar(
      onTap: (index) {
        notifier.change(index);
        context.go(notifier.getPath());
      },
      currentIndex: ref.watch(currentTabIndexNotifierProvider),
      selectedItemColor: Colors.indigo,
      unselectedItemColor: Colors.grey,
      unselectedLabelStyle: const TextStyle(color: Colors.grey),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'ホーム',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.directions_run),
          label: '運動',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.emoji_events),
          label: 'ランキング',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.confirmation_number_outlined),
          label: 'チケット',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: '設定',
        ),
      ],
    );
  }
}
