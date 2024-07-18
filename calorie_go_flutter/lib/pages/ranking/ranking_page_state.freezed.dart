// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ranking_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RankingPageState {
  List<String> get ranking => throw _privateConstructorUsedError;
  UserExerciseHist? get myRanking => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RankingPageStateCopyWith<RankingPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RankingPageStateCopyWith<$Res> {
  factory $RankingPageStateCopyWith(
          RankingPageState value, $Res Function(RankingPageState) then) =
      _$RankingPageStateCopyWithImpl<$Res, RankingPageState>;
  @useResult
  $Res call({List<String> ranking, UserExerciseHist? myRanking});
}

/// @nodoc
class _$RankingPageStateCopyWithImpl<$Res, $Val extends RankingPageState>
    implements $RankingPageStateCopyWith<$Res> {
  _$RankingPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ranking = null,
    Object? myRanking = freezed,
  }) {
    return _then(_value.copyWith(
      ranking: null == ranking
          ? _value.ranking
          : ranking // ignore: cast_nullable_to_non_nullable
              as List<String>,
      myRanking: freezed == myRanking
          ? _value.myRanking
          : myRanking // ignore: cast_nullable_to_non_nullable
              as UserExerciseHist?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RankingPageStateImplCopyWith<$Res>
    implements $RankingPageStateCopyWith<$Res> {
  factory _$$RankingPageStateImplCopyWith(_$RankingPageStateImpl value,
          $Res Function(_$RankingPageStateImpl) then) =
      __$$RankingPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> ranking, UserExerciseHist? myRanking});
}

/// @nodoc
class __$$RankingPageStateImplCopyWithImpl<$Res>
    extends _$RankingPageStateCopyWithImpl<$Res, _$RankingPageStateImpl>
    implements _$$RankingPageStateImplCopyWith<$Res> {
  __$$RankingPageStateImplCopyWithImpl(_$RankingPageStateImpl _value,
      $Res Function(_$RankingPageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ranking = null,
    Object? myRanking = freezed,
  }) {
    return _then(_$RankingPageStateImpl(
      ranking: null == ranking
          ? _value._ranking
          : ranking // ignore: cast_nullable_to_non_nullable
              as List<String>,
      myRanking: freezed == myRanking
          ? _value.myRanking
          : myRanking // ignore: cast_nullable_to_non_nullable
              as UserExerciseHist?,
    ));
  }
}

/// @nodoc

class _$RankingPageStateImpl implements _RankingPageState {
  const _$RankingPageStateImpl(
      {final List<String> ranking = const [], this.myRanking = null})
      : _ranking = ranking;

  final List<String> _ranking;
  @override
  @JsonKey()
  List<String> get ranking {
    if (_ranking is EqualUnmodifiableListView) return _ranking;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ranking);
  }

  @override
  @JsonKey()
  final UserExerciseHist? myRanking;

  @override
  String toString() {
    return 'RankingPageState(ranking: $ranking, myRanking: $myRanking)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RankingPageStateImpl &&
            const DeepCollectionEquality().equals(other._ranking, _ranking) &&
            (identical(other.myRanking, myRanking) ||
                other.myRanking == myRanking));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_ranking), myRanking);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RankingPageStateImplCopyWith<_$RankingPageStateImpl> get copyWith =>
      __$$RankingPageStateImplCopyWithImpl<_$RankingPageStateImpl>(
          this, _$identity);
}

abstract class _RankingPageState implements RankingPageState {
  const factory _RankingPageState(
      {final List<String> ranking,
      final UserExerciseHist? myRanking}) = _$RankingPageStateImpl;

  @override
  List<String> get ranking;
  @override
  UserExerciseHist? get myRanking;
  @override
  @JsonKey(ignore: true)
  _$$RankingPageStateImplCopyWith<_$RankingPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
