/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as _i2;
import 'protocol.dart' as _i3;

abstract class UsertTicket extends _i1.TableRow
    implements _i1.ProtocolSerialization {
  UsertTicket._({
    int? id,
    required this.userId,
    this.user,
    required this.ticketMasterId,
    this.ticketMaster,
  }) : super(id);

  factory UsertTicket({
    int? id,
    required int userId,
    _i2.UserInfo? user,
    required int ticketMasterId,
    _i3.TicketMaster? ticketMaster,
  }) = _UsertTicketImpl;

  factory UsertTicket.fromJson(Map<String, dynamic> jsonSerialization) {
    return UsertTicket(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int,
      user: jsonSerialization['user'] == null
          ? null
          : _i2.UserInfo.fromJson(
              (jsonSerialization['user'] as Map<String, dynamic>)),
      ticketMasterId: jsonSerialization['ticketMasterId'] as int,
      ticketMaster: jsonSerialization['ticketMaster'] == null
          ? null
          : _i3.TicketMaster.fromJson(
              (jsonSerialization['ticketMaster'] as Map<String, dynamic>)),
    );
  }

  static final t = UsertTicketTable();

  static const db = UsertTicketRepository._();

  int userId;

  _i2.UserInfo? user;

  int ticketMasterId;

  _i3.TicketMaster? ticketMaster;

  @override
  _i1.Table get table => t;

  UsertTicket copyWith({
    int? id,
    int? userId,
    _i2.UserInfo? user,
    int? ticketMasterId,
    _i3.TicketMaster? ticketMaster,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      if (user != null) 'user': user?.toJson(),
      'ticketMasterId': ticketMasterId,
      if (ticketMaster != null) 'ticketMaster': ticketMaster?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      if (user != null) 'user': user?.toJsonForProtocol(),
      'ticketMasterId': ticketMasterId,
      if (ticketMaster != null)
        'ticketMaster': ticketMaster?.toJsonForProtocol(),
    };
  }

  static UsertTicketInclude include({
    _i2.UserInfoInclude? user,
    _i3.TicketMasterInclude? ticketMaster,
  }) {
    return UsertTicketInclude._(
      user: user,
      ticketMaster: ticketMaster,
    );
  }

  static UsertTicketIncludeList includeList({
    _i1.WhereExpressionBuilder<UsertTicketTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UsertTicketTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UsertTicketTable>? orderByList,
    UsertTicketInclude? include,
  }) {
    return UsertTicketIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(UsertTicket.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(UsertTicket.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _UsertTicketImpl extends UsertTicket {
  _UsertTicketImpl({
    int? id,
    required int userId,
    _i2.UserInfo? user,
    required int ticketMasterId,
    _i3.TicketMaster? ticketMaster,
  }) : super._(
          id: id,
          userId: userId,
          user: user,
          ticketMasterId: ticketMasterId,
          ticketMaster: ticketMaster,
        );

  @override
  UsertTicket copyWith({
    Object? id = _Undefined,
    int? userId,
    Object? user = _Undefined,
    int? ticketMasterId,
    Object? ticketMaster = _Undefined,
  }) {
    return UsertTicket(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      user: user is _i2.UserInfo? ? user : this.user?.copyWith(),
      ticketMasterId: ticketMasterId ?? this.ticketMasterId,
      ticketMaster: ticketMaster is _i3.TicketMaster?
          ? ticketMaster
          : this.ticketMaster?.copyWith(),
    );
  }
}

class UsertTicketTable extends _i1.Table {
  UsertTicketTable({super.tableRelation}) : super(tableName: 'user_ticket') {
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    ticketMasterId = _i1.ColumnInt(
      'ticketMasterId',
      this,
    );
  }

  late final _i1.ColumnInt userId;

  _i2.UserInfoTable? _user;

  late final _i1.ColumnInt ticketMasterId;

  _i3.TicketMasterTable? _ticketMaster;

  _i2.UserInfoTable get user {
    if (_user != null) return _user!;
    _user = _i1.createRelationTable(
      relationFieldName: 'user',
      field: UsertTicket.t.userId,
      foreignField: _i2.UserInfo.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserInfoTable(tableRelation: foreignTableRelation),
    );
    return _user!;
  }

  _i3.TicketMasterTable get ticketMaster {
    if (_ticketMaster != null) return _ticketMaster!;
    _ticketMaster = _i1.createRelationTable(
      relationFieldName: 'ticketMaster',
      field: UsertTicket.t.ticketMasterId,
      foreignField: _i3.TicketMaster.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.TicketMasterTable(tableRelation: foreignTableRelation),
    );
    return _ticketMaster!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        userId,
        ticketMasterId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'user') {
      return user;
    }
    if (relationField == 'ticketMaster') {
      return ticketMaster;
    }
    return null;
  }
}

class UsertTicketInclude extends _i1.IncludeObject {
  UsertTicketInclude._({
    _i2.UserInfoInclude? user,
    _i3.TicketMasterInclude? ticketMaster,
  }) {
    _user = user;
    _ticketMaster = ticketMaster;
  }

  _i2.UserInfoInclude? _user;

  _i3.TicketMasterInclude? _ticketMaster;

  @override
  Map<String, _i1.Include?> get includes => {
        'user': _user,
        'ticketMaster': _ticketMaster,
      };

  @override
  _i1.Table get table => UsertTicket.t;
}

class UsertTicketIncludeList extends _i1.IncludeList {
  UsertTicketIncludeList._({
    _i1.WhereExpressionBuilder<UsertTicketTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(UsertTicket.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => UsertTicket.t;
}

class UsertTicketRepository {
  const UsertTicketRepository._();

  final attachRow = const UsertTicketAttachRowRepository._();

  Future<List<UsertTicket>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UsertTicketTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UsertTicketTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UsertTicketTable>? orderByList,
    _i1.Transaction? transaction,
    UsertTicketInclude? include,
  }) async {
    return session.db.find<UsertTicket>(
      where: where?.call(UsertTicket.t),
      orderBy: orderBy?.call(UsertTicket.t),
      orderByList: orderByList?.call(UsertTicket.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<UsertTicket?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UsertTicketTable>? where,
    int? offset,
    _i1.OrderByBuilder<UsertTicketTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UsertTicketTable>? orderByList,
    _i1.Transaction? transaction,
    UsertTicketInclude? include,
  }) async {
    return session.db.findFirstRow<UsertTicket>(
      where: where?.call(UsertTicket.t),
      orderBy: orderBy?.call(UsertTicket.t),
      orderByList: orderByList?.call(UsertTicket.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<UsertTicket?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    UsertTicketInclude? include,
  }) async {
    return session.db.findById<UsertTicket>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<UsertTicket>> insert(
    _i1.Session session,
    List<UsertTicket> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<UsertTicket>(
      rows,
      transaction: transaction,
    );
  }

  Future<UsertTicket> insertRow(
    _i1.Session session,
    UsertTicket row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<UsertTicket>(
      row,
      transaction: transaction,
    );
  }

  Future<List<UsertTicket>> update(
    _i1.Session session,
    List<UsertTicket> rows, {
    _i1.ColumnSelections<UsertTicketTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<UsertTicket>(
      rows,
      columns: columns?.call(UsertTicket.t),
      transaction: transaction,
    );
  }

  Future<UsertTicket> updateRow(
    _i1.Session session,
    UsertTicket row, {
    _i1.ColumnSelections<UsertTicketTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<UsertTicket>(
      row,
      columns: columns?.call(UsertTicket.t),
      transaction: transaction,
    );
  }

  Future<List<UsertTicket>> delete(
    _i1.Session session,
    List<UsertTicket> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<UsertTicket>(
      rows,
      transaction: transaction,
    );
  }

  Future<UsertTicket> deleteRow(
    _i1.Session session,
    UsertTicket row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<UsertTicket>(
      row,
      transaction: transaction,
    );
  }

  Future<List<UsertTicket>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<UsertTicketTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<UsertTicket>(
      where: where(UsertTicket.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UsertTicketTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<UsertTicket>(
      where: where?.call(UsertTicket.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class UsertTicketAttachRowRepository {
  const UsertTicketAttachRowRepository._();

  Future<void> user(
    _i1.Session session,
    UsertTicket usertTicket,
    _i2.UserInfo user,
  ) async {
    if (usertTicket.id == null) {
      throw ArgumentError.notNull('usertTicket.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $usertTicket = usertTicket.copyWith(userId: user.id);
    await session.db.updateRow<UsertTicket>(
      $usertTicket,
      columns: [UsertTicket.t.userId],
    );
  }

  Future<void> ticketMaster(
    _i1.Session session,
    UsertTicket usertTicket,
    _i3.TicketMaster ticketMaster,
  ) async {
    if (usertTicket.id == null) {
      throw ArgumentError.notNull('usertTicket.id');
    }
    if (ticketMaster.id == null) {
      throw ArgumentError.notNull('ticketMaster.id');
    }

    var $usertTicket = usertTicket.copyWith(ticketMasterId: ticketMaster.id);
    await session.db.updateRow<UsertTicket>(
      $usertTicket,
      columns: [UsertTicket.t.ticketMasterId],
    );
  }
}
