import 'package:recipes_flutter_demo/core/domain/types/unique_identifier.dart';
import 'package:recipes_flutter_demo/core/infrastructure/constants/network_constants.dart';
import 'package:recipes_flutter_demo/core/infrastructure/network/http_method.dart';
import 'package:recipes_flutter_demo/core/infrastructure/network/recipes_api_client.dart';
import 'package:recipes_flutter_demo/features/recipe/domain/aggregates/recipe.dart';
import 'package:recipes_flutter_demo/features/recipe/infrastructure/dtos/create_recipe_dto.dart';
import 'package:recipes_flutter_demo/features/recipe/infrastructure/dtos/get_recipe_dto.dart';

abstract interface class IRemoteRecipesDataSource {
  Future<List<GetRecipeDto>> getRecipes();
  Future<GetRecipeDto> getRecipeById(UniqueIdentifier recipeId);
  Future<void> createRecipe(Recipe recipe);
}

class RemoteRecipesDataSource implements IRemoteRecipesDataSource {
  final RecipesApiClient _apiClient;

  const RemoteRecipesDataSource(this._apiClient);

  @override
  Future<List<GetRecipeDto>> getRecipes() async {
    final res = await _apiClient.makeUnauthenticatedRequest(
      HttpMethod.get,
      NetworkConstants.recipesApiRecipesEndpoint,
    );

    final List jsonArray = res.data;
    final recipes = jsonArray
        .map(
          (jsonRecipe) => GetRecipeDto.fromJson(jsonRecipe),
        )
        .toList();
    return recipes;
  }

  @override
  Future<GetRecipeDto> getRecipeById(UniqueIdentifier recipeId) async {
    final res = await _apiClient.makeUnauthenticatedRequest(
      HttpMethod.get,
      "${NetworkConstants.recipesApiRecipesEndpoint}/${recipeId.value}",
    );

    final Map<String, dynamic> json = res.data;
    return GetRecipeDto.fromJson(json);
  }

  @override
  Future<void> createRecipe(Recipe recipe) async {
    final dto = CreateRecipeDto.fromDomain(recipe);

    await _apiClient.makeUnauthenticatedRequest(
      HttpMethod.post,
      NetworkConstants.recipesApiRecipesEndpoint,
      data: dto.toJson(),
    );
  }
}
