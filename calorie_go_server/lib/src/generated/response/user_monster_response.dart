/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class UserMonsterResponse
    implements _i1.SerializableModel, _i1.ProtocolSerialization {
  UserMonsterResponse._({required this.monsterImageB64});

  factory UserMonsterResponse({required String monsterImageB64}) =
      _UserMonsterResponseImpl;

  factory UserMonsterResponse.fromJson(Map<String, dynamic> jsonSerialization) {
    return UserMonsterResponse(
        monsterImageB64: jsonSerialization['monsterImageB64'] as String);
  }

  String monsterImageB64;

  UserMonsterResponse copyWith({String? monsterImageB64});
  @override
  Map<String, dynamic> toJson() {
    return {'monsterImageB64': monsterImageB64};
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {'monsterImageB64': monsterImageB64};
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _UserMonsterResponseImpl extends UserMonsterResponse {
  _UserMonsterResponseImpl({required String monsterImageB64})
      : super._(monsterImageB64: monsterImageB64);

  @override
  UserMonsterResponse copyWith({String? monsterImageB64}) {
    return UserMonsterResponse(
        monsterImageB64: monsterImageB64 ?? this.monsterImageB64);
  }
}
