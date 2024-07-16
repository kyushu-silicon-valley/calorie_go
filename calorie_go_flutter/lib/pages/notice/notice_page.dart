import 'package:calorie_go_flutter/components/bottom_app_bar.dart';
import 'package:calorie_go_flutter/pages/notice/notice_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NoticePage extends HookConsumerWidget {
  const NoticePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(noticePageControllerProvider);
    final notifier = ref.read(noticePageControllerProvider.notifier);
    return RefreshIndicator(
      onRefresh: () async {
        await notifier.getNotification();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('お知らせ'),
          elevation: 10,
        ),
        body: ListView.builder(
          itemCount: state.notifications.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(state.notifications[index].title),
              subtitle: Text(state.notifications[index].createdAt.toString()),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text(state.notifications[index].title),
                      content: Text(state.notifications[index].body),
                      actions: <Widget>[
                        Center(
                          child: TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            style: ButtonStyle(
                              foregroundColor:
                                  WidgetStateProperty.all(Colors.white),
                              backgroundColor:
                                  WidgetStateProperty.all(Colors.lightBlue),
                            ),
                            child: const Text('OK'),
                          ),
                        ),
                      ],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: const BorderSide(
                          color: Colors.lightBlue,
                          width: 2,
                        ),
                      ),
                    );
                  },
                );
              },
            );
          },
        ),
        bottomNavigationBar: const AppBottomNavigationBar(),
      ),
    );
  }
}
