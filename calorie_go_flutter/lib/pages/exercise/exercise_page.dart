import 'package:calorie_go_flutter/components/bottom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ExercisePage extends HookConsumerWidget {
  const ExercisePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercise'),
      ),
      body: const Center(
        child: Text('Exercise Page'),
      ),
      bottomNavigationBar: const AppBottomNavigationBar(),
    );
  }
}
