import 'package:recipes_flutter_demo/features/recipe/application/services/recipe_service.dart';
import 'package:recipes_flutter_demo/features/recipe/domain/services/i_recipe_service.dart';
import 'package:recipes_flutter_demo/features/recipe/infrastructure/providers/recipe_repository_provider.dart';
import 'package:riverpod/riverpod.dart';

final recipeServiceProvider = Provider<IRecipeService>(
  (ref) {
    final repository = ref.watch(recipeRepositoryProvider);
    return RecipeService(repository);
  },
);
