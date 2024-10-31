import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:recipes_flutter_demo/features/recipe/infrastructure/data_sources/local_recipes_data_source.dart';

final localRecipeDataSourceProvider = Provider<ILocalRecipesDataSource>(
  (ref) {
    return LocalRecipesDataSource();
  },
);
