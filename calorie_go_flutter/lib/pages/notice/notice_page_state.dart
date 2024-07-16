import 'package:calorie_go_client/calorie_go_client.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notice_page_state.freezed.dart';

@freezed
class NoticePageState with _$NoticePageState {
  const factory NoticePageState({
    @Default([]) List<Notification> notifications,
  }) = _NoticePageState;
}
