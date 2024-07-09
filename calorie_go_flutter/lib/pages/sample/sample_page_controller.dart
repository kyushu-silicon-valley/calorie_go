import 'package:calorie_go_flutter/pages/sample/sample_page_state.dart';
import 'package:calorie_go_flutter/repositories/sample_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sample_page_controller.g.dart';

@riverpod
class SamplePageNotifier extends _$SamplePageNotifier {
  @override
  SamplePageState build() {
    return const SamplePageState();
  }

  void send(String text) async {
    try {
      final result = await SampleRepository().getSampleData(text);
      state = state.copyWith(resultMessage: result);
    } catch (e) {
      state = state.copyWith(errorMessage: '$e');
    }
  }
}
