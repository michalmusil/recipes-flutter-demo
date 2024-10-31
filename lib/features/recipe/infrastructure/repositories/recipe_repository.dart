import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:recipes_flutter_demo/core/domain/types/safe_result.dart';
import 'package:recipes_flutter_demo/core/domain/types/unique_identifier.dart';
import 'package:recipes_flutter_demo/core/domain/types/unit.dart';
import 'package:recipes_flutter_demo/features/recipe/domain/aggregates/recipe.dart';
import 'package:recipes_flutter_demo/features/recipe/domain/failures/recipe_failure.dart';
import 'package:recipes_flutter_demo/features/recipe/domain/repositories/i_recipe_repository.dart';
import 'package:recipes_flutter_demo/features/recipe/infrastructure/data_sources/remote_recipe_steps_data_source.dart';
import 'package:recipes_flutter_demo/features/recipe/infrastructure/data_sources/remote_recipes_data_source.dart';

class RecipeRepository implements IRecipeRepository {
  final IRemoteRecipesDataSource _remoteRecipesDataSource;
  final IRemoteRecipeStepsDataSource _remoteRecipeStepsDataSource;

  RecipeRepository(
    this._remoteRecipesDataSource,
    this._remoteRecipeStepsDataSource,
  );

  @override
  Future<SafeResult<List<Recipe>, RecipeFailure>> getRecipes({
    String? nameQuery,
  }) async {
    try {
      var allRecipeDtos = await _remoteRecipesDataSource.getRecipes();
      if (nameQuery != null) {
        allRecipeDtos = allRecipeDtos
            .where((recipe) =>
                recipe.name.toLowerCase().contains(nameQuery.toLowerCase()))
            .toList();
      }

      final withStepsFutures = allRecipeDtos.map((recipe) async {
        final recipeUid = IntegerUid(int.parse(recipe.id));
        try {
          final steps =
              await _remoteRecipeStepsDataSource.getRecipeSteps(recipeUid);
          return recipe.toDomain(steps.map((step) => step.toDomain()).toList());
        } catch (_) {
          return null;
        }
      });

      final recipesUntreated = await Future.wait(withStepsFutures);
      final domainRecipes = recipesUntreated
          .where((recipe) => recipe != null)
          .map((recipe) => recipe!)
          .toList();
      return ResultSuccess(domainRecipes);
    } catch (e) {
      final failure = _getExceptionFailure(e);
      return ResultFailure(failure);
    }
  }

  @override
  Future<SafeResult<Recipe, RecipeFailure>> getRecipeById(
    UniqueIdentifier recipeId,
  ) async {
    try {
      final recipeDto = await _remoteRecipesDataSource.getRecipeById(recipeId);
      final steps = await _remoteRecipeStepsDataSource.getRecipeSteps(recipeId);

      final recipe =
          recipeDto.toDomain(steps.map((step) => step.toDomain()).toList());

      return ResultSuccess(recipe);
    } catch (e) {
      final failure = _getExceptionFailure(e);
      return ResultFailure(failure);
    }
  }

  @override
  Future<SafeResult<Unit, RecipeFailure>> createRecipe(
    Recipe recipe,
  ) async {
    try {
      final recipeId = await _remoteRecipesDataSource.createRecipe(recipe);
      final stepCreationFutures = recipe.steps.map(
        (step) async => await _remoteRecipeStepsDataSource.createRecipeStep(
          step: step,
          parentRecipeId: recipeId,
        ),
      );
      await Future.wait(stepCreationFutures);
      return ResultSuccess(Unit());
    } catch (e) {
      final failure = _getExceptionFailure(e);
      return ResultFailure(failure);
    }
  }

  RecipeFailure _getExceptionFailure(Object exception) {
    if (exception is DioException) {
      final statusCode = exception.response?.statusCode;
      final failure = switch (statusCode) {
        404 => const RecipeFailure.notFound(),
        _ => const RecipeFailure.unknown(),
      };
      return failure;
    } else if (exception is TimeoutException || exception is SocketException) {
      return const RecipeFailure.internetRequiredToPost();
    }
    return const RecipeFailure.unknown();
  }
}
