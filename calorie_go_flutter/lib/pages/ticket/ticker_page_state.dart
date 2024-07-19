import 'package:calorie_go_client/calorie_go_client.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticker_page_state.freezed.dart';

@freezed
class TicketPageState with _$TicketPageState {
  const factory TicketPageState({
    required TicketIndexPageState ticketIndexPageState,
    required CustomPageState customPageState,
    required SelectStylePageState selectStylePageState,
  }) = _TicketPageState;
}

@freezed
class TicketIndexPageState with _$TicketIndexPageState {
  const factory TicketIndexPageState({
    required List<UsertTicket> tickets,
  }) = _TicketIndexPageState;
}

@freezed
class CustomPageState with _$CustomPageState {
  const factory CustomPageState({
    @Default('') String prompt,
    @Default(-1) int usingTicketId,
  }) = _CustomPageState;
}

@freezed
class SelectStylePageState with _$SelectStylePageState {
  const factory SelectStylePageState({
    GeneratedMonsters? monsters,
  }) = _SelectStylePageState;
}