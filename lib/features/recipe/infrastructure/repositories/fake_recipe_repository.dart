import 'package:recipes_flutter_demo/core/domain/types/safe_result.dart';
import 'package:recipes_flutter_demo/core/domain/types/unique_identifier.dart';
import 'package:recipes_flutter_demo/core/domain/types/unit.dart';
import 'package:recipes_flutter_demo/features/recipe/domain/aggregates/recipe.dart';
import 'package:recipes_flutter_demo/features/recipe/domain/entities/recipe_step.dart';
import 'package:recipes_flutter_demo/features/recipe/domain/failures/recipe_failure.dart';
import 'package:recipes_flutter_demo/features/recipe/domain/repositories/i_recipe_repository.dart';

class FakeRecipeRepository implements IRecipeRepository {
  final _recipes = [
    Recipe(
      id: const IntegerUid(1),
      name: "Potato mash",
      description: "Lorem ipsum dolor sit amet",
      durationMinutes: 25,
      cousine: "Czech",
      updatedAt: DateTime.timestamp(),
      steps: [
        RecipeStep(
          id: const IntegerUid(1),
          order: 1,
          name: "Mash it",
          description:
              "Take potatoes and mash them in a bowl lorem ipsum dolor sit amet skakal pes pres oves",
          updatedAt: DateTime.timestamp(),
        ),
        RecipeStep(
          id: const IntegerUid(2),
          order: 2,
          name: "Cook it",
          description:
              "Take potatoes and mash them in a bowl lorem ipsum dolor sit amet skakal pes pres oves",
          updatedAt: DateTime.timestamp(),
        ),
      ],
    )
  ];
  @override
  Future<SafeResult<List<Recipe>, RecipeFailure>> getRecipes({
    String? nameQuery,
  }) {
    return Future.value(ResultSuccess(_recipes));
  }

  @override
  Future<SafeResult<Recipe, RecipeFailure>> getRecipeById(
    UniqueIdentifier recipeId,
  ) async {
    final foundRecipe = _recipes.where((rec) => rec.id == recipeId).firstOrNull;
    if (foundRecipe == null) {
      return ResultFailure(const RecipeFailure.notFound());
    }
    return ResultSuccess(foundRecipe);
  }

  @override
  Future<SafeResult<Unit, RecipeFailure>> createRecipe(Recipe recipe) async {
    _recipes.add(recipe);
    return ResultSuccess(Unit());
  }
}
