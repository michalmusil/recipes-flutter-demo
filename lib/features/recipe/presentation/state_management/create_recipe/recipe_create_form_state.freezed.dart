// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_create_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecipeCreateFormState {
  Recipe get recipeBeingCreated => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  RecipeFailure? get validationFailure => throw _privateConstructorUsedError;
  bool get successfullyCreated => throw _privateConstructorUsedError;

  /// Create a copy of RecipeCreateFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecipeCreateFormStateCopyWith<RecipeCreateFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeCreateFormStateCopyWith<$Res> {
  factory $RecipeCreateFormStateCopyWith(RecipeCreateFormState value,
          $Res Function(RecipeCreateFormState) then) =
      _$RecipeCreateFormStateCopyWithImpl<$Res, RecipeCreateFormState>;
  @useResult
  $Res call(
      {Recipe recipeBeingCreated,
      bool isLoading,
      RecipeFailure? validationFailure,
      bool successfullyCreated});

  $RecipeCopyWith<$Res> get recipeBeingCreated;
  $RecipeFailureCopyWith<$Res>? get validationFailure;
}

/// @nodoc
class _$RecipeCreateFormStateCopyWithImpl<$Res,
        $Val extends RecipeCreateFormState>
    implements $RecipeCreateFormStateCopyWith<$Res> {
  _$RecipeCreateFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecipeCreateFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipeBeingCreated = null,
    Object? isLoading = null,
    Object? validationFailure = freezed,
    Object? successfullyCreated = null,
  }) {
    return _then(_value.copyWith(
      recipeBeingCreated: null == recipeBeingCreated
          ? _value.recipeBeingCreated
          : recipeBeingCreated // ignore: cast_nullable_to_non_nullable
              as Recipe,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      validationFailure: freezed == validationFailure
          ? _value.validationFailure
          : validationFailure // ignore: cast_nullable_to_non_nullable
              as RecipeFailure?,
      successfullyCreated: null == successfullyCreated
          ? _value.successfullyCreated
          : successfullyCreated // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of RecipeCreateFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RecipeCopyWith<$Res> get recipeBeingCreated {
    return $RecipeCopyWith<$Res>(_value.recipeBeingCreated, (value) {
      return _then(_value.copyWith(recipeBeingCreated: value) as $Val);
    });
  }

  /// Create a copy of RecipeCreateFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RecipeFailureCopyWith<$Res>? get validationFailure {
    if (_value.validationFailure == null) {
      return null;
    }

    return $RecipeFailureCopyWith<$Res>(_value.validationFailure!, (value) {
      return _then(_value.copyWith(validationFailure: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RecipeCreateFormStateImplCopyWith<$Res>
    implements $RecipeCreateFormStateCopyWith<$Res> {
  factory _$$RecipeCreateFormStateImplCopyWith(
          _$RecipeCreateFormStateImpl value,
          $Res Function(_$RecipeCreateFormStateImpl) then) =
      __$$RecipeCreateFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Recipe recipeBeingCreated,
      bool isLoading,
      RecipeFailure? validationFailure,
      bool successfullyCreated});

  @override
  $RecipeCopyWith<$Res> get recipeBeingCreated;
  @override
  $RecipeFailureCopyWith<$Res>? get validationFailure;
}

/// @nodoc
class __$$RecipeCreateFormStateImplCopyWithImpl<$Res>
    extends _$RecipeCreateFormStateCopyWithImpl<$Res,
        _$RecipeCreateFormStateImpl>
    implements _$$RecipeCreateFormStateImplCopyWith<$Res> {
  __$$RecipeCreateFormStateImplCopyWithImpl(_$RecipeCreateFormStateImpl _value,
      $Res Function(_$RecipeCreateFormStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecipeCreateFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipeBeingCreated = null,
    Object? isLoading = null,
    Object? validationFailure = freezed,
    Object? successfullyCreated = null,
  }) {
    return _then(_$RecipeCreateFormStateImpl(
      recipeBeingCreated: null == recipeBeingCreated
          ? _value.recipeBeingCreated
          : recipeBeingCreated // ignore: cast_nullable_to_non_nullable
              as Recipe,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      validationFailure: freezed == validationFailure
          ? _value.validationFailure
          : validationFailure // ignore: cast_nullable_to_non_nullable
              as RecipeFailure?,
      successfullyCreated: null == successfullyCreated
          ? _value.successfullyCreated
          : successfullyCreated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RecipeCreateFormStateImpl extends _RecipeCreateFormState {
  const _$RecipeCreateFormStateImpl(
      {required this.recipeBeingCreated,
      required this.isLoading,
      required this.validationFailure,
      required this.successfullyCreated})
      : super._();

  @override
  final Recipe recipeBeingCreated;
  @override
  final bool isLoading;
  @override
  final RecipeFailure? validationFailure;
  @override
  final bool successfullyCreated;

  @override
  String toString() {
    return 'RecipeCreateFormState(recipeBeingCreated: $recipeBeingCreated, isLoading: $isLoading, validationFailure: $validationFailure, successfullyCreated: $successfullyCreated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeCreateFormStateImpl &&
            (identical(other.recipeBeingCreated, recipeBeingCreated) ||
                other.recipeBeingCreated == recipeBeingCreated) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.validationFailure, validationFailure) ||
                other.validationFailure == validationFailure) &&
            (identical(other.successfullyCreated, successfullyCreated) ||
                other.successfullyCreated == successfullyCreated));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipeBeingCreated, isLoading,
      validationFailure, successfullyCreated);

  /// Create a copy of RecipeCreateFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeCreateFormStateImplCopyWith<_$RecipeCreateFormStateImpl>
      get copyWith => __$$RecipeCreateFormStateImplCopyWithImpl<
          _$RecipeCreateFormStateImpl>(this, _$identity);
}

abstract class _RecipeCreateFormState extends RecipeCreateFormState {
  const factory _RecipeCreateFormState(
      {required final Recipe recipeBeingCreated,
      required final bool isLoading,
      required final RecipeFailure? validationFailure,
      required final bool successfullyCreated}) = _$RecipeCreateFormStateImpl;
  const _RecipeCreateFormState._() : super._();

  @override
  Recipe get recipeBeingCreated;
  @override
  bool get isLoading;
  @override
  RecipeFailure? get validationFailure;
  @override
  bool get successfullyCreated;

  /// Create a copy of RecipeCreateFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecipeCreateFormStateImplCopyWith<_$RecipeCreateFormStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
