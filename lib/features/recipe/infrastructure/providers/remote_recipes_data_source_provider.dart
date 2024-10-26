import 'package:recipes_flutter_demo/core/infrastructure/providers/recipes_api_client_provider.dart';
import 'package:recipes_flutter_demo/features/recipe/infrastructure/data_sources/remote_recipes_data_source.dart';
import 'package:riverpod/riverpod.dart';

final remoteRecipesDataSourceProvider = Provider<IRemoteRecipesDataSource>(
  (ref) {
    final apiClient = ref.watch(recipesApiClientProvider);
    return RemoteRecipesDataSource(apiClient);
  },
);
