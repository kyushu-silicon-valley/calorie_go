import 'package:freezed_annotation/freezed_annotation.dart';

part 'setting_page_state.freezed.dart';

@freezed
class SettingPageState with _$SettingPageState {
  const factory SettingPageState({
    required String userName,
    required String userIconUrl,
    required int userTotalSteps,
  }) = _SettingPageState;
}
