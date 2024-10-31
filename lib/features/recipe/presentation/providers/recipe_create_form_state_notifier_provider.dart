import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:recipes_flutter_demo/features/recipe/infrastructure/providers/recipe_service_provider.dart';
import 'package:recipes_flutter_demo/features/recipe/presentation/state_management/create_recipe/recipe_create_form_state.dart';
import 'package:recipes_flutter_demo/features/recipe/presentation/state_management/create_recipe/recipe_create_form_state_notifier.dart';

final recipeCreateFormStateNotifierProvider = StateNotifierProvider.autoDispose<
    RecipeCreateFormStateNotifier, RecipeCreateFormState>(
  (ref) {
    final recipeService = ref.watch(recipeServiceProvider);
    return RecipeCreateFormStateNotifier(recipeService);
  },
);
