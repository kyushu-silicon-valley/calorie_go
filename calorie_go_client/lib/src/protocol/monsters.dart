/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'protocol.dart' as _i2;
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i3;

abstract class Monster implements _i1.SerializableModel {
  Monster._({
    this.id,
    required this.name,
    required this.monsterImageIdId,
    this.monsterImageId,
    required this.userId,
    this.user,
  });

  factory Monster({
    int? id,
    required String name,
    required int monsterImageIdId,
    _i2.MonsterImage? monsterImageId,
    required int userId,
    _i3.UserInfo? user,
  }) = _MonsterImpl;

  factory Monster.fromJson(Map<String, dynamic> jsonSerialization) {
    return Monster(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      monsterImageIdId: jsonSerialization['monsterImageIdId'] as int,
      monsterImageId: jsonSerialization['monsterImageId'] == null
          ? null
          : _i2.MonsterImage.fromJson(
              (jsonSerialization['monsterImageId'] as Map<String, dynamic>)),
      userId: jsonSerialization['userId'] as int,
      user: jsonSerialization['user'] == null
          ? null
          : _i3.UserInfo.fromJson(
              (jsonSerialization['user'] as Map<String, dynamic>)),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  int monsterImageIdId;

  _i2.MonsterImage? monsterImageId;

  int userId;

  _i3.UserInfo? user;

  Monster copyWith({
    int? id,
    String? name,
    int? monsterImageIdId,
    _i2.MonsterImage? monsterImageId,
    int? userId,
    _i3.UserInfo? user,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'monsterImageIdId': monsterImageIdId,
      if (monsterImageId != null) 'monsterImageId': monsterImageId?.toJson(),
      'userId': userId,
      if (user != null) 'user': user?.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _MonsterImpl extends Monster {
  _MonsterImpl({
    int? id,
    required String name,
    required int monsterImageIdId,
    _i2.MonsterImage? monsterImageId,
    required int userId,
    _i3.UserInfo? user,
  }) : super._(
          id: id,
          name: name,
          monsterImageIdId: monsterImageIdId,
          monsterImageId: monsterImageId,
          userId: userId,
          user: user,
        );

  @override
  Monster copyWith({
    Object? id = _Undefined,
    String? name,
    int? monsterImageIdId,
    Object? monsterImageId = _Undefined,
    int? userId,
    Object? user = _Undefined,
  }) {
    return Monster(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      monsterImageIdId: monsterImageIdId ?? this.monsterImageIdId,
      monsterImageId: monsterImageId is _i2.MonsterImage?
          ? monsterImageId
          : this.monsterImageId?.copyWith(),
      userId: userId ?? this.userId,
      user: user is _i3.UserInfo? ? user : this.user?.copyWith(),
    );
  }
}
