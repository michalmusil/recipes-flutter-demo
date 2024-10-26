import 'package:recipes_flutter_demo/core/domain/types/safe_result.dart';
import 'package:recipes_flutter_demo/core/domain/types/unique_identifier.dart';
import 'package:recipes_flutter_demo/core/domain/types/unit.dart';
import 'package:recipes_flutter_demo/features/recipe/domain/aggregates/recipe.dart';
import 'package:recipes_flutter_demo/features/recipe/domain/failures/recipe_failure.dart';

abstract interface class IRecipeRepository {
  Future<SafeResult<List<Recipe>, RecipeFailure>> getRecipes({
    String? nameQuery,
  });

  Future<SafeResult<Recipe, RecipeFailure>> getRecipeById(
      UniqueIdentifier recipeId);

  Future<SafeResult<Unit, RecipeFailure>> createRecipe(Recipe recipe);
}
