import 'package:calorie_go_flutter/pages/sample/sample_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SamplePage extends HookConsumerWidget {
  const SamplePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(samplePageNotifierProvider);

    final textEditingController = useTextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('サンプルページの実装'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              controller: textEditingController,
              decoration: const InputDecoration(
                hintText: '名前を入力してください',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: Text(controller.resultMessage),
          ),
          if (controller.errorMessage != null)
            Container(
              padding: const EdgeInsets.all(16),
              child: Text(controller.errorMessage!),
            ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: ElevatedButton(
              onPressed: () {
                ref
                    .read(samplePageNotifierProvider.notifier)
                    .send(textEditingController.text);
              },
              child: const Text('サーバーに送信'),
            ),
          ),
        ],
      ),
    );
  }
}
