// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_recipe_step_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetRecipeStepDtoImpl _$$GetRecipeStepDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$GetRecipeStepDtoImpl(
      id: json['id'] as String,
      recipeId: json['RecipeId'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      order: (json['order'] as num).toInt(),
      updatedAt: const MillisDatetimeJsonConverter()
          .fromJson((json['updatedAt'] as num).toInt()),
    );

Map<String, dynamic> _$$GetRecipeStepDtoImplToJson(
        _$GetRecipeStepDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'RecipeId': instance.recipeId,
      'name': instance.name,
      'description': instance.description,
      'order': instance.order,
      'updatedAt':
          const MillisDatetimeJsonConverter().toJson(instance.updatedAt),
    };
