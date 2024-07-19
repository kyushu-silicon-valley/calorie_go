/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class UserResponse
    implements _i1.SerializableModel, _i1.ProtocolSerialization {
  UserResponse._({
    required this.userId,
    required this.userName,
    required this.totalSteps,
  });

  factory UserResponse({
    required int userId,
    required String userName,
    required int totalSteps,
  }) = _UserResponseImpl;

  factory UserResponse.fromJson(Map<String, dynamic> jsonSerialization) {
    return UserResponse(
      userId: jsonSerialization['userId'] as int,
      userName: jsonSerialization['userName'] as String,
      totalSteps: jsonSerialization['totalSteps'] as int,
    );
  }

  int userId;

  String userName;

  int totalSteps;

  UserResponse copyWith({
    int? userId,
    String? userName,
    int? totalSteps,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'userName': userName,
      'totalSteps': totalSteps,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      'userId': userId,
      'userName': userName,
      'totalSteps': totalSteps,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _UserResponseImpl extends UserResponse {
  _UserResponseImpl({
    required int userId,
    required String userName,
    required int totalSteps,
  }) : super._(
          userId: userId,
          userName: userName,
          totalSteps: totalSteps,
        );

  @override
  UserResponse copyWith({
    int? userId,
    String? userName,
    int? totalSteps,
  }) {
    return UserResponse(
      userId: userId ?? this.userId,
      userName: userName ?? this.userName,
      totalSteps: totalSteps ?? this.totalSteps,
    );
  }
}
