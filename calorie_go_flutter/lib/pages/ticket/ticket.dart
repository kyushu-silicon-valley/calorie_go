import 'package:calorie_go_flutter/components/bottom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TicketPage extends HookConsumerWidget {
  const TicketPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ticket'),
      ),
      body: const Center(
        child: Text('Ticket Page'),
      ),
      bottomNavigationBar: const AppBottomNavigationBar(),
    );
  }
}
