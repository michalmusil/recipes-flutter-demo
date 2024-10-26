import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipes_flutter_demo/features/recipe/domain/aggregates/recipe.dart';
import 'package:recipes_flutter_demo/features/recipe/domain/failures/recipe_failure.dart';

part 'recipe_list_state.freezed.dart';

@Freezed(fromJson: false, toJson: false)
class RecipeListState with _$RecipeListState {
  const factory RecipeListState({
    required List<Recipe> recipes,
    required bool isLoading,
    required RecipeFailure? failure,
  }) = _RecipeListState;

  factory RecipeListState.initial() => const RecipeListState(
        recipes: [],
        isLoading: false,
        failure: null,
      );

  const RecipeListState._();
}
