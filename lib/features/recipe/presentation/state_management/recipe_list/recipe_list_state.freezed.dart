// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecipeListState {
  List<Recipe> get recipes => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  RecipeFailure? get failure => throw _privateConstructorUsedError;

  /// Create a copy of RecipeListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecipeListStateCopyWith<RecipeListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeListStateCopyWith<$Res> {
  factory $RecipeListStateCopyWith(
          RecipeListState value, $Res Function(RecipeListState) then) =
      _$RecipeListStateCopyWithImpl<$Res, RecipeListState>;
  @useResult
  $Res call({List<Recipe> recipes, bool isLoading, RecipeFailure? failure});

  $RecipeFailureCopyWith<$Res>? get failure;
}

/// @nodoc
class _$RecipeListStateCopyWithImpl<$Res, $Val extends RecipeListState>
    implements $RecipeListStateCopyWith<$Res> {
  _$RecipeListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecipeListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipes = null,
    Object? isLoading = null,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      recipes: null == recipes
          ? _value.recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as RecipeFailure?,
    ) as $Val);
  }

  /// Create a copy of RecipeListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RecipeFailureCopyWith<$Res>? get failure {
    if (_value.failure == null) {
      return null;
    }

    return $RecipeFailureCopyWith<$Res>(_value.failure!, (value) {
      return _then(_value.copyWith(failure: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RecipeListStateImplCopyWith<$Res>
    implements $RecipeListStateCopyWith<$Res> {
  factory _$$RecipeListStateImplCopyWith(_$RecipeListStateImpl value,
          $Res Function(_$RecipeListStateImpl) then) =
      __$$RecipeListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Recipe> recipes, bool isLoading, RecipeFailure? failure});

  @override
  $RecipeFailureCopyWith<$Res>? get failure;
}

/// @nodoc
class __$$RecipeListStateImplCopyWithImpl<$Res>
    extends _$RecipeListStateCopyWithImpl<$Res, _$RecipeListStateImpl>
    implements _$$RecipeListStateImplCopyWith<$Res> {
  __$$RecipeListStateImplCopyWithImpl(
      _$RecipeListStateImpl _value, $Res Function(_$RecipeListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecipeListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipes = null,
    Object? isLoading = null,
    Object? failure = freezed,
  }) {
    return _then(_$RecipeListStateImpl(
      recipes: null == recipes
          ? _value._recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as RecipeFailure?,
    ));
  }
}

/// @nodoc

class _$RecipeListStateImpl extends _RecipeListState {
  const _$RecipeListStateImpl(
      {required final List<Recipe> recipes,
      required this.isLoading,
      required this.failure})
      : _recipes = recipes,
        super._();

  final List<Recipe> _recipes;
  @override
  List<Recipe> get recipes {
    if (_recipes is EqualUnmodifiableListView) return _recipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipes);
  }

  @override
  final bool isLoading;
  @override
  final RecipeFailure? failure;

  @override
  String toString() {
    return 'RecipeListState(recipes: $recipes, isLoading: $isLoading, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeListStateImpl &&
            const DeepCollectionEquality().equals(other._recipes, _recipes) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_recipes), isLoading, failure);

  /// Create a copy of RecipeListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeListStateImplCopyWith<_$RecipeListStateImpl> get copyWith =>
      __$$RecipeListStateImplCopyWithImpl<_$RecipeListStateImpl>(
          this, _$identity);
}

abstract class _RecipeListState extends RecipeListState {
  const factory _RecipeListState(
      {required final List<Recipe> recipes,
      required final bool isLoading,
      required final RecipeFailure? failure}) = _$RecipeListStateImpl;
  const _RecipeListState._() : super._();

  @override
  List<Recipe> get recipes;
  @override
  bool get isLoading;
  @override
  RecipeFailure? get failure;

  /// Create a copy of RecipeListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecipeListStateImplCopyWith<_$RecipeListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
