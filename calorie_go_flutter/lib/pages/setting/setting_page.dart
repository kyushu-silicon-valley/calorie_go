import 'package:calorie_go_flutter/components/bottom_app_bar.dart';
import 'package:calorie_go_flutter/pages/setting/setting_page_controller.dart';
import 'package:calorie_go_flutter/providers/theme_data_provider.dart';
import 'package:calorie_go_flutter/repositories/user_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SettingPage extends HookConsumerWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(settingPageControllerProvider);
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        title: const Text('設定'),
      ),
      body: RefreshIndicator(
        onRefresh: () async {},
        child: ListView(
          children: [
            const SizedBox(height: 32),
            _UserSettingCard(
              userName: state.userName,
              userIconUrl: state.userIconUrl,
              userTotalSteps: state.userTotalSteps,
            ),
            const SizedBox(height: 32),
            ListTile(
              leading: const Icon(Icons.lightbulb_sharp),
              title: const Text('テーマ'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () async {
                await showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(Icons.warning,
                              color: Colors.amber, size: 48),
                          const SizedBox(height: 16),
                          const Text('テーマカラーを変更しますか？',
                              style: TextStyle(fontSize: 16)),
                          TextButton(
                            child: const Text('変更する'),
                            onPressed: () {
                              ref
                                  .read(themeModeNotifierProvider.notifier)
                                  .toggleThemeMode();
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.abc),
              title: const Text('シリアルコード'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () async {},
            ),
            ListTile(
              leading: const Icon(Icons.question_answer),
              title: const Text('問い合わせ'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () async {},
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text('ログアウト'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () async {
                await showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('ログアウトしますか？'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('キャンセル'),
                      ),
                      TextButton(
                        onPressed: () async {
                          Navigator.of(context).pop();
                          await UserRepository().signOut();
                          if (!context.mounted) return;
                          context.go('/top');
                        },
                        child: const Text(
                          'ログアウト',
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.person_remove,
                color: Colors.red,
              ),
              title: const Text(
                '退会',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
              trailing: const Icon(
                Icons.chevron_right,
                color: Colors.red,
              ),
              onTap: () async {
                await showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('本当に退会しますか？'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('キャンセル'),
                      ),
                      TextButton(
                        onPressed: () async {
                          Navigator.of(context).pop();
                          await UserRepository().signOut();
                          if (!context.mounted) return;
                          context.go('/top');
                        },
                        child: const Text(
                          '退会',
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: const AppBottomNavigationBar(),
    );
  }
}

class _UserSettingCard extends HookConsumerWidget {
  const _UserSettingCard({
    required this.userName,
    required this.userIconUrl,
    required this.userTotalSteps,
  });

  final String userName;
  final String userIconUrl;
  final int userTotalSteps;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = ref.watch(themeModeNotifierProvider) == ThemeMode.dark;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: isDarkMode ? Colors.grey[800] : Colors.grey[100],
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                if (isDarkMode)
                  BoxShadow(
                    color: Colors.grey[900]!,
                    offset: const Offset(0, 2),
                    blurRadius: 5,
                  )
                else
                  BoxShadow(
                    color: Colors.grey[300]!,
                    offset: const Offset(0, 2),
                    blurRadius: 5,
                  ),
              ],
            ),
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(userIconUrl),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        userName,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text('現在の歩数 : $userTotalSteps'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 16,
            right: 16,
            child: IconButton(
              icon: const Icon(Icons.edit),
              onPressed: () {
                if (kDebugMode) {
                  print('Hello');
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
