// ignore: implementation_imports
import 'package:calorie_go_client/calorie_go_client.dart';
import 'package:calorie_go_flutter/constants.dart';
import 'package:flutter/foundation.dart';

class NotificationRepository {
  Future<List<Notification>?> getNotification() async {
    try {
      final response = await client.notification.getNotification();
      return response;
    } catch (e) {
      if (kDebugMode) {
        print('Error: $e');
      }
      return null;
    }
  }
}
