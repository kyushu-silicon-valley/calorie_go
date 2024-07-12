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

abstract class UserMonsterFeature implements _i1.SerializableModel {
  UserMonsterFeature._({
    this.id,
    required this.userId,
    this.user,
    required this.feature,
  });

  factory UserMonsterFeature({
    int? id,
    required int userId,
    _i2.UserInfo? user,
    required String feature,
  }) = _UserMonsterFeatureImpl;

  factory UserMonsterFeature.fromJson(Map<String, dynamic> jsonSerialization) {
    return UserMonsterFeature(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int,
      user: jsonSerialization['user'] == null
          ? null
          : _i2.UserInfo.fromJson(
              (jsonSerialization['user'] as Map<String, dynamic>)),
      feature: jsonSerialization['feature'] as String,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int userId;

  _i2.UserInfo? user;

  String feature;

  UserMonsterFeature copyWith({
    int? id,
    int? userId,
    _i2.UserInfo? user,
    String? feature,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      if (user != null) 'user': user?.toJson(),
      'feature': feature,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _UserMonsterFeatureImpl extends UserMonsterFeature {
  _UserMonsterFeatureImpl({
    int? id,
    required int userId,
    _i2.UserInfo? user,
    required String feature,
  }) : super._(
          id: id,
          userId: userId,
          user: user,
          feature: feature,
        );

  @override
  UserMonsterFeature copyWith({
    Object? id = _Undefined,
    int? userId,
    Object? user = _Undefined,
    String? feature,
  }) {
    return UserMonsterFeature(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      user: user is _i2.UserInfo? ? user : this.user?.copyWith(),
      feature: feature ?? this.feature,
    );
  }
}
