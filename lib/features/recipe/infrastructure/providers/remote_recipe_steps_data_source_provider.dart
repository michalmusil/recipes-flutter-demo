import 'package:recipes_flutter_demo/core/infrastructure/providers/recipes_api_client_provider.dart';
import 'package:recipes_flutter_demo/features/recipe/infrastructure/data_sources/remote_recipe_steps_data_source.dart';
import 'package:riverpod/riverpod.dart';

final remoteRecipeStepsDataSourceProvider =
    Provider<IRemoteRecipeStepsDataSource>(
  (ref) {
    final apiClient = ref.watch(recipesApiClientProvider);
    return RemoteRecipeStepsDataSource(apiClient);
  },
);
