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

abstract class TicketMaster implements _i1.SerializableModel {
  TicketMaster._({
    this.id,
    required this.name,
    required this.desctiption,
    required this.prompt,
    required this.ticketType,
  });

  factory TicketMaster({
    int? id,
    required String name,
    required String desctiption,
    required String prompt,
    required _i2.TicketType ticketType,
  }) = _TicketMasterImpl;

  factory TicketMaster.fromJson(Map<String, dynamic> jsonSerialization) {
    return TicketMaster(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      desctiption: jsonSerialization['desctiption'] as String,
      prompt: jsonSerialization['prompt'] as String,
      ticketType:
          _i2.TicketType.fromJson((jsonSerialization['ticketType'] as int)),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  String desctiption;

  String prompt;

  _i2.TicketType ticketType;

  TicketMaster copyWith({
    int? id,
    String? name,
    String? desctiption,
    String? prompt,
    _i2.TicketType? ticketType,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'desctiption': desctiption,
      'prompt': prompt,
      'ticketType': ticketType.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _TicketMasterImpl extends TicketMaster {
  _TicketMasterImpl({
    int? id,
    required String name,
    required String desctiption,
    required String prompt,
    required _i2.TicketType ticketType,
  }) : super._(
          id: id,
          name: name,
          desctiption: desctiption,
          prompt: prompt,
          ticketType: ticketType,
        );

  @override
  TicketMaster copyWith({
    Object? id = _Undefined,
    String? name,
    String? desctiption,
    String? prompt,
    _i2.TicketType? ticketType,
  }) {
    return TicketMaster(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      desctiption: desctiption ?? this.desctiption,
      prompt: prompt ?? this.prompt,
      ticketType: ticketType ?? this.ticketType,
    );
  }
}
