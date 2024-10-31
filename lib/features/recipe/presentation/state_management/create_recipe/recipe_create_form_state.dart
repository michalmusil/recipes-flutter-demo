import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipes_flutter_demo/core/domain/types/unique_identifier.dart';
import 'package:recipes_flutter_demo/features/recipe/domain/aggregates/recipe.dart';
import 'package:recipes_flutter_demo/features/recipe/domain/failures/recipe_failure.dart';

part 'recipe_create_form_state.freezed.dart';

@Freezed(fromJson: false, toJson: false)
class RecipeCreateFormState with _$RecipeCreateFormState {
  const factory RecipeCreateFormState({
    required Recipe recipeBeingCreated,
    required bool isLoading,
    required RecipeFailure? validationFailure,
    required bool successfullyCreated,
  }) = _RecipeCreateFormState;

  factory RecipeCreateFormState.initial() => RecipeCreateFormState(
        recipeBeingCreated: Recipe(
          id: const IntegerUid.uninitialized(),
          name: "",
          description: "",
          durationMinutes: 0,
          cousine: "",
          updatedAt: DateTime.timestamp(),
          steps: [],
        ),
        isLoading: false,
        validationFailure: null,
        successfullyCreated: false,
      );

  const RecipeCreateFormState._();
}
