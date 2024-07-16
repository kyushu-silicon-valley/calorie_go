/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'protocol.dart' as _i2;

abstract class TicketMaster extends _i1.TableRow
    implements _i1.ProtocolSerialization {
  TicketMaster._({
    int? id,
    required this.name,
    required this.desctiption,
    required this.prompt,
    required this.ticketType,
  }) : super(id);

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

  static final t = TicketMasterTable();

  static const db = TicketMasterRepository._();

  String name;

  String desctiption;

  String prompt;

  _i2.TicketType ticketType;

  @override
  _i1.Table get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'desctiption': desctiption,
      'prompt': prompt,
      'ticketType': ticketType.toJson(),
    };
  }

  static TicketMasterInclude include() {
    return TicketMasterInclude._();
  }

  static TicketMasterIncludeList includeList({
    _i1.WhereExpressionBuilder<TicketMasterTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TicketMasterTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TicketMasterTable>? orderByList,
    TicketMasterInclude? include,
  }) {
    return TicketMasterIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(TicketMaster.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(TicketMaster.t),
      include: include,
    );
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

class TicketMasterTable extends _i1.Table {
  TicketMasterTable({super.tableRelation})
      : super(tableName: 'ticketm_master') {
    name = _i1.ColumnString(
      'name',
      this,
    );
    desctiption = _i1.ColumnString(
      'desctiption',
      this,
    );
    prompt = _i1.ColumnString(
      'prompt',
      this,
    );
    ticketType = _i1.ColumnEnum(
      'ticketType',
      this,
      _i1.EnumSerialization.byIndex,
    );
  }

  late final _i1.ColumnString name;

  late final _i1.ColumnString desctiption;

  late final _i1.ColumnString prompt;

  late final _i1.ColumnEnum<_i2.TicketType> ticketType;

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        desctiption,
        prompt,
        ticketType,
      ];
}

class TicketMasterInclude extends _i1.IncludeObject {
  TicketMasterInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => TicketMaster.t;
}

class TicketMasterIncludeList extends _i1.IncludeList {
  TicketMasterIncludeList._({
    _i1.WhereExpressionBuilder<TicketMasterTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(TicketMaster.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => TicketMaster.t;
}

class TicketMasterRepository {
  const TicketMasterRepository._();

  Future<List<TicketMaster>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TicketMasterTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TicketMasterTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TicketMasterTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<TicketMaster>(
      where: where?.call(TicketMaster.t),
      orderBy: orderBy?.call(TicketMaster.t),
      orderByList: orderByList?.call(TicketMaster.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<TicketMaster?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TicketMasterTable>? where,
    int? offset,
    _i1.OrderByBuilder<TicketMasterTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TicketMasterTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<TicketMaster>(
      where: where?.call(TicketMaster.t),
      orderBy: orderBy?.call(TicketMaster.t),
      orderByList: orderByList?.call(TicketMaster.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<TicketMaster?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<TicketMaster>(
      id,
      transaction: transaction,
    );
  }

  Future<List<TicketMaster>> insert(
    _i1.Session session,
    List<TicketMaster> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<TicketMaster>(
      rows,
      transaction: transaction,
    );
  }

  Future<TicketMaster> insertRow(
    _i1.Session session,
    TicketMaster row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<TicketMaster>(
      row,
      transaction: transaction,
    );
  }

  Future<List<TicketMaster>> update(
    _i1.Session session,
    List<TicketMaster> rows, {
    _i1.ColumnSelections<TicketMasterTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<TicketMaster>(
      rows,
      columns: columns?.call(TicketMaster.t),
      transaction: transaction,
    );
  }

  Future<TicketMaster> updateRow(
    _i1.Session session,
    TicketMaster row, {
    _i1.ColumnSelections<TicketMasterTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<TicketMaster>(
      row,
      columns: columns?.call(TicketMaster.t),
      transaction: transaction,
    );
  }

  Future<List<TicketMaster>> delete(
    _i1.Session session,
    List<TicketMaster> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<TicketMaster>(
      rows,
      transaction: transaction,
    );
  }

  Future<TicketMaster> deleteRow(
    _i1.Session session,
    TicketMaster row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<TicketMaster>(
      row,
      transaction: transaction,
    );
  }

  Future<List<TicketMaster>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<TicketMasterTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<TicketMaster>(
      where: where(TicketMaster.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TicketMasterTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<TicketMaster>(
      where: where?.call(TicketMaster.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
