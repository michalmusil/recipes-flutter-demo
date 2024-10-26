import 'package:recipes_flutter_demo/core/domain/types/unique_identifier.dart';
import 'package:recipes_flutter_demo/core/infrastructure/constants/network_constants.dart';
import 'package:recipes_flutter_demo/core/infrastructure/network/http_method.dart';
import 'package:recipes_flutter_demo/core/infrastructure/network/recipes_api_client.dart';
import 'package:recipes_flutter_demo/features/recipe/domain/aggregates/recipe.dart';
import 'package:recipes_flutter_demo/features/recipe/domain/entities/recipe_step.dart';
import 'package:recipes_flutter_demo/features/recipe/infrastructure/dtos/create_recipe_step_dto.dart';
import 'package:recipes_flutter_demo/features/recipe/infrastructure/dtos/get_recipe_step_dto.dart';

abstract interface class IRemoteRecipeStepsDataSource {
  Future<List<GetRecipeStepDto>> getRecipeSteps(UniqueIdentifier recipeId);
  Future<void> createRecipeStep({
    required RecipeStep step,
    required Recipe parentRecipe,
  });
}

class RemoteRecipeStepsDataSource implements IRemoteRecipeStepsDataSource {
  final RecipesApiClient _apiClient;

  const RemoteRecipeStepsDataSource(this._apiClient);

  @override
  Future<List<GetRecipeStepDto>> getRecipeSteps(
      UniqueIdentifier recipeId) async {
    final res = await _apiClient.makeUnauthenticatedRequest(
      HttpMethod.get,
      "${NetworkConstants.recipesApiRecipesEndpoint}/${recipeId.value}/Steps",
    );

    final List jsonArray = res.data;
    final recipeSteps = jsonArray
        .map(
          (jsonStep) => GetRecipeStepDto.fromJson(jsonStep),
        )
        .toList();
    return recipeSteps;
  }

  @override
  Future<void> createRecipeStep({
    required RecipeStep step,
    required Recipe parentRecipe,
  }) async {
    final dto = CreateRecipeStepDto.fromDomain(
      recipeStep: step,
      recipeId: parentRecipe.id.value,
    );

    await _apiClient.makeUnauthenticatedRequest(
      HttpMethod.post,
      "${NetworkConstants.recipesApiRecipesEndpoint}/${parentRecipe.id.value}/Steps",
      data: dto.toJson(),
    );
  }
}
