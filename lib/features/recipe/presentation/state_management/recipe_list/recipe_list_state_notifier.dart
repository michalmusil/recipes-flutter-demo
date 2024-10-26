import 'package:recipes_flutter_demo/features/recipe/domain/services/i_recipe_service.dart';
import 'package:recipes_flutter_demo/features/recipe/presentation/state_management/recipe_list/recipe_list_state.dart';
import 'package:riverpod/riverpod.dart';

class RecipeListStateNotifier extends StateNotifier<RecipeListState> {
  RecipeListStateNotifier(
    this._recipeService,
  ) : super(RecipeListState.initial());

  final IRecipeService _recipeService;

  Future<void> loadRecipes() async {
    state = state.copyWith(failure: null, isLoading: true);

    final recipesOrFailure = await _recipeService.getRecipes();

    recipesOrFailure.fold(
      onSuccess: (data) => state = state.copyWith(
        recipes: data,
        failure: null,
        isLoading: false,
      ),
      onFailure: (failure) => state = state.copyWith(
        recipes: [],
        failure: failure,
        isLoading: false,
      ),
    );
  }

  void remoteFailure() {
    if (state.failure != null) {
      state = state.copyWith(failure: null);
    }
  }
}
