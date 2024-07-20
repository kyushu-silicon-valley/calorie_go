/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class GeneratedMonsters implements _i1.SerializableModel {
  GeneratedMonsters._({
    required this.img1,
    required this.img1Id,
    required this.img2,
    required this.img2Id,
    required this.generateUserId,
  });

  factory GeneratedMonsters({
    required String img1,
    required int img1Id,
    required String img2,
    required int img2Id,
    required int generateUserId,
  }) = _GeneratedMonstersImpl;

  factory GeneratedMonsters.fromJson(Map<String, dynamic> jsonSerialization) {
    return GeneratedMonsters(
      img1: jsonSerialization['img1'] as String,
      img1Id: jsonSerialization['img1Id'] as int,
      img2: jsonSerialization['img2'] as String,
      img2Id: jsonSerialization['img2Id'] as int,
      generateUserId: jsonSerialization['generateUserId'] as int,
    );
  }

  String img1;

  int img1Id;

  String img2;

  int img2Id;

  int generateUserId;

  GeneratedMonsters copyWith({
    String? img1,
    int? img1Id,
    String? img2,
    int? img2Id,
    int? generateUserId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'img1': img1,
      'img1Id': img1Id,
      'img2': img2,
      'img2Id': img2Id,
      'generateUserId': generateUserId,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _GeneratedMonstersImpl extends GeneratedMonsters {
  _GeneratedMonstersImpl({
    required String img1,
    required int img1Id,
    required String img2,
    required int img2Id,
    required int generateUserId,
  }) : super._(
          img1: img1,
          img1Id: img1Id,
          img2: img2,
          img2Id: img2Id,
          generateUserId: generateUserId,
        );

  @override
  GeneratedMonsters copyWith({
    String? img1,
    int? img1Id,
    String? img2,
    int? img2Id,
    int? generateUserId,
  }) {
    return GeneratedMonsters(
      img1: img1 ?? this.img1,
      img1Id: img1Id ?? this.img1Id,
      img2: img2 ?? this.img2,
      img2Id: img2Id ?? this.img2Id,
      generateUserId: generateUserId ?? this.generateUserId,
    );
  }
}
