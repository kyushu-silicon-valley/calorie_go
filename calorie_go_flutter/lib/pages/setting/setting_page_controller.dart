import 'package:calorie_go_flutter/pages/setting/setting_page_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'setting_page_controller.g.dart';

@riverpod
class SettingPageController extends _$SettingPageController {
  @override
  SettingPageState build() {
    return const SettingPageState(
      userName: 'ユーザー名',
      userIconUrl: 'https://picsum.photos/200',
      userTotalSteps: 1000,
    );
  }
}
