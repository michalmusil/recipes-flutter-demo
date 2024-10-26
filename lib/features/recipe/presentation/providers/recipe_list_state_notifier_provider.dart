import 'package:recipes_flutter_demo/features/recipe/infrastructure/providers/recipe_service_provider.dart';
import 'package:recipes_flutter_demo/features/recipe/presentation/state_management/recipe_list/recipe_list_state.dart';
import 'package:recipes_flutter_demo/features/recipe/presentation/state_management/recipe_list/recipe_list_state_notifier.dart';
import 'package:riverpod/riverpod.dart';

final recipeListStateNotifierProvider =
    StateNotifierProvider.autoDispose<RecipeListStateNotifier, RecipeListState>(
  (ref) {
    final recipeService = ref.watch(recipeServiceProvider);
    return RecipeListStateNotifier(recipeService);
  },
);
