// import 'dart:convert';

// import 'package:calorie_go_flutter/pages/ticket/ticker_page_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:calorie_go_flutter/components/bottom_app_bar.dart';
// import 'package:go_router/go_router.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// class SelectStylePage extends HookConsumerWidget {
//   const SelectStylePage({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final selectedImage = ref.watch(selectedImageProvider);
//     final state = ref.watch(ticketPageControllerProvider);

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('チケット'),
//       ),
//       backgroundColor: const Color(0xFFE7DDC3),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Text(
//               'どっちに変更する？',
//               style: TextStyle(
//                 fontSize: 25,
//                 fontWeight: FontWeight.bold,
//               ),
//               textAlign: TextAlign.center,
//             ),
//             const SizedBox(height: 12),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Expanded(
//                   child: GestureDetector(
//                     onTap: () {
//                       ref.read(selectedImageProvider.notifier).state = 1;
//                     },
//                     child: Container(
//                       decoration: BoxDecoration(
//                         border: Border.all(
//                           color: selectedImage == 1
//                               ? Colors.blue
//                               : Colors.transparent,
//                           width: 3,
//                         ),
//                       ),
//                       child: FittedBox(
//                         fit: BoxFit.contain,
//                         child: Image.memory(
//                           base64Decode(
//                               state.selectStylePageState.monsters?.img1 ?? ''),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(width: 20),
//                 Expanded(
//                   child: GestureDetector(
//                     onTap: () {
//                       ref.read(selectedImageProvider.notifier).state = 2;
//                     },
//                     child: Container(
//                       decoration: BoxDecoration(
//                         border: Border.all(
//                           color: selectedImage == 2
//                               ? Colors.blue
//                               : Colors.transparent,
//                           width: 3,
//                         ),
//                       ),
//                       child: FittedBox(
//                         fit: BoxFit.contain,
//                         child: Image.memory(
//                           base64Decode(
//                               state.selectStylePageState.monsters?.img2 ?? ''),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 foregroundColor: Colors.white,
//                 backgroundColor: Colors.black,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 minimumSize: const Size(150, 50),
//               ),
//               onPressed:
//                   selectedImage != null ? () => context.go('/ticket') : null,
//               child: const Text(
//                 '決定',
//                 style: TextStyle(
//                   fontSize: 15,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: const AppBottomNavigationBar(),
//     );
//   }
// }
