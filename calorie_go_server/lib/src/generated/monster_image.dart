/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class MonsterImage extends _i1.TableRow
    implements _i1.ProtocolSerialization {
  MonsterImage._({
    int? id,
    required this.imageUrl,
  }) : super(id);

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

  static final t = MonsterImageTable();

  static const db = MonsterImageRepository._();

  String imageUrl;

  @override
  _i1.Table get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'imageUrl': imageUrl,
    };
  }

  static MonsterImageInclude include() {
    return MonsterImageInclude._();
  }

  static MonsterImageIncludeList includeList({
    _i1.WhereExpressionBuilder<MonsterImageTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MonsterImageTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MonsterImageTable>? orderByList,
    MonsterImageInclude? include,
  }) {
    return MonsterImageIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(MonsterImage.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(MonsterImage.t),
      include: include,
    );
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

class MonsterImageTable extends _i1.Table {
  MonsterImageTable({super.tableRelation}) : super(tableName: 'monster_image') {
    imageUrl = _i1.ColumnString(
      'imageUrl',
      this,
    );
  }

  late final _i1.ColumnString imageUrl;

  @override
  List<_i1.Column> get columns => [
        id,
        imageUrl,
      ];
}

class MonsterImageInclude extends _i1.IncludeObject {
  MonsterImageInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => MonsterImage.t;
}

class MonsterImageIncludeList extends _i1.IncludeList {
  MonsterImageIncludeList._({
    _i1.WhereExpressionBuilder<MonsterImageTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(MonsterImage.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => MonsterImage.t;
}

class MonsterImageRepository {
  const MonsterImageRepository._();

  Future<List<MonsterImage>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MonsterImageTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MonsterImageTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MonsterImageTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<MonsterImage>(
      where: where?.call(MonsterImage.t),
      orderBy: orderBy?.call(MonsterImage.t),
      orderByList: orderByList?.call(MonsterImage.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<MonsterImage?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MonsterImageTable>? where,
    int? offset,
    _i1.OrderByBuilder<MonsterImageTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MonsterImageTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<MonsterImage>(
      where: where?.call(MonsterImage.t),
      orderBy: orderBy?.call(MonsterImage.t),
      orderByList: orderByList?.call(MonsterImage.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<MonsterImage?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<MonsterImage>(
      id,
      transaction: transaction,
    );
  }

  Future<List<MonsterImage>> insert(
    _i1.Session session,
    List<MonsterImage> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<MonsterImage>(
      rows,
      transaction: transaction,
    );
  }

  Future<MonsterImage> insertRow(
    _i1.Session session,
    MonsterImage row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<MonsterImage>(
      row,
      transaction: transaction,
    );
  }

  Future<List<MonsterImage>> update(
    _i1.Session session,
    List<MonsterImage> rows, {
    _i1.ColumnSelections<MonsterImageTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<MonsterImage>(
      rows,
      columns: columns?.call(MonsterImage.t),
      transaction: transaction,
    );
  }

  Future<MonsterImage> updateRow(
    _i1.Session session,
    MonsterImage row, {
    _i1.ColumnSelections<MonsterImageTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<MonsterImage>(
      row,
      columns: columns?.call(MonsterImage.t),
      transaction: transaction,
    );
  }

  Future<List<MonsterImage>> delete(
    _i1.Session session,
    List<MonsterImage> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<MonsterImage>(
      rows,
      transaction: transaction,
    );
  }

  Future<MonsterImage> deleteRow(
    _i1.Session session,
    MonsterImage row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<MonsterImage>(
      row,
      transaction: transaction,
    );
  }

  Future<List<MonsterImage>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<MonsterImageTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<MonsterImage>(
      where: where(MonsterImage.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MonsterImageTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<MonsterImage>(
      where: where?.call(MonsterImage.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
