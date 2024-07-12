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
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as _i3;

abstract class Monster extends _i1.TableRow
    implements _i1.ProtocolSerialization {
  Monster._({
    int? id,
    required this.name,
    required this.monsterImageIdId,
    this.monsterImageId,
    required this.userId,
    this.user,
  }) : super(id);

  factory Monster({
    int? id,
    required String name,
    required int monsterImageIdId,
    _i2.MonsterImage? monsterImageId,
    required int userId,
    _i3.UserInfo? user,
  }) = _MonsterImpl;

  factory Monster.fromJson(Map<String, dynamic> jsonSerialization) {
    return Monster(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      monsterImageIdId: jsonSerialization['monsterImageIdId'] as int,
      monsterImageId: jsonSerialization['monsterImageId'] == null
          ? null
          : _i2.MonsterImage.fromJson(
              (jsonSerialization['monsterImageId'] as Map<String, dynamic>)),
      userId: jsonSerialization['userId'] as int,
      user: jsonSerialization['user'] == null
          ? null
          : _i3.UserInfo.fromJson(
              (jsonSerialization['user'] as Map<String, dynamic>)),
    );
  }

  static final t = MonsterTable();

  static const db = MonsterRepository._();

  String name;

  int monsterImageIdId;

  _i2.MonsterImage? monsterImageId;

  int userId;

  _i3.UserInfo? user;

  @override
  _i1.Table get table => t;

  Monster copyWith({
    int? id,
    String? name,
    int? monsterImageIdId,
    _i2.MonsterImage? monsterImageId,
    int? userId,
    _i3.UserInfo? user,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'monsterImageIdId': monsterImageIdId,
      if (monsterImageId != null) 'monsterImageId': monsterImageId?.toJson(),
      'userId': userId,
      if (user != null) 'user': user?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'monsterImageIdId': monsterImageIdId,
      if (monsterImageId != null)
        'monsterImageId': monsterImageId?.toJsonForProtocol(),
      'userId': userId,
      if (user != null) 'user': user?.toJsonForProtocol(),
    };
  }

  static MonsterInclude include({
    _i2.MonsterImageInclude? monsterImageId,
    _i3.UserInfoInclude? user,
  }) {
    return MonsterInclude._(
      monsterImageId: monsterImageId,
      user: user,
    );
  }

  static MonsterIncludeList includeList({
    _i1.WhereExpressionBuilder<MonsterTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MonsterTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MonsterTable>? orderByList,
    MonsterInclude? include,
  }) {
    return MonsterIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Monster.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Monster.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _MonsterImpl extends Monster {
  _MonsterImpl({
    int? id,
    required String name,
    required int monsterImageIdId,
    _i2.MonsterImage? monsterImageId,
    required int userId,
    _i3.UserInfo? user,
  }) : super._(
          id: id,
          name: name,
          monsterImageIdId: monsterImageIdId,
          monsterImageId: monsterImageId,
          userId: userId,
          user: user,
        );

  @override
  Monster copyWith({
    Object? id = _Undefined,
    String? name,
    int? monsterImageIdId,
    Object? monsterImageId = _Undefined,
    int? userId,
    Object? user = _Undefined,
  }) {
    return Monster(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      monsterImageIdId: monsterImageIdId ?? this.monsterImageIdId,
      monsterImageId: monsterImageId is _i2.MonsterImage?
          ? monsterImageId
          : this.monsterImageId?.copyWith(),
      userId: userId ?? this.userId,
      user: user is _i3.UserInfo? ? user : this.user?.copyWith(),
    );
  }
}

class MonsterTable extends _i1.Table {
  MonsterTable({super.tableRelation}) : super(tableName: 'monster') {
    name = _i1.ColumnString(
      'name',
      this,
    );
    monsterImageIdId = _i1.ColumnInt(
      'monsterImageIdId',
      this,
    );
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
  }

  late final _i1.ColumnString name;

  late final _i1.ColumnInt monsterImageIdId;

  _i2.MonsterImageTable? _monsterImageId;

  late final _i1.ColumnInt userId;

  _i3.UserInfoTable? _user;

  _i2.MonsterImageTable get monsterImageId {
    if (_monsterImageId != null) return _monsterImageId!;
    _monsterImageId = _i1.createRelationTable(
      relationFieldName: 'monsterImageId',
      field: Monster.t.monsterImageIdId,
      foreignField: _i2.MonsterImage.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.MonsterImageTable(tableRelation: foreignTableRelation),
    );
    return _monsterImageId!;
  }

  _i3.UserInfoTable get user {
    if (_user != null) return _user!;
    _user = _i1.createRelationTable(
      relationFieldName: 'user',
      field: Monster.t.userId,
      foreignField: _i3.UserInfo.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.UserInfoTable(tableRelation: foreignTableRelation),
    );
    return _user!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        monsterImageIdId,
        userId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'monsterImageId') {
      return monsterImageId;
    }
    if (relationField == 'user') {
      return user;
    }
    return null;
  }
}

class MonsterInclude extends _i1.IncludeObject {
  MonsterInclude._({
    _i2.MonsterImageInclude? monsterImageId,
    _i3.UserInfoInclude? user,
  }) {
    _monsterImageId = monsterImageId;
    _user = user;
  }

  _i2.MonsterImageInclude? _monsterImageId;

  _i3.UserInfoInclude? _user;

  @override
  Map<String, _i1.Include?> get includes => {
        'monsterImageId': _monsterImageId,
        'user': _user,
      };

  @override
  _i1.Table get table => Monster.t;
}

class MonsterIncludeList extends _i1.IncludeList {
  MonsterIncludeList._({
    _i1.WhereExpressionBuilder<MonsterTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Monster.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Monster.t;
}

class MonsterRepository {
  const MonsterRepository._();

  final attachRow = const MonsterAttachRowRepository._();

  Future<List<Monster>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MonsterTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MonsterTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MonsterTable>? orderByList,
    _i1.Transaction? transaction,
    MonsterInclude? include,
  }) async {
    return session.db.find<Monster>(
      where: where?.call(Monster.t),
      orderBy: orderBy?.call(Monster.t),
      orderByList: orderByList?.call(Monster.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Monster?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MonsterTable>? where,
    int? offset,
    _i1.OrderByBuilder<MonsterTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MonsterTable>? orderByList,
    _i1.Transaction? transaction,
    MonsterInclude? include,
  }) async {
    return session.db.findFirstRow<Monster>(
      where: where?.call(Monster.t),
      orderBy: orderBy?.call(Monster.t),
      orderByList: orderByList?.call(Monster.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Monster?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    MonsterInclude? include,
  }) async {
    return session.db.findById<Monster>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<Monster>> insert(
    _i1.Session session,
    List<Monster> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Monster>(
      rows,
      transaction: transaction,
    );
  }

  Future<Monster> insertRow(
    _i1.Session session,
    Monster row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Monster>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Monster>> update(
    _i1.Session session,
    List<Monster> rows, {
    _i1.ColumnSelections<MonsterTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Monster>(
      rows,
      columns: columns?.call(Monster.t),
      transaction: transaction,
    );
  }

  Future<Monster> updateRow(
    _i1.Session session,
    Monster row, {
    _i1.ColumnSelections<MonsterTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Monster>(
      row,
      columns: columns?.call(Monster.t),
      transaction: transaction,
    );
  }

  Future<List<Monster>> delete(
    _i1.Session session,
    List<Monster> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Monster>(
      rows,
      transaction: transaction,
    );
  }

  Future<Monster> deleteRow(
    _i1.Session session,
    Monster row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Monster>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Monster>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<MonsterTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Monster>(
      where: where(Monster.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MonsterTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Monster>(
      where: where?.call(Monster.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class MonsterAttachRowRepository {
  const MonsterAttachRowRepository._();

  Future<void> monsterImageId(
    _i1.Session session,
    Monster monster,
    _i2.MonsterImage monsterImageId,
  ) async {
    if (monster.id == null) {
      throw ArgumentError.notNull('monster.id');
    }
    if (monsterImageId.id == null) {
      throw ArgumentError.notNull('monsterImageId.id');
    }

    var $monster = monster.copyWith(monsterImageIdId: monsterImageId.id);
    await session.db.updateRow<Monster>(
      $monster,
      columns: [Monster.t.monsterImageIdId],
    );
  }

  Future<void> user(
    _i1.Session session,
    Monster monster,
    _i3.UserInfo user,
  ) async {
    if (monster.id == null) {
      throw ArgumentError.notNull('monster.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $monster = monster.copyWith(userId: user.id);
    await session.db.updateRow<Monster>(
      $monster,
      columns: [Monster.t.userId],
    );
  }
}
