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

abstract class UserMonsterFeature extends _i1.TableRow
    implements _i1.ProtocolSerialization {
  UserMonsterFeature._({
    int? id,
    required this.userId,
    this.user,
    required this.feature,
  }) : super(id);

  factory UserMonsterFeature({
    int? id,
    required int userId,
    _i2.UserInfo? user,
    required String feature,
  }) = _UserMonsterFeatureImpl;

  factory UserMonsterFeature.fromJson(Map<String, dynamic> jsonSerialization) {
    return UserMonsterFeature(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int,
      user: jsonSerialization['user'] == null
          ? null
          : _i2.UserInfo.fromJson(
              (jsonSerialization['user'] as Map<String, dynamic>)),
      feature: jsonSerialization['feature'] as String,
    );
  }

  static final t = UserMonsterFeatureTable();

  static const db = UserMonsterFeatureRepository._();

  int userId;

  _i2.UserInfo? user;

  String feature;

  @override
  _i1.Table get table => t;

  UserMonsterFeature copyWith({
    int? id,
    int? userId,
    _i2.UserInfo? user,
    String? feature,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      if (user != null) 'user': user?.toJson(),
      'feature': feature,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      if (user != null) 'user': user?.toJsonForProtocol(),
      'feature': feature,
    };
  }

  static UserMonsterFeatureInclude include({_i2.UserInfoInclude? user}) {
    return UserMonsterFeatureInclude._(user: user);
  }

  static UserMonsterFeatureIncludeList includeList({
    _i1.WhereExpressionBuilder<UserMonsterFeatureTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UserMonsterFeatureTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserMonsterFeatureTable>? orderByList,
    UserMonsterFeatureInclude? include,
  }) {
    return UserMonsterFeatureIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(UserMonsterFeature.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(UserMonsterFeature.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _UserMonsterFeatureImpl extends UserMonsterFeature {
  _UserMonsterFeatureImpl({
    int? id,
    required int userId,
    _i2.UserInfo? user,
    required String feature,
  }) : super._(
          id: id,
          userId: userId,
          user: user,
          feature: feature,
        );

  @override
  UserMonsterFeature copyWith({
    Object? id = _Undefined,
    int? userId,
    Object? user = _Undefined,
    String? feature,
  }) {
    return UserMonsterFeature(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      user: user is _i2.UserInfo? ? user : this.user?.copyWith(),
      feature: feature ?? this.feature,
    );
  }
}

class UserMonsterFeatureTable extends _i1.Table {
  UserMonsterFeatureTable({super.tableRelation})
      : super(tableName: 'user_monster_feature') {
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    feature = _i1.ColumnString(
      'feature',
      this,
    );
  }

  late final _i1.ColumnInt userId;

  _i2.UserInfoTable? _user;

  late final _i1.ColumnString feature;

  _i2.UserInfoTable get user {
    if (_user != null) return _user!;
    _user = _i1.createRelationTable(
      relationFieldName: 'user',
      field: UserMonsterFeature.t.userId,
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
        feature,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'user') {
      return user;
    }
    return null;
  }
}

class UserMonsterFeatureInclude extends _i1.IncludeObject {
  UserMonsterFeatureInclude._({_i2.UserInfoInclude? user}) {
    _user = user;
  }

  _i2.UserInfoInclude? _user;

  @override
  Map<String, _i1.Include?> get includes => {'user': _user};

  @override
  _i1.Table get table => UserMonsterFeature.t;
}

class UserMonsterFeatureIncludeList extends _i1.IncludeList {
  UserMonsterFeatureIncludeList._({
    _i1.WhereExpressionBuilder<UserMonsterFeatureTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(UserMonsterFeature.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => UserMonsterFeature.t;
}

class UserMonsterFeatureRepository {
  const UserMonsterFeatureRepository._();

  final attachRow = const UserMonsterFeatureAttachRowRepository._();

  Future<List<UserMonsterFeature>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserMonsterFeatureTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UserMonsterFeatureTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserMonsterFeatureTable>? orderByList,
    _i1.Transaction? transaction,
    UserMonsterFeatureInclude? include,
  }) async {
    return session.db.find<UserMonsterFeature>(
      where: where?.call(UserMonsterFeature.t),
      orderBy: orderBy?.call(UserMonsterFeature.t),
      orderByList: orderByList?.call(UserMonsterFeature.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<UserMonsterFeature?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserMonsterFeatureTable>? where,
    int? offset,
    _i1.OrderByBuilder<UserMonsterFeatureTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserMonsterFeatureTable>? orderByList,
    _i1.Transaction? transaction,
    UserMonsterFeatureInclude? include,
  }) async {
    return session.db.findFirstRow<UserMonsterFeature>(
      where: where?.call(UserMonsterFeature.t),
      orderBy: orderBy?.call(UserMonsterFeature.t),
      orderByList: orderByList?.call(UserMonsterFeature.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<UserMonsterFeature?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    UserMonsterFeatureInclude? include,
  }) async {
    return session.db.findById<UserMonsterFeature>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<UserMonsterFeature>> insert(
    _i1.Session session,
    List<UserMonsterFeature> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<UserMonsterFeature>(
      rows,
      transaction: transaction,
    );
  }

  Future<UserMonsterFeature> insertRow(
    _i1.Session session,
    UserMonsterFeature row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<UserMonsterFeature>(
      row,
      transaction: transaction,
    );
  }

  Future<List<UserMonsterFeature>> update(
    _i1.Session session,
    List<UserMonsterFeature> rows, {
    _i1.ColumnSelections<UserMonsterFeatureTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<UserMonsterFeature>(
      rows,
      columns: columns?.call(UserMonsterFeature.t),
      transaction: transaction,
    );
  }

  Future<UserMonsterFeature> updateRow(
    _i1.Session session,
    UserMonsterFeature row, {
    _i1.ColumnSelections<UserMonsterFeatureTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<UserMonsterFeature>(
      row,
      columns: columns?.call(UserMonsterFeature.t),
      transaction: transaction,
    );
  }

  Future<List<UserMonsterFeature>> delete(
    _i1.Session session,
    List<UserMonsterFeature> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<UserMonsterFeature>(
      rows,
      transaction: transaction,
    );
  }

  Future<UserMonsterFeature> deleteRow(
    _i1.Session session,
    UserMonsterFeature row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<UserMonsterFeature>(
      row,
      transaction: transaction,
    );
  }

  Future<List<UserMonsterFeature>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<UserMonsterFeatureTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<UserMonsterFeature>(
      where: where(UserMonsterFeature.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserMonsterFeatureTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<UserMonsterFeature>(
      where: where?.call(UserMonsterFeature.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class UserMonsterFeatureAttachRowRepository {
  const UserMonsterFeatureAttachRowRepository._();

  Future<void> user(
    _i1.Session session,
    UserMonsterFeature userMonsterFeature,
    _i2.UserInfo user,
  ) async {
    if (userMonsterFeature.id == null) {
      throw ArgumentError.notNull('userMonsterFeature.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $userMonsterFeature = userMonsterFeature.copyWith(userId: user.id);
    await session.db.updateRow<UserMonsterFeature>(
      $userMonsterFeature,
      columns: [UserMonsterFeature.t.userId],
    );
  }
}
