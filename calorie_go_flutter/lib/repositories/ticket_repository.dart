import 'package:calorie_go_client/calorie_go_client.dart';
import 'package:calorie_go_flutter/constants.dart';
import 'package:flutter/foundation.dart';

class TicketRepository {
  /// チケットを使用する
  Future<GeneratedMonsters> useTicket(int ticketId, String feature) async {
    try {
      final monsterImages = await client.ticket.generateNextImage(feature);
      if(monsterImages == null) throw Exception("Failed to generate monster images");
      return monsterImages;
    } catch (e) {
      throw Exception(e);
    }
  }
}
