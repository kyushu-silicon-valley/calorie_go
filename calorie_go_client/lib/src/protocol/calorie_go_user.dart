/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class CalorieGoUser implements _i1.SerializableModel {
  CalorieGoUser._({
    this.id,
    required this.authId,
    required this.authUserId,
    required this.nickname,
  });

  factory CalorieGoUser({
    int? id,
    required String authId,
    required int authUserId,
    required String nickname,
  }) = _CalorieGoUserImpl;

  factory CalorieGoUser.fromJson(Map<String, dynamic> jsonSerialization) {
    return CalorieGoUser(
      id: jsonSerialization['id'] as int?,
      authId: jsonSerialization['authId'] as String,
      authUserId: jsonSerialization['authUserId'] as int,
      nickname: jsonSerialization['nickname'] as String,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String authId;

  int authUserId;

  String nickname;

  CalorieGoUser copyWith({
    int? id,
    String? authId,
    int? authUserId,
    String? nickname,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'authId': authId,
      'authUserId': authUserId,
      'nickname': nickname,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CalorieGoUserImpl extends CalorieGoUser {
  _CalorieGoUserImpl({
    int? id,
    required String authId,
    required int authUserId,
    required String nickname,
  }) : super._(
          id: id,
          authId: authId,
          authUserId: authUserId,
          nickname: nickname,
        );

  @override
  CalorieGoUser copyWith({
    Object? id = _Undefined,
    String? authId,
    int? authUserId,
    String? nickname,
  }) {
    return CalorieGoUser(
      id: id is int? ? id : this.id,
      authId: authId ?? this.authId,
      authUserId: authUserId ?? this.authUserId,
      nickname: nickname ?? this.nickname,
    );
  }
}
