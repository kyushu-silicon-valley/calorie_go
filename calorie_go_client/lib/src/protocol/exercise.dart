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

abstract class Exercise implements _i1.SerializableModel {
  Exercise._({
    this.id,
    required this.userId,
    this.user,
    required this.startedAt,
    this.endedAt,
    required this.totalSteps,
  });

  factory Exercise({
    int? id,
    required int userId,
    _i2.CalorieGoUser? user,
    required DateTime startedAt,
    DateTime? endedAt,
    required int totalSteps,
  }) = _ExerciseImpl;

  factory Exercise.fromJson(Map<String, dynamic> jsonSerialization) {
    return Exercise(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int,
      user: jsonSerialization['user'] == null
          ? null
          : _i2.CalorieGoUser.fromJson(
              (jsonSerialization['user'] as Map<String, dynamic>)),
      startedAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['startedAt']),
      endedAt: jsonSerialization['endedAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['endedAt']),
      totalSteps: jsonSerialization['totalSteps'] as int,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int userId;

  _i2.CalorieGoUser? user;

  DateTime startedAt;

  DateTime? endedAt;

  int totalSteps;

  Exercise copyWith({
    int? id,
    int? userId,
    _i2.CalorieGoUser? user,
    DateTime? startedAt,
    DateTime? endedAt,
    int? totalSteps,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      if (user != null) 'user': user?.toJson(),
      'startedAt': startedAt.toJson(),
      if (endedAt != null) 'endedAt': endedAt?.toJson(),
      'totalSteps': totalSteps,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ExerciseImpl extends Exercise {
  _ExerciseImpl({
    int? id,
    required int userId,
    _i2.CalorieGoUser? user,
    required DateTime startedAt,
    DateTime? endedAt,
    required int totalSteps,
  }) : super._(
          id: id,
          userId: userId,
          user: user,
          startedAt: startedAt,
          endedAt: endedAt,
          totalSteps: totalSteps,
        );

  @override
  Exercise copyWith({
    Object? id = _Undefined,
    int? userId,
    Object? user = _Undefined,
    DateTime? startedAt,
    Object? endedAt = _Undefined,
    int? totalSteps,
  }) {
    return Exercise(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      user: user is _i2.CalorieGoUser? ? user : this.user?.copyWith(),
      startedAt: startedAt ?? this.startedAt,
      endedAt: endedAt is DateTime? ? endedAt : this.endedAt,
      totalSteps: totalSteps ?? this.totalSteps,
    );
  }
}
