import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:recipes_flutter_demo/features/recipe/domain/aggregates/recipe.dart';
import 'package:recipes_flutter_demo/features/recipe/domain/failures/recipe_failure.dart';
import 'package:recipes_flutter_demo/features/recipe/presentation/providers/recipe_list_state_notifier_provider.dart';
import 'package:recipes_flutter_demo/features/recipe/presentation/screens/create_recipe_screen.dart';
import 'package:recipes_flutter_demo/features/recipe/presentation/widgets/recipe_list_tile.dart';

class RecipeListScreen extends ConsumerStatefulWidget {
  const RecipeListScreen({super.key});

  @override
  ConsumerState<RecipeListScreen> createState() => _RecipeListScreenState();
}

class _RecipeListScreenState extends ConsumerState<RecipeListScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) => _loadRecipes());
    super.initState();
  }

  void _loadRecipes() {
    Future.delayed(
      Duration.zero,
      () {
        if (context.mounted) {
          ref.read(recipeListStateNotifierProvider.notifier).loadRecipes();
        }
      },
    );
  }

  void _showFailure(RecipeFailure failure) {
    final message = switch (failure) {
      NotFound() => "No recipes found :(",
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

  Future<void> _goToAddRecipe() async {
    if (!context.mounted) {
      return;
    }

    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const CreateRecipeScreen(),
      ),
    );
    ref.read(recipeListStateNotifierProvider.notifier).loadRecipes();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(
      recipeListStateNotifierProvider,
      (previous, next) {
        final currentFailure = next.failure;
        final showFailure =
            currentFailure != null && previous?.failure != currentFailure;
        if (showFailure) {
          _showFailure(currentFailure);
        }
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("Recipes"),
        actions: [
          IconButton(
              onPressed: () => _goToAddRecipe(),
              icon: const Icon(
                Icons.add_rounded,
              ))
        ],
      ),
      body: SafeArea(
        child: Consumer(
          builder: (context, ref, child) {
            final state = ref.watch(recipeListStateNotifierProvider);

            if (state.isLoading) {
              return _buildLoading();
            }

            return _buildRecipesList(state.recipes);
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

  Widget _buildRecipesList(List<Recipe> recipes) {
    if (recipes.isEmpty) {
      return const Center(
        child: Text("You don't have any recipes yet"),
      );
    }

    return ListView.builder(
      itemCount: recipes.length,
      itemBuilder: (context, index) {
        final recipe = recipes[index];
        return RecipeListTile(
          recipe: recipe,
          onTap: () => print("Not ready yet"),
        );
      },
    );
  }
}
