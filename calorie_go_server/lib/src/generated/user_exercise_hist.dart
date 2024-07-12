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
import 'package:serverpod_serialization/serverpod_serialization.dart';

abstract class UserExerciseHist extends _i1.TableRow
    implements _i1.ProtocolSerialization {
  UserExerciseHist._({
    int? id,
    required this.userId,
    this.user,
    required this.updatedAt,
    required this.steps,
  }) : super(id);

  factory UserExerciseHist({
    int? id,
    required int userId,
    _i2.UserInfo? user,
    required DateTime updatedAt,
    required int steps,
  }) = _UserExerciseHistImpl;

  factory UserExerciseHist.fromJson(Map<String, dynamic> jsonSerialization) {
    return UserExerciseHist(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int,
      user: jsonSerialization['user'] == null
          ? null
          : _i2.UserInfo.fromJson(
              (jsonSerialization['user'] as Map<String, dynamic>)),
      updatedAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['updatedAt']),
      steps: jsonSerialization['steps'] as int,
    );
  }

  static final t = UserExerciseHistTable();

  static const db = UserExerciseHistRepository._();

  int userId;

  _i2.UserInfo? user;

  DateTime updatedAt;

  int steps;

  @override
  _i1.Table get table => t;

  UserExerciseHist copyWith({
    int? id,
    int? userId,
    _i2.UserInfo? user,
    DateTime? updatedAt,
    int? steps,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      if (user != null) 'user': user?.toJson(),
      'updatedAt': updatedAt.toJson(),
      'steps': steps,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      if (user != null) 'user': user?.toJsonForProtocol(),
      'updatedAt': updatedAt.toJson(),
      'steps': steps,
    };
  }

  static UserExerciseHistInclude include({_i2.UserInfoInclude? user}) {
    return UserExerciseHistInclude._(user: user);
  }

  static UserExerciseHistIncludeList includeList({
    _i1.WhereExpressionBuilder<UserExerciseHistTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UserExerciseHistTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserExerciseHistTable>? orderByList,
    UserExerciseHistInclude? include,
  }) {
    return UserExerciseHistIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(UserExerciseHist.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(UserExerciseHist.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _UserExerciseHistImpl extends UserExerciseHist {
  _UserExerciseHistImpl({
    int? id,
    required int userId,
    _i2.UserInfo? user,
    required DateTime updatedAt,
    required int steps,
  }) : super._(
          id: id,
          userId: userId,
          user: user,
          updatedAt: updatedAt,
          steps: steps,
        );

  @override
  UserExerciseHist copyWith({
    Object? id = _Undefined,
    int? userId,
    Object? user = _Undefined,
    DateTime? updatedAt,
    int? steps,
  }) {
    return UserExerciseHist(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      user: user is _i2.UserInfo? ? user : this.user?.copyWith(),
      updatedAt: updatedAt ?? this.updatedAt,
      steps: steps ?? this.steps,
    );
  }
}

class UserExerciseHistTable extends _i1.Table {
  UserExerciseHistTable({super.tableRelation})
      : super(tableName: 'user_exercise_hist') {
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    updatedAt = _i1.ColumnDateTime(
      'updatedAt',
      this,
    );
    steps = _i1.ColumnInt(
      'steps',
      this,
    );
  }

  late final _i1.ColumnInt userId;

  _i2.UserInfoTable? _user;

  late final _i1.ColumnDateTime updatedAt;

  late final _i1.ColumnInt steps;

  _i2.UserInfoTable get user {
    if (_user != null) return _user!;
    _user = _i1.createRelationTable(
      relationFieldName: 'user',
      field: UserExerciseHist.t.userId,
      foreignField: _i2.UserInfo.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserInfoTable(tableRelation: foreignTableRelation),
    );
    return _user!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        userId,
        updatedAt,
        steps,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'user') {
      return user;
    }
    return null;
  }
}

class UserExerciseHistInclude extends _i1.IncludeObject {
  UserExerciseHistInclude._({_i2.UserInfoInclude? user}) {
    _user = user;
  }

  _i2.UserInfoInclude? _user;

  @override
  Map<String, _i1.Include?> get includes => {'user': _user};

  @override
  _i1.Table get table => UserExerciseHist.t;
}

class UserExerciseHistIncludeList extends _i1.IncludeList {
  UserExerciseHistIncludeList._({
    _i1.WhereExpressionBuilder<UserExerciseHistTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(UserExerciseHist.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => UserExerciseHist.t;
}

class UserExerciseHistRepository {
  const UserExerciseHistRepository._();

  final attachRow = const UserExerciseHistAttachRowRepository._();

  Future<List<UserExerciseHist>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserExerciseHistTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UserExerciseHistTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserExerciseHistTable>? orderByList,
    _i1.Transaction? transaction,
    UserExerciseHistInclude? include,
  }) async {
    return session.db.find<UserExerciseHist>(
      where: where?.call(UserExerciseHist.t),
      orderBy: orderBy?.call(UserExerciseHist.t),
      orderByList: orderByList?.call(UserExerciseHist.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<UserExerciseHist?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserExerciseHistTable>? where,
    int? offset,
    _i1.OrderByBuilder<UserExerciseHistTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserExerciseHistTable>? orderByList,
    _i1.Transaction? transaction,
    UserExerciseHistInclude? include,
  }) async {
    return session.db.findFirstRow<UserExerciseHist>(
      where: where?.call(UserExerciseHist.t),
      orderBy: orderBy?.call(UserExerciseHist.t),
      orderByList: orderByList?.call(UserExerciseHist.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<UserExerciseHist?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    UserExerciseHistInclude? include,
  }) async {
    return session.db.findById<UserExerciseHist>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<UserExerciseHist>> insert(
    _i1.Session session,
    List<UserExerciseHist> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<UserExerciseHist>(
      rows,
      transaction: transaction,
    );
  }

  Future<UserExerciseHist> insertRow(
    _i1.Session session,
    UserExerciseHist row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<UserExerciseHist>(
      row,
      transaction: transaction,
    );
  }

  Future<List<UserExerciseHist>> update(
    _i1.Session session,
    List<UserExerciseHist> rows, {
    _i1.ColumnSelections<UserExerciseHistTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<UserExerciseHist>(
      rows,
      columns: columns?.call(UserExerciseHist.t),
      transaction: transaction,
    );
  }

  Future<UserExerciseHist> updateRow(
    _i1.Session session,
    UserExerciseHist row, {
    _i1.ColumnSelections<UserExerciseHistTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<UserExerciseHist>(
      row,
      columns: columns?.call(UserExerciseHist.t),
      transaction: transaction,
    );
  }

  Future<List<UserExerciseHist>> delete(
    _i1.Session session,
    List<UserExerciseHist> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<UserExerciseHist>(
      rows,
      transaction: transaction,
    );
  }

  Future<UserExerciseHist> deleteRow(
    _i1.Session session,
    UserExerciseHist row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<UserExerciseHist>(
      row,
      transaction: transaction,
    );
  }

  Future<List<UserExerciseHist>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<UserExerciseHistTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<UserExerciseHist>(
      where: where(UserExerciseHist.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserExerciseHistTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<UserExerciseHist>(
      where: where?.call(UserExerciseHist.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class UserExerciseHistAttachRowRepository {
  const UserExerciseHistAttachRowRepository._();

  Future<void> user(
    _i1.Session session,
    UserExerciseHist userExerciseHist,
    _i2.UserInfo user,
  ) async {
    if (userExerciseHist.id == null) {
      throw ArgumentError.notNull('userExerciseHist.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $userExerciseHist = userExerciseHist.copyWith(userId: user.id);
    await session.db.updateRow<UserExerciseHist>(
      $userExerciseHist,
      columns: [UserExerciseHist.t.userId],
    );
  }
}
