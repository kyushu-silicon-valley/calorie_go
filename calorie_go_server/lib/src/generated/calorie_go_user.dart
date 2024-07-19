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

abstract class CalorieGoUser extends _i1.TableRow
    implements _i1.ProtocolSerialization {
  CalorieGoUser._({
    int? id,
    required this.authId,
    required this.authUserId,
    required this.nickname,
    required this.gender,
  }) : super(id);

  factory CalorieGoUser({
    int? id,
    required String authId,
    required int authUserId,
    required String nickname,
    required _i2.Gender gender,
  }) = _CalorieGoUserImpl;

  factory CalorieGoUser.fromJson(Map<String, dynamic> jsonSerialization) {
    return CalorieGoUser(
      id: jsonSerialization['id'] as int?,
      authId: jsonSerialization['authId'] as String,
      authUserId: jsonSerialization['authUserId'] as int,
      nickname: jsonSerialization['nickname'] as String,
      gender: _i2.Gender.fromJson((jsonSerialization['gender'] as int)),
    );
  }

  static final t = CalorieGoUserTable();

  static const db = CalorieGoUserRepository._();

  String authId;

  int authUserId;

  String nickname;

  _i2.Gender gender;

  @override
  _i1.Table get table => t;

  CalorieGoUser copyWith({
    int? id,
    String? authId,
    int? authUserId,
    String? nickname,
    _i2.Gender? gender,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'authId': authId,
      'authUserId': authUserId,
      'nickname': nickname,
      'gender': gender.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'authId': authId,
      'authUserId': authUserId,
      'nickname': nickname,
      'gender': gender.toJson(),
    };
  }

  static CalorieGoUserInclude include() {
    return CalorieGoUserInclude._();
  }

  static CalorieGoUserIncludeList includeList({
    _i1.WhereExpressionBuilder<CalorieGoUserTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<CalorieGoUserTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CalorieGoUserTable>? orderByList,
    CalorieGoUserInclude? include,
  }) {
    return CalorieGoUserIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CalorieGoUser.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(CalorieGoUser.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CalorieGoUserImpl extends CalorieGoUser {
  _CalorieGoUserImpl({
    int? id,
    required String authId,
    required int authUserId,
    required String nickname,
    required _i2.Gender gender,
  }) : super._(
          id: id,
          authId: authId,
          authUserId: authUserId,
          nickname: nickname,
          gender: gender,
        );

  @override
  CalorieGoUser copyWith({
    Object? id = _Undefined,
    String? authId,
    int? authUserId,
    String? nickname,
    _i2.Gender? gender,
  }) {
    return CalorieGoUser(
      id: id is int? ? id : this.id,
      authId: authId ?? this.authId,
      authUserId: authUserId ?? this.authUserId,
      nickname: nickname ?? this.nickname,
      gender: gender ?? this.gender,
    );
  }
}

class CalorieGoUserTable extends _i1.Table {
  CalorieGoUserTable({super.tableRelation})
      : super(tableName: 'calorie_go_user') {
    authId = _i1.ColumnString(
      'authId',
      this,
    );
    authUserId = _i1.ColumnInt(
      'authUserId',
      this,
    );
    nickname = _i1.ColumnString(
      'nickname',
      this,
    );
    gender = _i1.ColumnEnum(
      'gender',
      this,
      _i1.EnumSerialization.byIndex,
    );
  }

  late final _i1.ColumnString authId;

  late final _i1.ColumnInt authUserId;

  late final _i1.ColumnString nickname;

  late final _i1.ColumnEnum<_i2.Gender> gender;

  @override
  List<_i1.Column> get columns => [
        id,
        authId,
        authUserId,
        nickname,
        gender,
      ];
}

class CalorieGoUserInclude extends _i1.IncludeObject {
  CalorieGoUserInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => CalorieGoUser.t;
}

class CalorieGoUserIncludeList extends _i1.IncludeList {
  CalorieGoUserIncludeList._({
    _i1.WhereExpressionBuilder<CalorieGoUserTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CalorieGoUser.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => CalorieGoUser.t;
}

class CalorieGoUserRepository {
  const CalorieGoUserRepository._();

  Future<List<CalorieGoUser>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CalorieGoUserTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<CalorieGoUserTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CalorieGoUserTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<CalorieGoUser>(
      where: where?.call(CalorieGoUser.t),
      orderBy: orderBy?.call(CalorieGoUser.t),
      orderByList: orderByList?.call(CalorieGoUser.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<CalorieGoUser?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CalorieGoUserTable>? where,
    int? offset,
    _i1.OrderByBuilder<CalorieGoUserTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CalorieGoUserTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<CalorieGoUser>(
      where: where?.call(CalorieGoUser.t),
      orderBy: orderBy?.call(CalorieGoUser.t),
      orderByList: orderByList?.call(CalorieGoUser.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<CalorieGoUser?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<CalorieGoUser>(
      id,
      transaction: transaction,
    );
  }

  Future<List<CalorieGoUser>> insert(
    _i1.Session session,
    List<CalorieGoUser> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<CalorieGoUser>(
      rows,
      transaction: transaction,
    );
  }

  Future<CalorieGoUser> insertRow(
    _i1.Session session,
    CalorieGoUser row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<CalorieGoUser>(
      row,
      transaction: transaction,
    );
  }

  Future<List<CalorieGoUser>> update(
    _i1.Session session,
    List<CalorieGoUser> rows, {
    _i1.ColumnSelections<CalorieGoUserTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<CalorieGoUser>(
      rows,
      columns: columns?.call(CalorieGoUser.t),
      transaction: transaction,
    );
  }

  Future<CalorieGoUser> updateRow(
    _i1.Session session,
    CalorieGoUser row, {
    _i1.ColumnSelections<CalorieGoUserTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<CalorieGoUser>(
      row,
      columns: columns?.call(CalorieGoUser.t),
      transaction: transaction,
    );
  }

  Future<List<CalorieGoUser>> delete(
    _i1.Session session,
    List<CalorieGoUser> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<CalorieGoUser>(
      rows,
      transaction: transaction,
    );
  }

  Future<CalorieGoUser> deleteRow(
    _i1.Session session,
    CalorieGoUser row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CalorieGoUser>(
      row,
      transaction: transaction,
    );
  }

  Future<List<CalorieGoUser>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<CalorieGoUserTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<CalorieGoUser>(
      where: where(CalorieGoUser.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CalorieGoUserTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<CalorieGoUser>(
      where: where?.call(CalorieGoUser.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
