import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:recipes_flutter_demo/core/presentation/widgets/input.dart';
import 'package:recipes_flutter_demo/features/recipe/domain/entities/recipe_step.dart';
import 'package:recipes_flutter_demo/features/recipe/domain/failures/recipe_failure.dart';
import 'package:recipes_flutter_demo/features/recipe/presentation/providers/recipe_create_form_state_notifier_provider.dart';
import 'package:recipes_flutter_demo/features/recipe/presentation/state_management/create_recipe/recipe_create_form_state.dart';
import 'package:recipes_flutter_demo/features/recipe/presentation/widgets/recipe_step_modal_bottom_sheet.dart';
import 'package:recipes_flutter_demo/features/recipe/presentation/widgets/step_list_tile.dart';

class CreateRecipeScreen extends ConsumerStatefulWidget {
  const CreateRecipeScreen({super.key});

  @override
  ConsumerState<CreateRecipeScreen> createState() => _CreateRecipeScreenState();
}

class _CreateRecipeScreenState extends ConsumerState<CreateRecipeScreen> {
  void _onStateChanged(
    RecipeCreateFormState? previous,
    RecipeCreateFormState next,
  ) {
    final currentFailure = next.validationFailure;
    final showFailure =
        currentFailure != null && previous?.validationFailure != currentFailure;
    if (showFailure) {
      _showFailure(currentFailure);
      ref.read(recipeCreateFormStateNotifierProvider.notifier).remoteFailure();
    }
    if (next.successfullyCreated) {
      _onRecipeCreated();
    }
  }

  void _showFailure(RecipeFailure failure) {
    final message = switch (failure) {
      NameCantBeEmpty() => "Name can't be empty",
      DurationMustBePossitive() => "Duration must be possitive",
      CousineCantBeEmpty() => "Cousine can't be empty",
      AtLeastOneStepRequired() => "You need to add at least one step",
      InternetRequiredToPost() => "Internet is required to create a recipe",
      _ => "Something went wrong",
    };
    Future.delayed(
      Duration.zero,
      () {
        if (context.mounted) {
          // ignore: use_build_context_synchronously
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(message)),
          );
        }
      },
    );
  }

  void _addRecipeStep() {
    final createFormStateNotifier =
        ref.read(recipeCreateFormStateNotifierProvider.notifier);
    if (!context.mounted) {
      return;
    }
    showModalBottomSheet(
      context: context,
      builder: (context) => RecipeStepModalBottomSheet(
        onSubmitted: (name, description) {
          if (name.isNotEmpty) {
            createFormStateNotifier.addStep(
              name: name,
              description: description,
            );
          }
          Navigator.of(context).pop();
        },
      ),
    );
  }

  void _onRecipeCreated() {
    Future.delayed(
      Duration.zero,
      () {
        if (context.mounted) {
          // ignore: use_build_context_synchronously
          Navigator.of(context).pop();
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(recipeCreateFormStateNotifierProvider, _onStateChanged);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create recipe"),
        actions: [
          IconButton(
            onPressed: () =>
                ref.read(recipeCreateFormStateNotifierProvider.notifier).save(),
            icon: const Icon(
              Icons.save_rounded,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Consumer(
          builder: (context, ref, child) {
            final state = ref.watch(recipeCreateFormStateNotifierProvider);

            if (state.isLoading) {
              return _buildLoading();
            }

            return _buildRecipeForm(ref, state);
          },
        ),
      ),
    );
  }

  Widget _buildLoading() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _buildRecipeForm(WidgetRef ref, RecipeCreateFormState state) {
    final createFormStateNotifier =
        ref.read(recipeCreateFormStateNotifierProvider.notifier);

    final recipe = state.recipeBeingCreated;

    return ListView(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 16,
      ),
      children: [
        Input(
          hint: "Name",
          initialValue: recipe.name,
          onChanged: createFormStateNotifier.setName,
          inputType: InputType.text,
        ),
        const SizedBox(height: 20),
        Input(
          hint: "Description",
          initialValue: recipe.description,
          onChanged: createFormStateNotifier.setDesctiption,
          inputType: InputType.text,
        ),
        const SizedBox(height: 20),
        Input(
          hint: "Cousine",
          initialValue: recipe.cousine,
          onChanged: createFormStateNotifier.setCousine,
          inputType: InputType.text,
        ),
        const SizedBox(height: 20),
        Input(
          hint: "Duration (min)",
          initialValue: recipe.durationMinutes > 0
              ? recipe.durationMinutes.toString()
              : "",
          onChanged: (stringValue) {
            final intValue = int.tryParse(stringValue);
            if (intValue != null) {
              createFormStateNotifier.setDuration(intValue);
            }
          },
          inputType: InputType.int,
        ),
        const SizedBox(height: 50),
        _buildSteps(state.recipeBeingCreated.steps),
      ],
    );
  }

  Widget _buildSteps(List<RecipeStep> steps) {
    final createFormStateNotifier =
        ref.read(recipeCreateFormStateNotifierProvider.notifier);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Steps",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            IconButton(
              onPressed: _addRecipeStep,
              icon: const Icon(Icons.add_rounded),
            ),
          ],
        ),
        ...steps.map(
          (step) => StepListTile(
            step: step,
            onDeleteClicked: () =>
                createFormStateNotifier.removeStep(step.order),
          ),
        ),
      ],
    );
  }
}
