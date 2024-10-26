import 'package:recipes_flutter_demo/core/domain/types/safe_result.dart';
import 'package:recipes_flutter_demo/core/domain/types/unit.dart';
import 'package:recipes_flutter_demo/features/recipe/domain/aggregates/recipe.dart';
import 'package:recipes_flutter_demo/features/recipe/domain/failures/recipe_failure.dart';
import 'package:recipes_flutter_demo/features/recipe/domain/repositories/i_recipe_repository.dart';
import 'package:recipes_flutter_demo/features/recipe/domain/services/i_recipe_service.dart';

class RecipeService implements IRecipeService {
  final IRecipeRepository _recipeRepository;

  const RecipeService(this._recipeRepository);

  @override
  Future<SafeResult<List<Recipe>, RecipeFailure>> getRecipes() {
    return _recipeRepository.getRecipes();
  }

  @override
  Future<SafeResult<Unit, RecipeFailure>> createRecipe(Recipe recipe) async {
    final validationFailure = _validateNewRecipe(recipe);
    if (validationFailure != null) {
      return ResultFailure(validationFailure);
    }
    return _recipeRepository.createRecipe(recipe);
  }

  RecipeFailure? _validateNewRecipe(Recipe recipe) {
    final hasNotEmptyName = recipe.name.isNotEmpty;
    if (!hasNotEmptyName) {
      return const RecipeFailure.nameCantBeEmpty();
    }
    final hasAtLeastOneStep = recipe.steps.isNotEmpty;
    if (!hasAtLeastOneStep) {
      return const RecipeFailure.atLeastOneStepRequired();
    }
    final durationPossitive = recipe.durationMinutes > 0;
    if (!durationPossitive) {
      return const RecipeFailure.durationMustBePossitive();
    }
    return null;
  }
}
