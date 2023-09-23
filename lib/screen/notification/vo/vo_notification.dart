import 'notification_type.dart';

class TtossNotification {
  final NotificationType type;
  final String description;
  final DateTime time;
  final bool isRead;

  TtossNotification(
    this.type,
    this.description,
    this.time, {
    this.isRead = false,
  });
}
