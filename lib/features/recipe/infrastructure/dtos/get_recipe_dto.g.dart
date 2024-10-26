// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_recipe_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetRecipeDtoImpl _$$GetRecipeDtoImplFromJson(Map<String, dynamic> json) =>
    _$GetRecipeDtoImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      duration: (json['duration'] as num).toInt(),
      cousine: json['cousine'] as String,
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$GetRecipeDtoImplToJson(_$GetRecipeDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'duration': instance.duration,
      'cousine': instance.cousine,
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
