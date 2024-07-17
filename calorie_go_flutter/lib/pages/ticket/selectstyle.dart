import 'package:calorie_go_flutter/components/dialog.dart';
import 'package:flutter/material.dart';
import 'package:calorie_go_flutter/components/bottom_app_bar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SelectstylePage extends HookConsumerWidget {
  const SelectstylePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SelectstylePage'),
      ),
      body: const Center(
        child: Column(
          children: [
            SelectstyleDialog()
          ],
        ),
      ),
      bottomNavigationBar: const AppBottomNavigationBar(),
    );
  }
}