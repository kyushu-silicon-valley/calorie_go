import 'dart:convert';

import 'package:calorie_go_flutter/pages/ticket/ticker_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';

final selectedImageProvider = StateProvider<int?>((ref) => null);

class CustomPage extends HookConsumerWidget {
  const CustomPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = GlobalKey<FormState>();
    final focusNode = FocusNode();
    final selectedImage = ref.watch(selectedImageProvider);
    final textEditingController = useTextEditingController();
    final isLoading = useState(false);

    final state = ref.watch(ticketPageControllerProvider);

    final hasGenerated = useState(false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('チケット'),
      ),
      body: hasGenerated.value
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'どっちに変更する？',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            ref.read(selectedImageProvider.notifier).state = 1;
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: selectedImage == 1
                                    ? Colors.blue
                                    : Colors.transparent,
                                width: 3,
                              ),
                            ),
                            child: FittedBox(
                              fit: BoxFit.contain,
                              child: Image.memory(
                                base64Decode(
                                    state.selectStylePageState.monsters?.img1 ??
                                        ''),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            ref.read(selectedImageProvider.notifier).state = 2;
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: selectedImage == 2
                                    ? Colors.blue
                                    : Colors.transparent,
                                width: 3,
                              ),
                            ),
                            child: FittedBox(
                              fit: BoxFit.contain,
                              child: Image.memory(
                                base64Decode(
                                    state.selectStylePageState.monsters?.img2 ??
                                        ''),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      minimumSize: const Size(150, 50),
                    ),
                    onPressed: selectedImage != null
                        ? () async {
                            final selectedMonsterId = selectedImage == 0
                                ? state.selectStylePageState.monsters!.img1Id
                                : state.selectStylePageState.monsters!.img2Id;
                            await ref
                                .read(ticketPageControllerProvider.notifier)
                                .changeCurrentMonster(selectedMonsterId);
                            if (!context.mounted) return;
                            context.go('/');
                          }
                        : null,
                    child: const Text(
                      '決定',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            )
          : Focus(
              focusNode: focusNode,
              child: GestureDetector(
                onTap: focusNode.requestFocus,
                child: Scaffold(
                  resizeToAvoidBottomInset: true,
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
                              Flexible(
                                // Flexibleウィジェットでラップ
                                child: Column(
                                  children: [
                                    const SizedBox(height: 30),
                                    const Text(
                                      'どのようにカスタマイズする？',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(height: 50),
                                    const Text(
                                      'モンスターに追加したい特徴を記入してください',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(height: 30),
                                    SizedBox(
                                      width: 280,
                                      height: 150,
                                      child: TextFormField(
                                        controller: textEditingController,
                                        maxLines: null,
                                        textAlignVertical:
                                            TextAlignVertical.top,
                                        expands: true,
                                        decoration: const InputDecoration(
                                          fillColor: Colors.white,
                                          filled: true,
                                          hintText: '例 : 麦わら帽子を頭にかぶせる',
                                          border: OutlineInputBorder(),
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 10, horizontal: 15),
                                        ),
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return '入力してください';
                                          } else if (value.isEmpty ||
                                              value.length > 100) {
                                            return '1文字以上100文字以内で入力してください';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                    const SizedBox(height: 30),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        foregroundColor: Colors.white,
                                        backgroundColor: Colors.black,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        minimumSize: const Size(150, 50),
                                      ),
                                      onPressed: isLoading.value
                                          ? null
                                          : () async {
                                              try {
                                                isLoading.value = true;
                                                if (formKey.currentState!
                                                    .validate()) {
                                                  await ref
                                                      .read(
                                                          ticketPageControllerProvider
                                                              .notifier)
                                                      .getGeneratedMonsters(
                                                        textEditingController
                                                            .text,
                                                      );
                                                  hasGenerated.value = true;
                                                }
                                              } catch (_) {
                                              } finally {
                                                isLoading.value = false;
                                              }
                                            },
                                      child: const Text(
                                        '決定',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
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
                ),
              ),
            ),
    );
  }
}
