/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class MonsterImage implements _i1.SerializableModel {
  MonsterImage._({
    this.id,
    required this.imageUrl,
  });

  factory MonsterImage({
    int? id,
    required String imageUrl,
  }) = _MonsterImageImpl;

  factory MonsterImage.fromJson(Map<String, dynamic> jsonSerialization) {
    return MonsterImage(
      id: jsonSerialization['id'] as int?,
      imageUrl: jsonSerialization['imageUrl'] as String,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String imageUrl;

  MonsterImage copyWith({
    int? id,
    String? imageUrl,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'imageUrl': imageUrl,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _MonsterImageImpl extends MonsterImage {
  _MonsterImageImpl({
    int? id,
    required String imageUrl,
  }) : super._(
          id: id,
          imageUrl: imageUrl,
        );

  @override
  MonsterImage copyWith({
    Object? id = _Undefined,
    String? imageUrl,
  }) {
    return MonsterImage(
      id: id is int? ? id : this.id,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }
}
