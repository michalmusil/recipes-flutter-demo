import 'package:recipes_flutter_demo/core/infrastructure/network/recipes_api_client.dart';
import 'package:riverpod/riverpod.dart';

final recipesApiClientProvider = Provider<RecipesApiClient>(
  (ref) => RecipesApiClient(),
);
