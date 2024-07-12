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
import 'package:serverpod_serialization/serverpod_serialization.dart';

abstract class Exercise extends _i1.TableRow
    implements _i1.ProtocolSerialization {
  Exercise._({
    int? id,
    required this.userId,
    this.user,
    required this.startedAt,
    this.endedAt,
    required this.totalSteps,
  }) : super(id);

  factory Exercise({
    int? id,
    required int userId,
    _i2.CalorieGoUser? user,
    required DateTime startedAt,
    DateTime? endedAt,
    required int totalSteps,
  }) = _ExerciseImpl;

  factory Exercise.fromJson(Map<String, dynamic> jsonSerialization) {
    return Exercise(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int,
      user: jsonSerialization['user'] == null
          ? null
          : _i2.CalorieGoUser.fromJson(
              (jsonSerialization['user'] as Map<String, dynamic>)),
      startedAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['startedAt']),
      endedAt: jsonSerialization['endedAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['endedAt']),
      totalSteps: jsonSerialization['totalSteps'] as int,
    );
  }

  static final t = ExerciseTable();

  static const db = ExerciseRepository._();

  int userId;

  _i2.CalorieGoUser? user;

  DateTime startedAt;

  DateTime? endedAt;

  int totalSteps;

  @override
  _i1.Table get table => t;

  Exercise copyWith({
    int? id,
    int? userId,
    _i2.CalorieGoUser? user,
    DateTime? startedAt,
    DateTime? endedAt,
    int? totalSteps,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      if (user != null) 'user': user?.toJson(),
      'startedAt': startedAt.toJson(),
      if (endedAt != null) 'endedAt': endedAt?.toJson(),
      'totalSteps': totalSteps,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      if (user != null) 'user': user?.toJsonForProtocol(),
      'startedAt': startedAt.toJson(),
      if (endedAt != null) 'endedAt': endedAt?.toJson(),
      'totalSteps': totalSteps,
    };
  }

  static ExerciseInclude include({_i2.CalorieGoUserInclude? user}) {
    return ExerciseInclude._(user: user);
  }

  static ExerciseIncludeList includeList({
    _i1.WhereExpressionBuilder<ExerciseTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ExerciseTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ExerciseTable>? orderByList,
    ExerciseInclude? include,
  }) {
    return ExerciseIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Exercise.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Exercise.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ExerciseImpl extends Exercise {
  _ExerciseImpl({
    int? id,
    required int userId,
    _i2.CalorieGoUser? user,
    required DateTime startedAt,
    DateTime? endedAt,
    required int totalSteps,
  }) : super._(
          id: id,
          userId: userId,
          user: user,
          startedAt: startedAt,
          endedAt: endedAt,
          totalSteps: totalSteps,
        );

  @override
  Exercise copyWith({
    Object? id = _Undefined,
    int? userId,
    Object? user = _Undefined,
    DateTime? startedAt,
    Object? endedAt = _Undefined,
    int? totalSteps,
  }) {
    return Exercise(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      user: user is _i2.CalorieGoUser? ? user : this.user?.copyWith(),
      startedAt: startedAt ?? this.startedAt,
      endedAt: endedAt is DateTime? ? endedAt : this.endedAt,
      totalSteps: totalSteps ?? this.totalSteps,
    );
  }
}

class ExerciseTable extends _i1.Table {
  ExerciseTable({super.tableRelation}) : super(tableName: 'exercise') {
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    startedAt = _i1.ColumnDateTime(
      'startedAt',
      this,
    );
    endedAt = _i1.ColumnDateTime(
      'endedAt',
      this,
    );
    totalSteps = _i1.ColumnInt(
      'totalSteps',
      this,
    );
  }

  late final _i1.ColumnInt userId;

  _i2.CalorieGoUserTable? _user;

  late final _i1.ColumnDateTime startedAt;

  late final _i1.ColumnDateTime endedAt;

  late final _i1.ColumnInt totalSteps;

  _i2.CalorieGoUserTable get user {
    if (_user != null) return _user!;
    _user = _i1.createRelationTable(
      relationFieldName: 'user',
      field: Exercise.t.userId,
      foreignField: _i2.CalorieGoUser.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.CalorieGoUserTable(tableRelation: foreignTableRelation),
    );
    return _user!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        userId,
        startedAt,
        endedAt,
        totalSteps,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'user') {
      return user;
    }
    return null;
  }
}

class ExerciseInclude extends _i1.IncludeObject {
  ExerciseInclude._({_i2.CalorieGoUserInclude? user}) {
    _user = user;
  }

  _i2.CalorieGoUserInclude? _user;

  @override
  Map<String, _i1.Include?> get includes => {'user': _user};

  @override
  _i1.Table get table => Exercise.t;
}

class ExerciseIncludeList extends _i1.IncludeList {
  ExerciseIncludeList._({
    _i1.WhereExpressionBuilder<ExerciseTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Exercise.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Exercise.t;
}

class ExerciseRepository {
  const ExerciseRepository._();

  final attachRow = const ExerciseAttachRowRepository._();

  Future<List<Exercise>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ExerciseTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ExerciseTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ExerciseTable>? orderByList,
    _i1.Transaction? transaction,
    ExerciseInclude? include,
  }) async {
    return session.db.find<Exercise>(
      where: where?.call(Exercise.t),
      orderBy: orderBy?.call(Exercise.t),
      orderByList: orderByList?.call(Exercise.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Exercise?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ExerciseTable>? where,
    int? offset,
    _i1.OrderByBuilder<ExerciseTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ExerciseTable>? orderByList,
    _i1.Transaction? transaction,
    ExerciseInclude? include,
  }) async {
    return session.db.findFirstRow<Exercise>(
      where: where?.call(Exercise.t),
      orderBy: orderBy?.call(Exercise.t),
      orderByList: orderByList?.call(Exercise.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Exercise?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    ExerciseInclude? include,
  }) async {
    return session.db.findById<Exercise>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<Exercise>> insert(
    _i1.Session session,
    List<Exercise> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Exercise>(
      rows,
      transaction: transaction,
    );
  }

  Future<Exercise> insertRow(
    _i1.Session session,
    Exercise row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Exercise>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Exercise>> update(
    _i1.Session session,
    List<Exercise> rows, {
    _i1.ColumnSelections<ExerciseTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Exercise>(
      rows,
      columns: columns?.call(Exercise.t),
      transaction: transaction,
    );
  }

  Future<Exercise> updateRow(
    _i1.Session session,
    Exercise row, {
    _i1.ColumnSelections<ExerciseTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Exercise>(
      row,
      columns: columns?.call(Exercise.t),
      transaction: transaction,
    );
  }

  Future<List<Exercise>> delete(
    _i1.Session session,
    List<Exercise> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Exercise>(
      rows,
      transaction: transaction,
    );
  }

  Future<Exercise> deleteRow(
    _i1.Session session,
    Exercise row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Exercise>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Exercise>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ExerciseTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Exercise>(
      where: where(Exercise.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ExerciseTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Exercise>(
      where: where?.call(Exercise.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class ExerciseAttachRowRepository {
  const ExerciseAttachRowRepository._();

  Future<void> user(
    _i1.Session session,
    Exercise exercise,
    _i2.CalorieGoUser user,
  ) async {
    if (exercise.id == null) {
      throw ArgumentError.notNull('exercise.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $exercise = exercise.copyWith(userId: user.id);
    await session.db.updateRow<Exercise>(
      $exercise,
      columns: [Exercise.t.userId],
    );
  }
}
