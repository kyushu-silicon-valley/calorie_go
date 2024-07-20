/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i2;
import 'protocol.dart' as _i3;

abstract class UsertTicket implements _i1.SerializableModel {
  UsertTicket._({
    this.id,
    required this.userId,
    this.user,
    required this.ticketMasterId,
    this.ticketMaster,
    required this.used,
  });

  factory UsertTicket({
    int? id,
    required int userId,
    _i2.UserInfo? user,
    required int ticketMasterId,
    _i3.TicketMaster? ticketMaster,
    required bool used,
  }) = _UsertTicketImpl;

  factory UsertTicket.fromJson(Map<String, dynamic> jsonSerialization) {
    return UsertTicket(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int,
      user: jsonSerialization['user'] == null
          ? null
          : _i2.UserInfo.fromJson(
              (jsonSerialization['user'] as Map<String, dynamic>)),
      ticketMasterId: jsonSerialization['ticketMasterId'] as int,
      ticketMaster: jsonSerialization['ticketMaster'] == null
          ? null
          : _i3.TicketMaster.fromJson(
              (jsonSerialization['ticketMaster'] as Map<String, dynamic>)),
      used: jsonSerialization['used'] as bool,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int userId;

  _i2.UserInfo? user;

  int ticketMasterId;

  _i3.TicketMaster? ticketMaster;

  bool used;

  UsertTicket copyWith({
    int? id,
    int? userId,
    _i2.UserInfo? user,
    int? ticketMasterId,
    _i3.TicketMaster? ticketMaster,
    bool? used,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      if (user != null) 'user': user?.toJson(),
      'ticketMasterId': ticketMasterId,
      if (ticketMaster != null) 'ticketMaster': ticketMaster?.toJson(),
      'used': used,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _UsertTicketImpl extends UsertTicket {
  _UsertTicketImpl({
    int? id,
    required int userId,
    _i2.UserInfo? user,
    required int ticketMasterId,
    _i3.TicketMaster? ticketMaster,
    required bool used,
  }) : super._(
          id: id,
          userId: userId,
          user: user,
          ticketMasterId: ticketMasterId,
          ticketMaster: ticketMaster,
          used: used,
        );

  @override
  UsertTicket copyWith({
    Object? id = _Undefined,
    int? userId,
    Object? user = _Undefined,
    int? ticketMasterId,
    Object? ticketMaster = _Undefined,
    bool? used,
  }) {
    return UsertTicket(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      user: user is _i2.UserInfo? ? user : this.user?.copyWith(),
      ticketMasterId: ticketMasterId ?? this.ticketMasterId,
      ticketMaster: ticketMaster is _i3.TicketMaster?
          ? ticketMaster
          : this.ticketMaster?.copyWith(),
      used: used ?? this.used,
    );
  }
}
