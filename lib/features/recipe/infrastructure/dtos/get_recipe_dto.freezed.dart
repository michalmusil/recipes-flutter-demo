// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_recipe_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetRecipeDto _$GetRecipeDtoFromJson(Map<String, dynamic> json) {
  return _GetRecipeDto.fromJson(json);
}

/// @nodoc
mixin _$GetRecipeDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  String get cousine => throw _privateConstructorUsedError;
  @MillisDatetimeJsonConverter()
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this GetRecipeDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetRecipeDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetRecipeDtoCopyWith<GetRecipeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetRecipeDtoCopyWith<$Res> {
  factory $GetRecipeDtoCopyWith(
          GetRecipeDto value, $Res Function(GetRecipeDto) then) =
      _$GetRecipeDtoCopyWithImpl<$Res, GetRecipeDto>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      int duration,
      String cousine,
      @MillisDatetimeJsonConverter() DateTime updatedAt});
}

/// @nodoc
class _$GetRecipeDtoCopyWithImpl<$Res, $Val extends GetRecipeDto>
    implements $GetRecipeDtoCopyWith<$Res> {
  _$GetRecipeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetRecipeDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? duration = null,
    Object? cousine = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      cousine: null == cousine
          ? _value.cousine
          : cousine // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetRecipeDtoImplCopyWith<$Res>
    implements $GetRecipeDtoCopyWith<$Res> {
  factory _$$GetRecipeDtoImplCopyWith(
          _$GetRecipeDtoImpl value, $Res Function(_$GetRecipeDtoImpl) then) =
      __$$GetRecipeDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      int duration,
      String cousine,
      @MillisDatetimeJsonConverter() DateTime updatedAt});
}

/// @nodoc
class __$$GetRecipeDtoImplCopyWithImpl<$Res>
    extends _$GetRecipeDtoCopyWithImpl<$Res, _$GetRecipeDtoImpl>
    implements _$$GetRecipeDtoImplCopyWith<$Res> {
  __$$GetRecipeDtoImplCopyWithImpl(
      _$GetRecipeDtoImpl _value, $Res Function(_$GetRecipeDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetRecipeDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? duration = null,
    Object? cousine = null,
    Object? updatedAt = null,
  }) {
    return _then(_$GetRecipeDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      cousine: null == cousine
          ? _value.cousine
          : cousine // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetRecipeDtoImpl extends _GetRecipeDto {
  const _$GetRecipeDtoImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.duration,
      required this.cousine,
      @MillisDatetimeJsonConverter() required this.updatedAt})
      : super._();

  factory _$GetRecipeDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetRecipeDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final int duration;
  @override
  final String cousine;
  @override
  @MillisDatetimeJsonConverter()
  final DateTime updatedAt;

  @override
  String toString() {
    return 'GetRecipeDto(id: $id, name: $name, description: $description, duration: $duration, cousine: $cousine, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRecipeDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.cousine, cousine) || other.cousine == cousine) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, description, duration, cousine, updatedAt);

  /// Create a copy of GetRecipeDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRecipeDtoImplCopyWith<_$GetRecipeDtoImpl> get copyWith =>
      __$$GetRecipeDtoImplCopyWithImpl<_$GetRecipeDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetRecipeDtoImplToJson(
      this,
    );
  }
}

abstract class _GetRecipeDto extends GetRecipeDto {
  const factory _GetRecipeDto(
          {required final String id,
          required final String name,
          required final String description,
          required final int duration,
          required final String cousine,
          @MillisDatetimeJsonConverter() required final DateTime updatedAt}) =
      _$GetRecipeDtoImpl;
  const _GetRecipeDto._() : super._();

  factory _GetRecipeDto.fromJson(Map<String, dynamic> json) =
      _$GetRecipeDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  int get duration;
  @override
  String get cousine;
  @override
  @MillisDatetimeJsonConverter()
  DateTime get updatedAt;

  /// Create a copy of GetRecipeDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetRecipeDtoImplCopyWith<_$GetRecipeDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
