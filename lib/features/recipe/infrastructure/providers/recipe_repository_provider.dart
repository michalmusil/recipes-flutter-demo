import 'package:recipes_flutter_demo/features/recipe/domain/repositories/i_recipe_repository.dart';
import 'package:recipes_flutter_demo/features/recipe/infrastructure/providers/remote_recipe_steps_data_source_provider.dart';
import 'package:recipes_flutter_demo/features/recipe/infrastructure/providers/remote_recipes_data_source_provider.dart';
import 'package:recipes_flutter_demo/features/recipe/infrastructure/repositories/recipe_repository.dart';
import 'package:riverpod/riverpod.dart';

final recipeRepositoryProvider = Provider<IRecipeRepository>(
  (ref) {
    final remoteRecipesDataSource = ref.watch(remoteRecipesDataSourceProvider);
    final remoteRecipeStepsDataSource =
        ref.watch(remoteRecipeStepsDataSourceProvider);

    return RecipeRepository(
      remoteRecipesDataSource,
      remoteRecipeStepsDataSource,
    );
  },
);
