import 'package:calorie_go_flutter/components/dialog.dart';
import 'package:flutter/material.dart';
import 'package:calorie_go_flutter/components/bottom_app_bar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CustomPage extends HookConsumerWidget {
  const CustomPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('チケット'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xFFE7DDC3),
        ),child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              CustomDialog()
              ],
          ),
        ),
      ),
      bottomNavigationBar: const AppBottomNavigationBar(),
    );
  }
}
