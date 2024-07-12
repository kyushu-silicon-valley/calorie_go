import 'package:calorie_go_flutter/components/bottom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NoticePage extends StatelessWidget {
  const NoticePage({super.key});
  // final int index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notice Page'),
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
