import 'package:calorie_go_flutter/components/bottom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.push('/sample');
          },
          child: const Text('Go to Sample Page'),
        ),
      ),
      bottomNavigationBar: const AppBottomNavigationBar(),
    );
  }
}
