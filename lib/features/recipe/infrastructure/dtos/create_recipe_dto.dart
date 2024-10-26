import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipes_flutter_demo/features/recipe/domain/aggregates/recipe.dart';

part 'create_recipe_dto.freezed.dart';
part 'create_recipe_dto.g.dart';

@Freezed(fromJson: false, toJson: true)
class CreateRecipeDto with _$CreateRecipeDto {
  const factory CreateRecipeDto({
    required String name,
    required String description,
    required int duration,
    required String cousine,
    required DateTime updatedAt,
  }) = _CreateRecipeDto;

  factory CreateRecipeDto.fromDomain(Recipe recipe) {
    return CreateRecipeDto(
      name: recipe.name,
      description: recipe.description,
      duration: recipe.durationMinutes,
      cousine: recipe.cousine,
      updatedAt: recipe.updatedAt,
    );
  }

  const CreateRecipeDto._();
}
