import 'package:calorie_go_client/calorie_go_client.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ranking_page_state.freezed.dart';

@freezed
class RankingPageState with _$RankingPageState {
  const factory RankingPageState({
    @Default([]) List<RankingItemResponse> ranking,
    @Default(null) UserExerciseHist? myRanking,
  }) = _RankingPageState;
}
