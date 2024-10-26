// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_recipe_step_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetRecipeStepDto _$GetRecipeStepDtoFromJson(Map<String, dynamic> json) {
  return _GetRecipeStepDto.fromJson(json);
}

/// @nodoc
mixin _$GetRecipeStepDto {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "RecipeId")
  String get recipeId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this GetRecipeStepDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetRecipeStepDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetRecipeStepDtoCopyWith<GetRecipeStepDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetRecipeStepDtoCopyWith<$Res> {
  factory $GetRecipeStepDtoCopyWith(
          GetRecipeStepDto value, $Res Function(GetRecipeStepDto) then) =
      _$GetRecipeStepDtoCopyWithImpl<$Res, GetRecipeStepDto>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: "RecipeId") String recipeId,
      String name,
      String description,
      int order,
      DateTime updatedAt});
}

/// @nodoc
class _$GetRecipeStepDtoCopyWithImpl<$Res, $Val extends GetRecipeStepDto>
    implements $GetRecipeStepDtoCopyWith<$Res> {
  _$GetRecipeStepDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetRecipeStepDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? recipeId = null,
    Object? name = null,
    Object? description = null,
    Object? order = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      recipeId: null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetRecipeStepDtoImplCopyWith<$Res>
    implements $GetRecipeStepDtoCopyWith<$Res> {
  factory _$$GetRecipeStepDtoImplCopyWith(_$GetRecipeStepDtoImpl value,
          $Res Function(_$GetRecipeStepDtoImpl) then) =
      __$$GetRecipeStepDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: "RecipeId") String recipeId,
      String name,
      String description,
      int order,
      DateTime updatedAt});
}

/// @nodoc
class __$$GetRecipeStepDtoImplCopyWithImpl<$Res>
    extends _$GetRecipeStepDtoCopyWithImpl<$Res, _$GetRecipeStepDtoImpl>
    implements _$$GetRecipeStepDtoImplCopyWith<$Res> {
  __$$GetRecipeStepDtoImplCopyWithImpl(_$GetRecipeStepDtoImpl _value,
      $Res Function(_$GetRecipeStepDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetRecipeStepDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? recipeId = null,
    Object? name = null,
    Object? description = null,
    Object? order = null,
    Object? updatedAt = null,
  }) {
    return _then(_$GetRecipeStepDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      recipeId: null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetRecipeStepDtoImpl extends _GetRecipeStepDto {
  const _$GetRecipeStepDtoImpl(
      {required this.id,
      @JsonKey(name: "RecipeId") required this.recipeId,
      required this.name,
      required this.description,
      required this.order,
      required this.updatedAt})
      : super._();

  factory _$GetRecipeStepDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetRecipeStepDtoImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: "RecipeId")
  final String recipeId;
  @override
  final String name;
  @override
  final String description;
  @override
  final int order;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'GetRecipeStepDto(id: $id, recipeId: $recipeId, name: $name, description: $description, order: $order, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRecipeStepDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.recipeId, recipeId) ||
                other.recipeId == recipeId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, recipeId, name, description, order, updatedAt);

  /// Create a copy of GetRecipeStepDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRecipeStepDtoImplCopyWith<_$GetRecipeStepDtoImpl> get copyWith =>
      __$$GetRecipeStepDtoImplCopyWithImpl<_$GetRecipeStepDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetRecipeStepDtoImplToJson(
      this,
    );
  }
}

abstract class _GetRecipeStepDto extends GetRecipeStepDto {
  const factory _GetRecipeStepDto(
      {required final String id,
      @JsonKey(name: "RecipeId") required final String recipeId,
      required final String name,
      required final String description,
      required final int order,
      required final DateTime updatedAt}) = _$GetRecipeStepDtoImpl;
  const _GetRecipeStepDto._() : super._();

  factory _GetRecipeStepDto.fromJson(Map<String, dynamic> json) =
      _$GetRecipeStepDtoImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: "RecipeId")
  String get recipeId;
  @override
  String get name;
  @override
  String get description;
  @override
  int get order;
  @override
  DateTime get updatedAt;

  /// Create a copy of GetRecipeStepDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetRecipeStepDtoImplCopyWith<_$GetRecipeStepDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
