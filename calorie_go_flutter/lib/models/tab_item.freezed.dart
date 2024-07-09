// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tab_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TabItemModel {
  String get title => throw _privateConstructorUsedError;
  Icon get icon => throw _privateConstructorUsedError;
  String get route => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TabItemModelCopyWith<TabItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TabItemModelCopyWith<$Res> {
  factory $TabItemModelCopyWith(
          TabItemModel value, $Res Function(TabItemModel) then) =
      _$TabItemModelCopyWithImpl<$Res, TabItemModel>;
  @useResult
  $Res call({String title, Icon icon, String route});
}

/// @nodoc
class _$TabItemModelCopyWithImpl<$Res, $Val extends TabItemModel>
    implements $TabItemModelCopyWith<$Res> {
  _$TabItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? icon = null,
    Object? route = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Icon,
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TabItemModelImplCopyWith<$Res>
    implements $TabItemModelCopyWith<$Res> {
  factory _$$TabItemModelImplCopyWith(
          _$TabItemModelImpl value, $Res Function(_$TabItemModelImpl) then) =
      __$$TabItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, Icon icon, String route});
}

/// @nodoc
class __$$TabItemModelImplCopyWithImpl<$Res>
    extends _$TabItemModelCopyWithImpl<$Res, _$TabItemModelImpl>
    implements _$$TabItemModelImplCopyWith<$Res> {
  __$$TabItemModelImplCopyWithImpl(
      _$TabItemModelImpl _value, $Res Function(_$TabItemModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? icon = null,
    Object? route = null,
  }) {
    return _then(_$TabItemModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Icon,
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TabItemModelImpl implements _TabItemModel {
  const _$TabItemModelImpl(
      {required this.title, required this.icon, required this.route});

  @override
  final String title;
  @override
  final Icon icon;
  @override
  final String route;

  @override
  String toString() {
    return 'TabItemModel(title: $title, icon: $icon, route: $route)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TabItemModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.route, route) || other.route == route));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, icon, route);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TabItemModelImplCopyWith<_$TabItemModelImpl> get copyWith =>
      __$$TabItemModelImplCopyWithImpl<_$TabItemModelImpl>(this, _$identity);
}

abstract class _TabItemModel implements TabItemModel {
  const factory _TabItemModel(
      {required final String title,
      required final Icon icon,
      required final String route}) = _$TabItemModelImpl;

  @override
  String get title;
  @override
  Icon get icon;
  @override
  String get route;
  @override
  @JsonKey(ignore: true)
  _$$TabItemModelImplCopyWith<_$TabItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
