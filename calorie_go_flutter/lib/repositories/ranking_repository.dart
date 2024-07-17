import 'package:calorie_go_client/calorie_go_client.dart';
import 'package:calorie_go_flutter/constants.dart';

class RankingRepository {
  Future<List<UserExerciseHist>?> getRanking() async {
    try {
      final ranking = await client.ranking.getRanking();
      return ranking;
    } catch (e) {
      throw Exception(e);
    }
  }
}
