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
      updatedAt: const MillisDatetimeJsonConverter()
          .fromJson((json['updatedAt'] as num).toInt()),
    );

Map<String, dynamic> _$$GetRecipeDtoImplToJson(_$GetRecipeDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'duration': instance.duration,
      'cousine': instance.cousine,
      'updatedAt':
          const MillisDatetimeJsonConverter().toJson(instance.updatedAt),
    };
