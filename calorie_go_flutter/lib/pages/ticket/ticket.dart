import 'package:calorie_go_flutter/components/bottom_app_bar.dart';
import 'package:calorie_go_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'dart:ui';

const kColorPrimary = Color(0xFF2E8376);
const kColorText = Color(0xFF9E9E9E);
const kColorTextDark = Color(0xFF212121);
const kColorFlightText = Color(0xFFE0E0E0);
const kColorFlightIcon = Color(0xFFC1B695);
const kColorTicketBorder = Color(0xFFE0E0E0);

class TicketPage extends HookConsumerWidget {
  const TicketPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('チケット'),
      ),
      body: const Column(
        children: [
          TicketList(),
        ],
      ),
      bottomNavigationBar: const AppBottomNavigationBar(),
    );
  }
}

class _TicketShapeBorder extends ShapeBorder {
  final double? width;
  final double? radius;

  const _TicketShapeBorder({
    required this.width,
    required this.radius,
  });

  @override
  EdgeInsetsGeometry get dimensions {
    return EdgeInsets.all(width!);
  }

  @override
  ShapeBorder scale(double t) {
    return _TicketShapeBorder(
      width: width! * t,
      radius: radius! * t,
    );
  }

  @override
  ShapeBorder? lerpFrom(ShapeBorder? a, double t) {
    if (a is _TicketShapeBorder) {
      return _TicketShapeBorder(
        width: lerpDouble(a.width, width, t),
        radius: lerpDouble(a.radius, radius, t),
      );
    }
    return super.lerpFrom(a, t);
  }

  @override
  ShapeBorder? lerpTo(ShapeBorder? b, double t) {
    if (b is _TicketShapeBorder) {
      return _TicketShapeBorder(
        width: lerpDouble(width, b.width, t),
        radius: lerpDouble(radius, b.radius, t),
      );
    }
    return super.lerpTo(b, t);
  }

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    return getOuterPath(
      rect.deflate(width!),
      textDirection: textDirection,
    );
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    final r = radius!;
    final rs = radius! / 2; // 区切り部分の半径
    final w = rect.size.width; // 全体の横幅
    final h = rect.size.height; // 全体の縦幅
    final wl = w / 3; // ロゴ部分の横幅
    return Path()
      ..addPath(
        Path()
          ..moveTo(r, 0)
          ..lineTo(wl - rs, 0) // →
          ..arcToPoint(
            Offset(wl + rs, 0),
            radius: Radius.circular(rs),
            clockwise: false,
          )
          ..lineTo(w - r, 0) // →
          ..arcToPoint(Offset(w, r), radius: Radius.circular(r))
          ..lineTo(w, h - rs) // ↓
          ..arcToPoint(Offset(w - r, h), radius: Radius.circular(r))
          ..lineTo(wl + rs, h) // ←
          ..arcToPoint(
            Offset(wl - rs, h),
            radius: Radius.circular(rs),
            clockwise: false,
          )
          ..lineTo(r, h) // ←
          ..arcToPoint(Offset(0, h - r), radius: Radius.circular(r))
          ..lineTo(0, r) // ↑
          ..arcToPoint(Offset(r, 0), radius: Radius.circular(r)),
        Offset(rect.left, rect.top),
      );
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = width!
      ..color = kColorTicketBorder;
    canvas.drawPath(
      getOuterPath(
        rect.deflate(width! / 2.0),
        textDirection: textDirection,
      ),
      paint,
    );
  }
}

class _Ticket extends StatelessWidget {
  final Widget image;

  const _Ticket({
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final result = await showDialog<bool>(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('確認'),
            content: const Text('本当にこのチケットを使用しますか？'),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: const Text('はい'),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: const Text('いいえ'),
              ),
            ],
          ),
        );
        if (result == true) {
          context.go('/custom');
        }
      },
      child: Container(
        width: double.infinity,
        height: 128,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: kColorTicketBorder,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              spreadRadius: 2,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.all(24),
                child: image,
              ),
            ),
            Container(
              width: 1,
              height: double.infinity,
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              color: kColorTicketBorder,
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Table(
                  children: const [
                    TableRow(
                      children: [
                        Text(
                          'カスタマイズ券',
                          style: TextStyle(
                            color: Color(0xFF00008B),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



class TicketList extends StatelessWidget {
  const TicketList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(
              top: 24,
              bottom: 8,
              left: 16,
              right: 16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'チケット一覧',
                  style: TextStyle(
                    color: kColorTextDark,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(Icons.filter_list, color: kColorText),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: Column(
                  children: [
                    _Ticket(
                      image: Assets.images.ticket.clothes.image(),
                    ),
                    const SizedBox(height: 8),
                    _Ticket(
                      image: Assets.images.ticket.hat.image(),
                    ),
                    const SizedBox(height: 8),
                    _Ticket(
                      image: Assets.images.ticket.shoes.image(),
                    ),
                    const SizedBox(height: 8),
                    _Ticket(
                      image: Assets.images.ticket.beard.image(),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}