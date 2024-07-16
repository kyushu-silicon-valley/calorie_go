// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notice_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NoticePageState {
  List<Notification> get notifications => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoticePageStateCopyWith<NoticePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoticePageStateCopyWith<$Res> {
  factory $NoticePageStateCopyWith(
          NoticePageState value, $Res Function(NoticePageState) then) =
      _$NoticePageStateCopyWithImpl<$Res, NoticePageState>;
  @useResult
  $Res call({List<Notification> notifications});
}

/// @nodoc
class _$NoticePageStateCopyWithImpl<$Res, $Val extends NoticePageState>
    implements $NoticePageStateCopyWith<$Res> {
  _$NoticePageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notifications = null,
  }) {
    return _then(_value.copyWith(
      notifications: null == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<Notification>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NoticePageStateImplCopyWith<$Res>
    implements $NoticePageStateCopyWith<$Res> {
  factory _$$NoticePageStateImplCopyWith(_$NoticePageStateImpl value,
          $Res Function(_$NoticePageStateImpl) then) =
      __$$NoticePageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Notification> notifications});
}

/// @nodoc
class __$$NoticePageStateImplCopyWithImpl<$Res>
    extends _$NoticePageStateCopyWithImpl<$Res, _$NoticePageStateImpl>
    implements _$$NoticePageStateImplCopyWith<$Res> {
  __$$NoticePageStateImplCopyWithImpl(
      _$NoticePageStateImpl _value, $Res Function(_$NoticePageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notifications = null,
  }) {
    return _then(_$NoticePageStateImpl(
      notifications: null == notifications
          ? _value._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<Notification>,
    ));
  }
}

/// @nodoc

class _$NoticePageStateImpl implements _NoticePageState {
  const _$NoticePageStateImpl(
      {final List<Notification> notifications = const []})
      : _notifications = notifications;

  final List<Notification> _notifications;
  @override
  @JsonKey()
  List<Notification> get notifications {
    if (_notifications is EqualUnmodifiableListView) return _notifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notifications);
  }

  @override
  String toString() {
    return 'NoticePageState(notifications: $notifications)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoticePageStateImpl &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_notifications));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoticePageStateImplCopyWith<_$NoticePageStateImpl> get copyWith =>
      __$$NoticePageStateImplCopyWithImpl<_$NoticePageStateImpl>(
          this, _$identity);
}

abstract class _NoticePageState implements NoticePageState {
  const factory _NoticePageState({final List<Notification> notifications}) =
      _$NoticePageStateImpl;

  @override
  List<Notification> get notifications;
  @override
  @JsonKey(ignore: true)
  _$$NoticePageStateImplCopyWith<_$NoticePageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
