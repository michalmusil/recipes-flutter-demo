import 'package:recipes_flutter_demo/features/recipe/domain/aggregates/recipe.dart';

abstract interface class ILocalRecipesDataSource {
  Future<List<Recipe>> getLocalRecipes();
  Future<void> saveRecipesLocally(List<Recipe> recipes);
}

class LocalRecipesDataSource implements ILocalRecipesDataSource {
  List<Recipe> _localRecipes = [];

  @override
  Future<List<Recipe>> getLocalRecipes() async {
    return _localRecipes;
  }

  @override
  Future<void> saveRecipesLocally(List<Recipe> recipes) async {
    _localRecipes = recipes;
  }
}
