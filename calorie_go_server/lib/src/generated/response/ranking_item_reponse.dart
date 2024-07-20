/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class RankingItemResponse
    implements _i1.SerializableModel, _i1.ProtocolSerialization {
  RankingItemResponse._({
    required this.userName,
    required this.totalSteps,
    required this.monsterImageB64,
  });

  factory RankingItemResponse({
    required String userName,
    required int totalSteps,
    required String monsterImageB64,
  }) = _RankingItemResponseImpl;

  factory RankingItemResponse.fromJson(Map<String, dynamic> jsonSerialization) {
    return RankingItemResponse(
      userName: jsonSerialization['userName'] as String,
      totalSteps: jsonSerialization['totalSteps'] as int,
      monsterImageB64: jsonSerialization['monsterImageB64'] as String,
    );
  }

  String userName;

  int totalSteps;

  String monsterImageB64;

  RankingItemResponse copyWith({
    String? userName,
    int? totalSteps,
    String? monsterImageB64,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'userName': userName,
      'totalSteps': totalSteps,
      'monsterImageB64': monsterImageB64,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      'userName': userName,
      'totalSteps': totalSteps,
      'monsterImageB64': monsterImageB64,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _RankingItemResponseImpl extends RankingItemResponse {
  _RankingItemResponseImpl({
    required String userName,
    required int totalSteps,
    required String monsterImageB64,
  }) : super._(
          userName: userName,
          totalSteps: totalSteps,
          monsterImageB64: monsterImageB64,
        );

  @override
  RankingItemResponse copyWith({
    String? userName,
    int? totalSteps,
    String? monsterImageB64,
  }) {
    return RankingItemResponse(
      userName: userName ?? this.userName,
      totalSteps: totalSteps ?? this.totalSteps,
      monsterImageB64: monsterImageB64 ?? this.monsterImageB64,
    );
  }
}
