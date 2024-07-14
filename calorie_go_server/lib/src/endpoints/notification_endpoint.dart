import 'package:calorie_go_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class NotificationEndpoint extends Endpoint {
  Future<List<Notification>?> getNotification(Session session) async {
    if (!await session.isUserSignedIn) {
      return null;
    }

    final au = await session.authenticated;
    if (au == null) {
      return null;
    }

    final notifications = await Notification.db.find(session);
    return notifications;
  }
}
