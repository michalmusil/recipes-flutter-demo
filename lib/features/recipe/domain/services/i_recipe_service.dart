import 'package:recipes_flutter_demo/core/domain/types/safe_result.dart';
import 'package:recipes_flutter_demo/core/domain/types/unit.dart';
import 'package:recipes_flutter_demo/features/recipe/domain/aggregates/recipe.dart';
import 'package:recipes_flutter_demo/features/recipe/domain/failures/recipe_failure.dart';

abstract interface class IRecipeService {
  Future<SafeResult<List<Recipe>, RecipeFailure>> getRecipes();

  Future<SafeResult<Unit, RecipeFailure>> createRecipe(Recipe recipe);
}
