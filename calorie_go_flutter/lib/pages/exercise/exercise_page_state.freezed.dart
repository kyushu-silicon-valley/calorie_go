// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ExercisePageState {
  Health get health => throw _privateConstructorUsedError;
  int get step => throw _privateConstructorUsedError;
  DateTime? get startDateTime => throw _privateConstructorUsedError;
  DateTime? get endDateTime => throw _privateConstructorUsedError;
  ExerciseState get state => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExercisePageStateCopyWith<ExercisePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExercisePageStateCopyWith<$Res> {
  factory $ExercisePageStateCopyWith(
          ExercisePageState value, $Res Function(ExercisePageState) then) =
      _$ExercisePageStateCopyWithImpl<$Res, ExercisePageState>;
  @useResult
  $Res call(
      {Health health,
      int step,
      DateTime? startDateTime,
      DateTime? endDateTime,
      ExerciseState state});
}

/// @nodoc
class _$ExercisePageStateCopyWithImpl<$Res, $Val extends ExercisePageState>
    implements $ExercisePageStateCopyWith<$Res> {
  _$ExercisePageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? health = null,
    Object? step = null,
    Object? startDateTime = freezed,
    Object? endDateTime = freezed,
    Object? state = null,
  }) {
    return _then(_value.copyWith(
      health: null == health
          ? _value.health
          : health // ignore: cast_nullable_to_non_nullable
              as Health,
      step: null == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as int,
      startDateTime: freezed == startDateTime
          ? _value.startDateTime
          : startDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDateTime: freezed == endDateTime
          ? _value.endDateTime
          : endDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as ExerciseState,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExercisePageStateImplCopyWith<$Res>
    implements $ExercisePageStateCopyWith<$Res> {
  factory _$$ExercisePageStateImplCopyWith(_$ExercisePageStateImpl value,
          $Res Function(_$ExercisePageStateImpl) then) =
      __$$ExercisePageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Health health,
      int step,
      DateTime? startDateTime,
      DateTime? endDateTime,
      ExerciseState state});
}

/// @nodoc
class __$$ExercisePageStateImplCopyWithImpl<$Res>
    extends _$ExercisePageStateCopyWithImpl<$Res, _$ExercisePageStateImpl>
    implements _$$ExercisePageStateImplCopyWith<$Res> {
  __$$ExercisePageStateImplCopyWithImpl(_$ExercisePageStateImpl _value,
      $Res Function(_$ExercisePageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? health = null,
    Object? step = null,
    Object? startDateTime = freezed,
    Object? endDateTime = freezed,
    Object? state = null,
  }) {
    return _then(_$ExercisePageStateImpl(
      health: null == health
          ? _value.health
          : health // ignore: cast_nullable_to_non_nullable
              as Health,
      step: null == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as int,
      startDateTime: freezed == startDateTime
          ? _value.startDateTime
          : startDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDateTime: freezed == endDateTime
          ? _value.endDateTime
          : endDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as ExerciseState,
    ));
  }
}

/// @nodoc

class _$ExercisePageStateImpl implements _ExercisePageState {
  const _$ExercisePageStateImpl(
      {required this.health,
      this.step = 0,
      this.startDateTime,
      this.endDateTime,
      this.state = ExerciseState.started});

  @override
  final Health health;
  @override
  @JsonKey()
  final int step;
  @override
  final DateTime? startDateTime;
  @override
  final DateTime? endDateTime;
  @override
  @JsonKey()
  final ExerciseState state;

  @override
  String toString() {
    return 'ExercisePageState(health: $health, step: $step, startDateTime: $startDateTime, endDateTime: $endDateTime, state: $state)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExercisePageStateImpl &&
            (identical(other.health, health) || other.health == health) &&
            (identical(other.step, step) || other.step == step) &&
            (identical(other.startDateTime, startDateTime) ||
                other.startDateTime == startDateTime) &&
            (identical(other.endDateTime, endDateTime) ||
                other.endDateTime == endDateTime) &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, health, step, startDateTime, endDateTime, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExercisePageStateImplCopyWith<_$ExercisePageStateImpl> get copyWith =>
      __$$ExercisePageStateImplCopyWithImpl<_$ExercisePageStateImpl>(
          this, _$identity);
}

abstract class _ExercisePageState implements ExercisePageState {
  const factory _ExercisePageState(
      {required final Health health,
      final int step,
      final DateTime? startDateTime,
      final DateTime? endDateTime,
      final ExerciseState state}) = _$ExercisePageStateImpl;

  @override
  Health get health;
  @override
  int get step;
  @override
  DateTime? get startDateTime;
  @override
  DateTime? get endDateTime;
  @override
  ExerciseState get state;
  @override
  @JsonKey(ignore: true)
  _$$ExercisePageStateImplCopyWith<_$ExercisePageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
