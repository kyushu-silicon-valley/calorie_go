import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'current_tab_index_provider.g.dart';

@Riverpod(keepAlive: true)
class CurrentTabIndexNotifier extends _$CurrentTabIndexNotifier {
  @override
  int build() {
    return 0;
  }

  void change(int index) {
    state = index;
  }

  String getPath() {
    switch (state) {
      case 0:
        return '/';
      case 1:
        return '/exercise';
      case 2:
        return '/ranking';
      case 3:
        return '/ticket';
      case 4:
        return '/setting';
      default:
        return '/home';
    }
  }
}
