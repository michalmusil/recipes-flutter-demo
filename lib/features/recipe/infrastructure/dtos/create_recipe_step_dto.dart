import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipes_flutter_demo/core/infrastructure/converters/millis_datetime_json_converter.dart';
import 'package:recipes_flutter_demo/features/recipe/domain/entities/recipe_step.dart';

part 'create_recipe_step_dto.freezed.dart';
part 'create_recipe_step_dto.g.dart';

@Freezed(fromJson: false, toJson: true)
class CreateRecipeStepDto with _$CreateRecipeStepDto {
  const factory CreateRecipeStepDto({
    required String recipeId,
    required String name,
    required String description,
    required int order,
    @MillisDatetimeJsonConverter() required DateTime updatedAt,
  }) = _CreateRecipeStepDto;

  factory CreateRecipeStepDto.fromDomain({
    required RecipeStep recipeStep,
    required String recipeId,
  }) {
    return CreateRecipeStepDto(
      recipeId: recipeId,
      name: recipeStep.name,
      description: recipeStep.description,
      order: recipeStep.order,
      updatedAt: recipeStep.updatedAt,
    );
  }

  const CreateRecipeStepDto._();
}
