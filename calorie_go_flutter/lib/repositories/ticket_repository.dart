import 'package:calorie_go_client/calorie_go_client.dart';
import 'package:calorie_go_flutter/constants.dart';

class TicketRepository {
  Future<List<UsertTicket>> getTickets() async {
    try {
      final tickets = await client.ticket.getMyTicker();
      return tickets;
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<GeneratedMonsters> useTicket(int ticketId, String feature) async {
    try {
      final monsterImages = await client.ticket.useTicket(ticketId, feature);
      if (monsterImages == null) {
        throw Exception("Failed to generate monster images");
      }
      return monsterImages;
    } catch (e) {
      throw Exception(e);
    }
  }
}
