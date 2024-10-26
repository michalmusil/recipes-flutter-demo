import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipes_flutter_demo/core/domain/types/unique_identifier.dart';
import 'package:recipes_flutter_demo/features/recipe/domain/entities/recipe_step.dart';

part 'recipe.freezed.dart';

@Freezed(fromJson: false, toJson: false)
class Recipe with _$Recipe {
  const factory Recipe({
    required UniqueIdentifier id,
    required String name,
    required String description,
    required int durationMinutes,
    required String cousine,
    required DateTime updatedAt,
    required List<RecipeStep> steps,
  }) = _Recipe;

  const Recipe._();
}
