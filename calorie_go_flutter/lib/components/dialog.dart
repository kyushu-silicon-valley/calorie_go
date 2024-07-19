// import 'package:calorie_go_flutter/gen/assets.gen.dart';
// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

// class CustomDialog extends StatelessWidget {
//   final String partName;

//   const CustomDialog({super.key, required this.partName});

//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       backgroundColor: Colors.white,
//       surfaceTintColor: Colors.transparent,
//       content: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           const Text('どのようにカスタマイズしますか？'),
//           const SizedBox(height: 12),
//           Text('カスタマイズできる部品：$partName'),
//           SizedBox(
//             width: 250,
//             child: Align(
//               alignment: Alignment.centerLeft,
//               child: TextField(
//                 decoration: const InputDecoration(
//                   hintText: '例 : 麦わら帽子をモンスターの頭にかぶせる',
//                   border: OutlineInputBorder(),
//                   contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
//                 ),
//                 onChanged: (text) {
//                   // You can add some logic here if needed
//                 },
//               ),
//             ),
//           ),
//           ElevatedButton(
//             onPressed: () {
//               Navigator.of(context).pop();
//               context.go('/selectstyle');
//             },
//             child: const Text('決定'),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class SelectstyleDialog extends StatelessWidget {
//   const SelectstyleDialog({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       backgroundColor: Colors.white,
//       surfaceTintColor: Colors.transparent,
//       content: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           const Text(
//             'どっちに変更する？',
//             style: TextStyle(
//               fontSize: 25,
//               fontWeight: FontWeight.bold,
//             ),
//             textAlign: TextAlign.center,
//           ),
//           const SizedBox(height: 12),
//           Container(child: Assets.images.top.topLogo.image()),
//           Container(child: Assets.images.top.topLogo.image()),
//           ElevatedButton(
//             onPressed: () => context.go('/ticket'),
//             child: const Text('決定'),
//           ),
//         ],
//       ),
//     );
//   }
// }
