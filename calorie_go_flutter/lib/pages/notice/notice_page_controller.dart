import 'package:calorie_go_flutter/pages/notice/notice_page_state.dart';
import 'package:calorie_go_flutter/repositories/notification_repository.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'notice_page_controller.g.dart';

@riverpod
class NoticePageController extends _$NoticePageController {
  @override
  NoticePageState build() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      getNotification();
    });

    // 初期状態を設定
    return const NoticePageState();
  }

  Future<void> getNotification() async {
    try {
      final result = await NotificationRepository().getNotification();
      state = state.copyWith(notifications: result ?? []);
    } catch (e) {
      throw Exception('$e');
    }
  }
}
