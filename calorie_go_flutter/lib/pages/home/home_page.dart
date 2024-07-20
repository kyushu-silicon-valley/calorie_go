import 'dart:convert';

import 'package:calorie_go_flutter/components/app_main_button.dart';
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

    return Scaffold(
      appBar: AppBar(
        title: const Text('ホーム'),
        elevation: 10,
        actions: [
          IconButton(
            onPressed: () {
              context.push('/notice');
            },
            icon: const Icon(Icons.notifications),
          ),
        ],
      ),
      body: state.isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 60,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40.0),
                      child: Image.memory(
                        base64Decode(state.b64Image),
                      ),
                    ),
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
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        state.message,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),
                  StartExerciseButton(
                    text: '運動を始める',
                    onPressed: () {
                      context.go('/exercise');
                    },
                  ),
                ],
              ),
            ),
      bottomNavigationBar: const AppBottomNavigationBar(),
    );
  }
}
