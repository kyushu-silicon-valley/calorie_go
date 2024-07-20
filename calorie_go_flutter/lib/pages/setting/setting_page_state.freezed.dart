// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'setting_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SettingPageState {
  String get userName => throw _privateConstructorUsedError;
  String get userIconUrl => throw _privateConstructorUsedError;
  int get userTotalSteps => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingPageStateCopyWith<SettingPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingPageStateCopyWith<$Res> {
  factory $SettingPageStateCopyWith(
          SettingPageState value, $Res Function(SettingPageState) then) =
      _$SettingPageStateCopyWithImpl<$Res, SettingPageState>;
  @useResult
  $Res call({String userName, String userIconUrl, int userTotalSteps});
}

/// @nodoc
class _$SettingPageStateCopyWithImpl<$Res, $Val extends SettingPageState>
    implements $SettingPageStateCopyWith<$Res> {
  _$SettingPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? userIconUrl = null,
    Object? userTotalSteps = null,
  }) {
    return _then(_value.copyWith(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userIconUrl: null == userIconUrl
          ? _value.userIconUrl
          : userIconUrl // ignore: cast_nullable_to_non_nullable
              as String,
      userTotalSteps: null == userTotalSteps
          ? _value.userTotalSteps
          : userTotalSteps // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SettingPageStateImplCopyWith<$Res>
    implements $SettingPageStateCopyWith<$Res> {
  factory _$$SettingPageStateImplCopyWith(_$SettingPageStateImpl value,
          $Res Function(_$SettingPageStateImpl) then) =
      __$$SettingPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userName, String userIconUrl, int userTotalSteps});
}

/// @nodoc
class __$$SettingPageStateImplCopyWithImpl<$Res>
    extends _$SettingPageStateCopyWithImpl<$Res, _$SettingPageStateImpl>
    implements _$$SettingPageStateImplCopyWith<$Res> {
  __$$SettingPageStateImplCopyWithImpl(_$SettingPageStateImpl _value,
      $Res Function(_$SettingPageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? userIconUrl = null,
    Object? userTotalSteps = null,
  }) {
    return _then(_$SettingPageStateImpl(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userIconUrl: null == userIconUrl
          ? _value.userIconUrl
          : userIconUrl // ignore: cast_nullable_to_non_nullable
              as String,
      userTotalSteps: null == userTotalSteps
          ? _value.userTotalSteps
          : userTotalSteps // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SettingPageStateImpl implements _SettingPageState {
  const _$SettingPageStateImpl(
      {required this.userName,
      required this.userIconUrl,
      required this.userTotalSteps});

  @override
  final String userName;
  @override
  final String userIconUrl;
  @override
  final int userTotalSteps;

  @override
  String toString() {
    return 'SettingPageState(userName: $userName, userIconUrl: $userIconUrl, userTotalSteps: $userTotalSteps)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingPageStateImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userIconUrl, userIconUrl) ||
                other.userIconUrl == userIconUrl) &&
            (identical(other.userTotalSteps, userTotalSteps) ||
                other.userTotalSteps == userTotalSteps));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userName, userIconUrl, userTotalSteps);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingPageStateImplCopyWith<_$SettingPageStateImpl> get copyWith =>
      __$$SettingPageStateImplCopyWithImpl<_$SettingPageStateImpl>(
          this, _$identity);
}

abstract class _SettingPageState implements SettingPageState {
  const factory _SettingPageState(
      {required final String userName,
      required final String userIconUrl,
      required final int userTotalSteps}) = _$SettingPageStateImpl;

  @override
  String get userName;
  @override
  String get userIconUrl;
  @override
  int get userTotalSteps;
  @override
  @JsonKey(ignore: true)
  _$$SettingPageStateImplCopyWith<_$SettingPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
