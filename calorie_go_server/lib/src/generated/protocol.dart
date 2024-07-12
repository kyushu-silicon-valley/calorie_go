/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod/protocol.dart' as _i2;
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as _i3;
import 'calorie_go_user.dart' as _i4;
import 'example.dart' as _i5;
import 'exercise.dart' as _i6;
import 'monster_image.dart' as _i7;
import 'monsters.dart' as _i8;
import 'ticket_master.dart' as _i9;
import 'ticket_type.dart' as _i10;
import 'user_exercise_hist.dart' as _i11;
import 'user_monster_feature.dart' as _i12;
import 'user_ticket.dart' as _i13;
import 'package:calorie_go_server/src/generated/exercise.dart' as _i14;
import 'package:calorie_go_server/src/generated/user_exercise_hist.dart'
    as _i15;
export 'calorie_go_user.dart';
export 'example.dart';
export 'exercise.dart';
export 'monster_image.dart';
export 'monsters.dart';
export 'ticket_master.dart';
export 'ticket_type.dart';
export 'user_exercise_hist.dart';
export 'user_monster_feature.dart';
export 'user_ticket.dart';

class Protocol extends _i1.SerializationManagerServer {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  static final List<_i2.TableDefinition> targetTableDefinitions = [
    _i2.TableDefinition(
      name: 'calorie_go_user',
      dartName: 'CalorieGoUser',
      schema: 'public',
      module: 'calorie_go',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'calorie_go_user_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'authId',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'nickname',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'calorie_go_user_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'exercise',
      dartName: 'Exercise',
      schema: 'public',
      module: 'calorie_go',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'exercise_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'userId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'startedAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'endedAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _i2.ColumnDefinition(
          name: 'totalSteps',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'exercise_fk_0',
          columns: ['userId'],
          referenceTable: 'serverpod_user_info',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        )
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'exercise_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'monster',
      dartName: 'Monster',
      schema: 'public',
      module: 'calorie_go',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'monster_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'monsterImageIdId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'userId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'monster_fk_0',
          columns: ['monsterImageIdId'],
          referenceTable: 'monster_image',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'monster_fk_1',
          columns: ['userId'],
          referenceTable: 'serverpod_user_info',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'monster_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'monster_image',
      dartName: 'MonsterImage',
      schema: 'public',
      module: 'calorie_go',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'monster_image_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'imageUrl',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'monster_image_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'ticketm_master',
      dartName: 'TicketMaster',
      schema: 'public',
      module: 'calorie_go',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'ticketm_master_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'desctiption',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'prompt',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'ticketType',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'protocol:TicketType',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'ticketm_master_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'user_exercise_hist',
      dartName: 'UserExerciseHist',
      schema: 'public',
      module: 'calorie_go',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'user_exercise_hist_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'userId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'updatedAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'steps',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'user_exercise_hist_fk_0',
          columns: ['userId'],
          referenceTable: 'serverpod_user_info',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        )
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'user_exercise_hist_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'user_monster_feature',
      dartName: 'UserMonsterFeature',
      schema: 'public',
      module: 'calorie_go',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'user_monster_feature_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'userId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'feature',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'user_monster_feature_fk_0',
          columns: ['userId'],
          referenceTable: 'serverpod_user_info',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        )
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'user_monster_feature_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'user_ticket',
      dartName: 'UsertTicket',
      schema: 'public',
      module: 'calorie_go',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'user_ticket_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'userId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'ticketMasterId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'user_ticket_fk_0',
          columns: ['userId'],
          referenceTable: 'serverpod_user_info',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'user_ticket_fk_1',
          columns: ['ticketMasterId'],
          referenceTable: 'ticketm_master',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'user_ticket_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    ..._i3.Protocol.targetTableDefinitions,
    ..._i2.Protocol.targetTableDefinitions,
  ];

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (t == _i4.CalorieGoUser) {
      return _i4.CalorieGoUser.fromJson(data) as T;
    }
    if (t == _i5.Example) {
      return _i5.Example.fromJson(data) as T;
    }
    if (t == _i6.Exercise) {
      return _i6.Exercise.fromJson(data) as T;
    }
    if (t == _i7.MonsterImage) {
      return _i7.MonsterImage.fromJson(data) as T;
    }
    if (t == _i8.Monster) {
      return _i8.Monster.fromJson(data) as T;
    }
    if (t == _i9.TicketMaster) {
      return _i9.TicketMaster.fromJson(data) as T;
    }
    if (t == _i10.TicketType) {
      return _i10.TicketType.fromJson(data) as T;
    }
    if (t == _i11.UserExerciseHist) {
      return _i11.UserExerciseHist.fromJson(data) as T;
    }
    if (t == _i12.UserMonsterFeature) {
      return _i12.UserMonsterFeature.fromJson(data) as T;
    }
    if (t == _i13.UsertTicket) {
      return _i13.UsertTicket.fromJson(data) as T;
    }
    if (t == _i1.getType<_i4.CalorieGoUser?>()) {
      return (data != null ? _i4.CalorieGoUser.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.Example?>()) {
      return (data != null ? _i5.Example.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.Exercise?>()) {
      return (data != null ? _i6.Exercise.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.MonsterImage?>()) {
      return (data != null ? _i7.MonsterImage.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i8.Monster?>()) {
      return (data != null ? _i8.Monster.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i9.TicketMaster?>()) {
      return (data != null ? _i9.TicketMaster.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i10.TicketType?>()) {
      return (data != null ? _i10.TicketType.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i11.UserExerciseHist?>()) {
      return (data != null ? _i11.UserExerciseHist.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i12.UserMonsterFeature?>()) {
      return (data != null ? _i12.UserMonsterFeature.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i13.UsertTicket?>()) {
      return (data != null ? _i13.UsertTicket.fromJson(data) : null) as T;
    }
    if (t == List<_i14.Exercise>) {
      return (data as List).map((e) => deserialize<_i14.Exercise>(e)).toList()
          as dynamic;
    }
    if (t == _i1.getType<List<_i15.UserExerciseHist>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i15.UserExerciseHist>(e))
              .toList()
          : null) as dynamic;
    }
    try {
      return _i3.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    try {
      return _i2.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    String? className;
    className = _i3.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth.$className';
    }
    if (data is _i4.CalorieGoUser) {
      return 'CalorieGoUser';
    }
    if (data is _i5.Example) {
      return 'Example';
    }
    if (data is _i6.Exercise) {
      return 'Exercise';
    }
    if (data is _i7.MonsterImage) {
      return 'MonsterImage';
    }
    if (data is _i8.Monster) {
      return 'Monster';
    }
    if (data is _i9.TicketMaster) {
      return 'TicketMaster';
    }
    if (data is _i10.TicketType) {
      return 'TicketType';
    }
    if (data is _i11.UserExerciseHist) {
      return 'UserExerciseHist';
    }
    if (data is _i12.UserMonsterFeature) {
      return 'UserMonsterFeature';
    }
    if (data is _i13.UsertTicket) {
      return 'UsertTicket';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'].startsWith('serverpod_auth.')) {
      data['className'] = data['className'].substring(15);
      return _i3.Protocol().deserializeByClassName(data);
    }
    if (data['className'] == 'CalorieGoUser') {
      return deserialize<_i4.CalorieGoUser>(data['data']);
    }
    if (data['className'] == 'Example') {
      return deserialize<_i5.Example>(data['data']);
    }
    if (data['className'] == 'Exercise') {
      return deserialize<_i6.Exercise>(data['data']);
    }
    if (data['className'] == 'MonsterImage') {
      return deserialize<_i7.MonsterImage>(data['data']);
    }
    if (data['className'] == 'Monster') {
      return deserialize<_i8.Monster>(data['data']);
    }
    if (data['className'] == 'TicketMaster') {
      return deserialize<_i9.TicketMaster>(data['data']);
    }
    if (data['className'] == 'TicketType') {
      return deserialize<_i10.TicketType>(data['data']);
    }
    if (data['className'] == 'UserExerciseHist') {
      return deserialize<_i11.UserExerciseHist>(data['data']);
    }
    if (data['className'] == 'UserMonsterFeature') {
      return deserialize<_i12.UserMonsterFeature>(data['data']);
    }
    if (data['className'] == 'UsertTicket') {
      return deserialize<_i13.UsertTicket>(data['data']);
    }
    return super.deserializeByClassName(data);
  }

  @override
  _i1.Table? getTableForType(Type t) {
    {
      var table = _i3.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    {
      var table = _i2.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    switch (t) {
      case _i4.CalorieGoUser:
        return _i4.CalorieGoUser.t;
      case _i6.Exercise:
        return _i6.Exercise.t;
      case _i7.MonsterImage:
        return _i7.MonsterImage.t;
      case _i8.Monster:
        return _i8.Monster.t;
      case _i9.TicketMaster:
        return _i9.TicketMaster.t;
      case _i11.UserExerciseHist:
        return _i11.UserExerciseHist.t;
      case _i12.UserMonsterFeature:
        return _i12.UserMonsterFeature.t;
      case _i13.UsertTicket:
        return _i13.UsertTicket.t;
    }
    return null;
  }

  @override
  List<_i2.TableDefinition> getTargetTableDefinitions() =>
      targetTableDefinitions;

  @override
  String getModuleName() => 'calorie_go';
}
