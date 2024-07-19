/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'calorie_go_user.dart' as _i2;
import 'example.dart' as _i3;
import 'exercise.dart' as _i4;
import 'gender.dart' as _i5;
import 'monster_image.dart' as _i6;
import 'monsters.dart' as _i7;
import 'notification.dart' as _i8;
import 'response/generated_monsters.dart' as _i9;
import 'response/ranking_item_reponse.dart' as _i10;
import 'response/user_monster_response.dart' as _i11;
import 'response/user_response.dart' as _i12;
import 'ticket_master.dart' as _i13;
import 'ticket_type.dart' as _i14;
import 'user_exercise_hist.dart' as _i15;
import 'user_monster_feature.dart' as _i16;
import 'user_ticket.dart' as _i17;
import 'package:calorie_go_client/src/protocol/exercise.dart' as _i18;
import 'package:calorie_go_client/src/protocol/notification.dart' as _i19;
import 'package:calorie_go_client/src/protocol/response/ranking_item_reponse.dart'
    as _i20;
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i21;
export 'calorie_go_user.dart';
export 'example.dart';
export 'exercise.dart';
export 'gender.dart';
export 'monster_image.dart';
export 'monsters.dart';
export 'notification.dart';
export 'response/generated_monsters.dart';
export 'response/ranking_item_reponse.dart';
export 'response/user_monster_response.dart';
export 'response/user_response.dart';
export 'ticket_master.dart';
export 'ticket_type.dart';
export 'user_exercise_hist.dart';
export 'user_monster_feature.dart';
export 'user_ticket.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (t == _i2.CalorieGoUser) {
      return _i2.CalorieGoUser.fromJson(data) as T;
    }
    if (t == _i3.Example) {
      return _i3.Example.fromJson(data) as T;
    }
    if (t == _i4.Exercise) {
      return _i4.Exercise.fromJson(data) as T;
    }
    if (t == _i5.Gender) {
      return _i5.Gender.fromJson(data) as T;
    }
    if (t == _i6.MonsterImage) {
      return _i6.MonsterImage.fromJson(data) as T;
    }
    if (t == _i7.Monster) {
      return _i7.Monster.fromJson(data) as T;
    }
    if (t == _i8.Notification) {
      return _i8.Notification.fromJson(data) as T;
    }
    if (t == _i9.GeneratedMonsters) {
      return _i9.GeneratedMonsters.fromJson(data) as T;
    }
    if (t == _i10.RankingItemResponse) {
      return _i10.RankingItemResponse.fromJson(data) as T;
    }
    if (t == _i11.UserMonsterResponse) {
      return _i11.UserMonsterResponse.fromJson(data) as T;
    }
    if (t == _i12.UserResponse) {
      return _i12.UserResponse.fromJson(data) as T;
    }
    if (t == _i13.TicketMaster) {
      return _i13.TicketMaster.fromJson(data) as T;
    }
    if (t == _i14.TicketType) {
      return _i14.TicketType.fromJson(data) as T;
    }
    if (t == _i15.UserExerciseHist) {
      return _i15.UserExerciseHist.fromJson(data) as T;
    }
    if (t == _i16.UserMonsterFeature) {
      return _i16.UserMonsterFeature.fromJson(data) as T;
    }
    if (t == _i17.UsertTicket) {
      return _i17.UsertTicket.fromJson(data) as T;
    }
    if (t == _i1.getType<_i2.CalorieGoUser?>()) {
      return (data != null ? _i2.CalorieGoUser.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i3.Example?>()) {
      return (data != null ? _i3.Example.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.Exercise?>()) {
      return (data != null ? _i4.Exercise.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.Gender?>()) {
      return (data != null ? _i5.Gender.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.MonsterImage?>()) {
      return (data != null ? _i6.MonsterImage.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.Monster?>()) {
      return (data != null ? _i7.Monster.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i8.Notification?>()) {
      return (data != null ? _i8.Notification.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i9.GeneratedMonsters?>()) {
      return (data != null ? _i9.GeneratedMonsters.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i10.RankingItemResponse?>()) {
      return (data != null ? _i10.RankingItemResponse.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i11.UserMonsterResponse?>()) {
      return (data != null ? _i11.UserMonsterResponse.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i12.UserResponse?>()) {
      return (data != null ? _i12.UserResponse.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i13.TicketMaster?>()) {
      return (data != null ? _i13.TicketMaster.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i14.TicketType?>()) {
      return (data != null ? _i14.TicketType.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i15.UserExerciseHist?>()) {
      return (data != null ? _i15.UserExerciseHist.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i16.UserMonsterFeature?>()) {
      return (data != null ? _i16.UserMonsterFeature.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i17.UsertTicket?>()) {
      return (data != null ? _i17.UsertTicket.fromJson(data) : null) as T;
    }
    if (t == List<_i18.Exercise>) {
      return (data as List).map((e) => deserialize<_i18.Exercise>(e)).toList()
          as dynamic;
    }
    if (t == _i1.getType<List<_i19.Notification>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i19.Notification>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i20.RankingItemResponse>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i20.RankingItemResponse>(e))
              .toList()
          : null) as dynamic;
    }
    try {
      return _i21.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    String? className;
    className = _i21.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth.$className';
    }
    if (data is _i2.CalorieGoUser) {
      return 'CalorieGoUser';
    }
    if (data is _i3.Example) {
      return 'Example';
    }
    if (data is _i4.Exercise) {
      return 'Exercise';
    }
    if (data is _i5.Gender) {
      return 'Gender';
    }
    if (data is _i6.MonsterImage) {
      return 'MonsterImage';
    }
    if (data is _i7.Monster) {
      return 'Monster';
    }
    if (data is _i8.Notification) {
      return 'Notification';
    }
    if (data is _i9.GeneratedMonsters) {
      return 'GeneratedMonsters';
    }
    if (data is _i10.RankingItemResponse) {
      return 'RankingItemResponse';
    }
    if (data is _i11.UserMonsterResponse) {
      return 'UserMonsterResponse';
    }
    if (data is _i12.UserResponse) {
      return 'UserResponse';
    }
    if (data is _i13.TicketMaster) {
      return 'TicketMaster';
    }
    if (data is _i14.TicketType) {
      return 'TicketType';
    }
    if (data is _i15.UserExerciseHist) {
      return 'UserExerciseHist';
    }
    if (data is _i16.UserMonsterFeature) {
      return 'UserMonsterFeature';
    }
    if (data is _i17.UsertTicket) {
      return 'UsertTicket';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'].startsWith('serverpod_auth.')) {
      data['className'] = data['className'].substring(15);
      return _i21.Protocol().deserializeByClassName(data);
    }
    if (data['className'] == 'CalorieGoUser') {
      return deserialize<_i2.CalorieGoUser>(data['data']);
    }
    if (data['className'] == 'Example') {
      return deserialize<_i3.Example>(data['data']);
    }
    if (data['className'] == 'Exercise') {
      return deserialize<_i4.Exercise>(data['data']);
    }
    if (data['className'] == 'Gender') {
      return deserialize<_i5.Gender>(data['data']);
    }
    if (data['className'] == 'MonsterImage') {
      return deserialize<_i6.MonsterImage>(data['data']);
    }
    if (data['className'] == 'Monster') {
      return deserialize<_i7.Monster>(data['data']);
    }
    if (data['className'] == 'Notification') {
      return deserialize<_i8.Notification>(data['data']);
    }
    if (data['className'] == 'GeneratedMonsters') {
      return deserialize<_i9.GeneratedMonsters>(data['data']);
    }
    if (data['className'] == 'RankingItemResponse') {
      return deserialize<_i10.RankingItemResponse>(data['data']);
    }
    if (data['className'] == 'UserMonsterResponse') {
      return deserialize<_i11.UserMonsterResponse>(data['data']);
    }
    if (data['className'] == 'UserResponse') {
      return deserialize<_i12.UserResponse>(data['data']);
    }
    if (data['className'] == 'TicketMaster') {
      return deserialize<_i13.TicketMaster>(data['data']);
    }
    if (data['className'] == 'TicketType') {
      return deserialize<_i14.TicketType>(data['data']);
    }
    if (data['className'] == 'UserExerciseHist') {
      return deserialize<_i15.UserExerciseHist>(data['data']);
    }
    if (data['className'] == 'UserMonsterFeature') {
      return deserialize<_i16.UserMonsterFeature>(data['data']);
    }
    if (data['className'] == 'UsertTicket') {
      return deserialize<_i17.UsertTicket>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
