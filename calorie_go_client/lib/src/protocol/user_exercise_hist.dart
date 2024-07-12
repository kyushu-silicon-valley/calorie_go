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

abstract class UserExerciseHist implements _i1.SerializableModel {
  UserExerciseHist._({
    this.id,
    required this.userId,
    this.user,
    required this.updatedAt,
    required this.steps,
  });

  factory UserExerciseHist({
    int? id,
    required int userId,
    _i2.UserInfo? user,
    required DateTime updatedAt,
    required int steps,
  }) = _UserExerciseHistImpl;

  factory UserExerciseHist.fromJson(Map<String, dynamic> jsonSerialization) {
    return UserExerciseHist(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int,
      user: jsonSerialization['user'] == null
          ? null
          : _i2.UserInfo.fromJson(
              (jsonSerialization['user'] as Map<String, dynamic>)),
      updatedAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['updatedAt']),
      steps: jsonSerialization['steps'] as int,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int userId;

  _i2.UserInfo? user;

  DateTime updatedAt;

  int steps;

  UserExerciseHist copyWith({
    int? id,
    int? userId,
    _i2.UserInfo? user,
    DateTime? updatedAt,
    int? steps,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      if (user != null) 'user': user?.toJson(),
      'updatedAt': updatedAt.toJson(),
      'steps': steps,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _UserExerciseHistImpl extends UserExerciseHist {
  _UserExerciseHistImpl({
    int? id,
    required int userId,
    _i2.UserInfo? user,
    required DateTime updatedAt,
    required int steps,
  }) : super._(
          id: id,
          userId: userId,
          user: user,
          updatedAt: updatedAt,
          steps: steps,
        );

  @override
  UserExerciseHist copyWith({
    Object? id = _Undefined,
    int? userId,
    Object? user = _Undefined,
    DateTime? updatedAt,
    int? steps,
  }) {
    return UserExerciseHist(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      user: user is _i2.UserInfo? ? user : this.user?.copyWith(),
      updatedAt: updatedAt ?? this.updatedAt,
      steps: steps ?? this.steps,
    );
  }
}
