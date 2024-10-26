// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipes_flutter_demo/core/domain/types/unique_identifier.dart';
import 'package:recipes_flutter_demo/features/recipe/domain/entities/recipe_step.dart';

part 'get_recipe_step_dto.freezed.dart';
part 'get_recipe_step_dto.g.dart';

@freezed
class GetRecipeStepDto with _$GetRecipeStepDto {
  const factory GetRecipeStepDto({
    required String id,
    @JsonKey(name: "RecipeId") required String recipeId,
    required String name,
    required String description,
    required int order,
    required DateTime updatedAt,
  }) = _GetRecipeStepDto;

  const GetRecipeStepDto._();

  factory GetRecipeStepDto.fromJson(Map<String, Object?> json) =>
      _$GetRecipeStepDtoFromJson(json);

  RecipeStep toDomain() {
    return RecipeStep(
      id: IntegerUid(int.parse(id)),
      name: name,
      description: description,
      order: order,
      updatedAt: updatedAt,
    );
  }
}
