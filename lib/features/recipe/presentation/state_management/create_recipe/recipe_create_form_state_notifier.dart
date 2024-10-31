import 'package:recipes_flutter_demo/core/domain/types/unique_identifier.dart';
import 'package:recipes_flutter_demo/features/recipe/domain/entities/recipe_step.dart';
import 'package:recipes_flutter_demo/features/recipe/domain/services/i_recipe_service.dart';
import 'package:recipes_flutter_demo/features/recipe/presentation/state_management/create_recipe/recipe_create_form_state.dart';
import 'package:riverpod/riverpod.dart';

class RecipeCreateFormStateNotifier
    extends StateNotifier<RecipeCreateFormState> {
  RecipeCreateFormStateNotifier(
    this._recipeService,
  ) : super(RecipeCreateFormState.initial());

  final IRecipeService _recipeService;

  Future<void> save() async {
    state = state.copyWith(isLoading: true);

    final successOrFailure =
        await _recipeService.createRecipe(state.recipeBeingCreated);
    successOrFailure.fold(
      onFailure: (failure) => state = state.copyWith(
        isLoading: false,
        validationFailure: failure,
      ),
      onSuccess: (_) => state = state.copyWith(
        isLoading: false,
        successfullyCreated: true,
        validationFailure: null,
      ),
    );
  }

  void setName(String name) {
    state = state.copyWith(
      recipeBeingCreated: state.recipeBeingCreated.copyWith(
        name: name,
      ),
    );
  }

  void setDesctiption(String description) {
    state = state.copyWith(
      recipeBeingCreated: state.recipeBeingCreated.copyWith(
        description: description,
      ),
    );
  }

  void setDuration(int durationMinutes) {
    state = state.copyWith(
      recipeBeingCreated: state.recipeBeingCreated.copyWith(
        durationMinutes: durationMinutes,
      ),
    );
  }

  void setCousine(String cousine) {
    state = state.copyWith(
      recipeBeingCreated: state.recipeBeingCreated.copyWith(
        cousine: cousine,
      ),
    );
  }

  void addStep({
    required String name,
    required String description,
  }) {
    final currentRecipe = state.recipeBeingCreated;
    final currentSteps = currentRecipe.steps;
    final nextOrder = currentSteps.length + 1;

    final newStep = RecipeStep(
      id: const IntegerUid.uninitialized(),
      order: nextOrder,
      name: name,
      description: description,
      updatedAt: DateTime.timestamp(),
    );

    final newSteps = [...state.recipeBeingCreated.steps, newStep];

    state = state.copyWith(
      recipeBeingCreated: state.recipeBeingCreated.copyWith(
        steps: newSteps,
      ),
    );
  }

  void removeStep(int order) {
    final newSteps = ([...state.recipeBeingCreated.steps])
      ..removeWhere((s) => s.order == order);

    var orderCounter = 1;
    final newStepsReordered = newSteps
        .map(
          (step) => step.copyWith(order: orderCounter++),
        )
        .toList();

    state = state.copyWith(
      recipeBeingCreated:
          state.recipeBeingCreated.copyWith(steps: newStepsReordered),
    );
  }

  void remoteFailure() {
    if (state.validationFailure != null) {
      state = state.copyWith(validationFailure: null);
    }
  }
}
