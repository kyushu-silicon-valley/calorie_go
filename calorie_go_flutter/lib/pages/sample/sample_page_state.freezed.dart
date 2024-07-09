// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sample_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SamplePageState {
  String get resultMessage => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SamplePageStateCopyWith<SamplePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SamplePageStateCopyWith<$Res> {
  factory $SamplePageStateCopyWith(
          SamplePageState value, $Res Function(SamplePageState) then) =
      _$SamplePageStateCopyWithImpl<$Res, SamplePageState>;
  @useResult
  $Res call({String resultMessage, String? errorMessage});
}

/// @nodoc
class _$SamplePageStateCopyWithImpl<$Res, $Val extends SamplePageState>
    implements $SamplePageStateCopyWith<$Res> {
  _$SamplePageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultMessage = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      resultMessage: null == resultMessage
          ? _value.resultMessage
          : resultMessage // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SamplePageStateImplCopyWith<$Res>
    implements $SamplePageStateCopyWith<$Res> {
  factory _$$SamplePageStateImplCopyWith(_$SamplePageStateImpl value,
          $Res Function(_$SamplePageStateImpl) then) =
      __$$SamplePageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String resultMessage, String? errorMessage});
}

/// @nodoc
class __$$SamplePageStateImplCopyWithImpl<$Res>
    extends _$SamplePageStateCopyWithImpl<$Res, _$SamplePageStateImpl>
    implements _$$SamplePageStateImplCopyWith<$Res> {
  __$$SamplePageStateImplCopyWithImpl(
      _$SamplePageStateImpl _value, $Res Function(_$SamplePageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultMessage = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$SamplePageStateImpl(
      resultMessage: null == resultMessage
          ? _value.resultMessage
          : resultMessage // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SamplePageStateImpl implements _SamplePageState {
  const _$SamplePageStateImpl({this.resultMessage = '', this.errorMessage});

  @override
  @JsonKey()
  final String resultMessage;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'SamplePageState(resultMessage: $resultMessage, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SamplePageStateImpl &&
            (identical(other.resultMessage, resultMessage) ||
                other.resultMessage == resultMessage) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, resultMessage, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SamplePageStateImplCopyWith<_$SamplePageStateImpl> get copyWith =>
      __$$SamplePageStateImplCopyWithImpl<_$SamplePageStateImpl>(
          this, _$identity);
}

abstract class _SamplePageState implements SamplePageState {
  const factory _SamplePageState(
      {final String resultMessage,
      final String? errorMessage}) = _$SamplePageStateImpl;

  @override
  String get resultMessage;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$SamplePageStateImplCopyWith<_$SamplePageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
