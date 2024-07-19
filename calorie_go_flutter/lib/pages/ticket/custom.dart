import 'package:calorie_go_flutter/components/bottom_app_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';

class CustomPage extends HookConsumerWidget {
  const CustomPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final routerState = GoRouterState.of(context);
    final partName = routerState.extra as String?;
    final formKey = GlobalKey<FormState>();
    final focusNode = FocusNode();

    if (partName == null) {
      if (kDebugMode) {
        print('partName is null');
      }
      return Scaffold(
        appBar: AppBar(
          title: const Text('チケット'),
        ),
        body: const Center(
          child: Text('部品名が指定されていません。'),
        ),
        bottomNavigationBar: const AppBottomNavigationBar(),
      );
    }

    return Focus(
      focusNode: focusNode,
      child: GestureDetector(
      onTap: focusNode.requestFocus,
      child:Scaffold(
      resizeToAvoidBottomInset: true, 
      appBar: AppBar(
        title: const Text('チケット'),
      ),
      backgroundColor: const Color(0xFFE7DDC3),
      body: Padding(
  padding: const EdgeInsets.all(16.0),
  child: Center(
    child: SingleChildScrollView(
      child: Form(
        key: formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible( // Flexibleウィジェットでラップ
              child: Column(
          children: [
                const SizedBox(height: 30),
                const Text('どのようにカスタマイズする？', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                const SizedBox(height: 50),
                Text('カスタマイズできる部品：$partName', style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                const SizedBox(height: 30),
                SizedBox(
                  width: 280,
                  height: 150,
                  child: TextFormField(
                    maxLines: null,
                    textAlignVertical: TextAlignVertical.top,
                    expands: true,
                    decoration: const InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: '例 : 麦わら帽子を頭にかぶせる',
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return '入力してください';
                      } else if (value.isEmpty || value.length > 100) {
                        return '1文字以上100文字以内で入力してください';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minimumSize: const Size(150, 50),
                  ),
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      context.go('/selectstyle');
                    }
                  },
                  child: const Text('決定', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ),
          ],
        ),
        ),
        ),
        ),
      ),
      bottomNavigationBar: const AppBottomNavigationBar(),
    ),
    ),
    );
  }
}