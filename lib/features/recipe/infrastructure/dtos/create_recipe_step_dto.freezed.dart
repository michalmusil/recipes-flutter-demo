// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_recipe_step_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateRecipeStepDto {
  String get recipeId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  @MillisDatetimeJsonConverter()
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this CreateRecipeStepDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateRecipeStepDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateRecipeStepDtoCopyWith<CreateRecipeStepDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateRecipeStepDtoCopyWith<$Res> {
  factory $CreateRecipeStepDtoCopyWith(
          CreateRecipeStepDto value, $Res Function(CreateRecipeStepDto) then) =
      _$CreateRecipeStepDtoCopyWithImpl<$Res, CreateRecipeStepDto>;
  @useResult
  $Res call(
      {String recipeId,
      String name,
      String description,
      int order,
      @MillisDatetimeJsonConverter() DateTime updatedAt});
}

/// @nodoc
class _$CreateRecipeStepDtoCopyWithImpl<$Res, $Val extends CreateRecipeStepDto>
    implements $CreateRecipeStepDtoCopyWith<$Res> {
  _$CreateRecipeStepDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateRecipeStepDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipeId = null,
    Object? name = null,
    Object? description = null,
    Object? order = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$CreateRecipeStepDtoImplCopyWith<$Res>
    implements $CreateRecipeStepDtoCopyWith<$Res> {
  factory _$$CreateRecipeStepDtoImplCopyWith(_$CreateRecipeStepDtoImpl value,
          $Res Function(_$CreateRecipeStepDtoImpl) then) =
      __$$CreateRecipeStepDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String recipeId,
      String name,
      String description,
      int order,
      @MillisDatetimeJsonConverter() DateTime updatedAt});
}

/// @nodoc
class __$$CreateRecipeStepDtoImplCopyWithImpl<$Res>
    extends _$CreateRecipeStepDtoCopyWithImpl<$Res, _$CreateRecipeStepDtoImpl>
    implements _$$CreateRecipeStepDtoImplCopyWith<$Res> {
  __$$CreateRecipeStepDtoImplCopyWithImpl(_$CreateRecipeStepDtoImpl _value,
      $Res Function(_$CreateRecipeStepDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateRecipeStepDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipeId = null,
    Object? name = null,
    Object? description = null,
    Object? order = null,
    Object? updatedAt = null,
  }) {
    return _then(_$CreateRecipeStepDtoImpl(
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
@JsonSerializable(createFactory: false)
class _$CreateRecipeStepDtoImpl extends _CreateRecipeStepDto {
  const _$CreateRecipeStepDtoImpl(
      {required this.recipeId,
      required this.name,
      required this.description,
      required this.order,
      @MillisDatetimeJsonConverter() required this.updatedAt})
      : super._();

  @override
  final String recipeId;
  @override
  final String name;
  @override
  final String description;
  @override
  final int order;
  @override
  @MillisDatetimeJsonConverter()
  final DateTime updatedAt;

  @override
  String toString() {
    return 'CreateRecipeStepDto(recipeId: $recipeId, name: $name, description: $description, order: $order, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateRecipeStepDtoImpl &&
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
  int get hashCode =>
      Object.hash(runtimeType, recipeId, name, description, order, updatedAt);

  /// Create a copy of CreateRecipeStepDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateRecipeStepDtoImplCopyWith<_$CreateRecipeStepDtoImpl> get copyWith =>
      __$$CreateRecipeStepDtoImplCopyWithImpl<_$CreateRecipeStepDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateRecipeStepDtoImplToJson(
      this,
    );
  }
}

abstract class _CreateRecipeStepDto extends CreateRecipeStepDto {
  const factory _CreateRecipeStepDto(
          {required final String recipeId,
          required final String name,
          required final String description,
          required final int order,
          @MillisDatetimeJsonConverter() required final DateTime updatedAt}) =
      _$CreateRecipeStepDtoImpl;
  const _CreateRecipeStepDto._() : super._();

  @override
  String get recipeId;
  @override
  String get name;
  @override
  String get description;
  @override
  int get order;
  @override
  @MillisDatetimeJsonConverter()
  DateTime get updatedAt;

  /// Create a copy of CreateRecipeStepDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateRecipeStepDtoImplCopyWith<_$CreateRecipeStepDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
