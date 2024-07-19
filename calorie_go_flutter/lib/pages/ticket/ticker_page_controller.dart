import 'package:calorie_go_flutter/pages/ticket/ticker_page_state.dart';
import 'package:calorie_go_flutter/repositories/monster_repository.dart';
import 'package:calorie_go_flutter/repositories/ticket_repository.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ticker_page_controller.g.dart';

@riverpod
class TicketPageController extends _$TicketPageController {
  @override
  TicketPageState build() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      getTickets();
    });
    return const TicketPageState(
      ticketIndexPageState: TicketIndexPageState(
        tickets: [],
      ),
      customPageState: CustomPageState(
        prompt: '',
        usingTicketId: -1,
      ),
      selectStylePageState: SelectStylePageState(
        monsters: null,
      ),
    );
  }

  Future<void> getTickets() async {
    final tickets = await TicketRepository().getTickets();
    state = state.copyWith(
      ticketIndexPageState: state.ticketIndexPageState.copyWith(
        tickets: tickets,
      ),
    );
  }

  Future<void> selectTicket(int ticketId) async {
    state = state.copyWith(
      customPageState: state.customPageState.copyWith(
        usingTicketId: ticketId,
      ),
    );
  }

  Future<void> getGeneratedMonsters(String prompt) async {
    final monsters = await TicketRepository().useTicket(
      state.customPageState.usingTicketId,
      prompt,
    );
    state = state.copyWith(
      selectStylePageState: state.selectStylePageState.copyWith(
        monsters: monsters,
      ),
    );
  }

  Future<void> changeCurrentMonster(int monsterImageId) async {
    await MonsterRepository().updateCurrentMonsterImage(monsterImageId);
  }
}
