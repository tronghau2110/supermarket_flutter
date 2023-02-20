import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification.freezed.dart';

part 'notification.g.dart';

@Freezed(equal: false)
class Notification with _$Notification {
  const factory Notification.success({
    required String message,
  }) = _Success;

  const factory Notification.failure({
    required String message,
  }) = _Failure;

  factory Notification.fromJson(Map<String, dynamic> json) =>
      _$NotificationFromJson(json);
}
