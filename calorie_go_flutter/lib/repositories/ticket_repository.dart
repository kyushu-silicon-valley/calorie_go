import 'package:calorie_go_client/calorie_go_client.dart';
import 'package:calorie_go_flutter/constants.dart';
import 'package:flutter/foundation.dart';

class TicketRepository {
  /// チケットを使用する
  Future<List<MonsterImage>> useTicket(int ticketId, String feature) async {
    try {
      final monsterImages = await client.ticket.generateNextImage(feature);
      return monsterImages;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      throw Exception(e);
    }
  }
}
