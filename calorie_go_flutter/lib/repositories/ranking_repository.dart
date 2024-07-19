import 'package:calorie_go_client/calorie_go_client.dart';
import 'package:calorie_go_flutter/constants.dart';

class RankingRepository {
  Future<List<RankingItemResponse>> getRanking() async {
    try {
      final ranking = await client.ranking.getRanking();
      if (ranking == null) {
        throw Exception('Failed To Fetch Ranking');
      }
      return ranking;
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<UserExerciseHist> getMyRanking() async {
    try {
      final myRanking = await client.ranking.myRanking();
      if (myRanking == null) {
        throw Exception('Failed To Fetch Ranking');
      }
      return myRanking;
    } catch (e) {
      throw Exception(e);
    }
  }
}
