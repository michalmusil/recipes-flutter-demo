// Mock Classes
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:recipes_flutter_demo/core/domain/types/safe_result.dart';
import 'package:recipes_flutter_demo/core/domain/types/unique_identifier.dart';
import 'package:recipes_flutter_demo/core/domain/types/unit.dart';
import 'package:recipes_flutter_demo/features/recipe/application/services/recipe_service.dart';
import 'package:recipes_flutter_demo/features/recipe/domain/aggregates/recipe.dart';
import 'package:recipes_flutter_demo/features/recipe/domain/entities/recipe_step.dart';
import 'package:recipes_flutter_demo/features/recipe/domain/failures/recipe_failure.dart';
import 'package:recipes_flutter_demo/features/recipe/domain/repositories/i_recipe_repository.dart';
import 'package:recipes_flutter_demo/features/recipe/domain/services/i_recipe_service.dart';

class MockRecipeRepository extends Mock implements IRecipeRepository {}

void main() {
  late MockRecipeRepository mockRecipeRepository;
  late IRecipeService recipeService;

  setUpAll(
    () {
      registerFallbackValue(
        Recipe(
          id: const IntegerUid(1),
          name: "Spaghetti",
          description: "Delicious homemade spaghetti.",
          durationMinutes: 30,
          cousine: "Italian",
          updatedAt: DateTime.now(),
          steps: [
            RecipeStep(
              id: const IntegerUid(1),
              order: 1,
              name: "Boil water",
              description: "Boil water in a large pot.",
              updatedAt: DateTime.now(),
            ),
          ],
        ),
      );
    },
  );

  setUp(() {
    mockRecipeRepository = MockRecipeRepository();
    recipeService = RecipeService(mockRecipeRepository);
  });

  final testRecipe = Recipe(
    id: const IntegerUid(1),
    name: "Spaghetti",
    description: "Delicious homemade spaghetti.",
    durationMinutes: 30,
    cousine: "Italian",
    updatedAt: DateTime.now(),
    steps: [
      RecipeStep(
        id: const IntegerUid(1),
        order: 1,
        name: "Boil water",
        description: "Boil water in a large pot.",
        updatedAt: DateTime.now(),
      ),
    ],
  );

  group(
    "get recipes",
    () {
      test('getRecipes returns a success result with recipes from repository',
          () async {
        // Arrange
        when(() => mockRecipeRepository.getRecipes())
            .thenAnswer((_) async => ResultSuccess([testRecipe]));

        // Act
        final result = await recipeService.getRecipes();

        // Assert
        expect(result, isA<ResultSuccess<List<Recipe>, RecipeFailure>>());
        expect((result as ResultSuccess).data, contains(testRecipe));
        verify(() => mockRecipeRepository.getRecipes()).called(1);
      });
      test('getRecipes returns a failure result when repository fails',
          () async {
        // Arrange
        when(() => mockRecipeRepository.getRecipes()).thenAnswer(
            (_) async => ResultFailure(const RecipeFailure.unknown()));

        // Act
        final result = await recipeService.getRecipes();

        // Assert
        expect(result, isA<ResultFailure<List<Recipe>, RecipeFailure>>());
        expect((result as ResultFailure).failure, isA<RecipeFailure>());
        verify(() => mockRecipeRepository.getRecipes()).called(1);
      });
    },
  );
  group(
    "create recipe",
    () {
      test('createRecipe succeeds with valid recipe and calls repository',
          () async {
        // Arrange
        when(() => mockRecipeRepository.createRecipe(any()))
            .thenAnswer((_) async => ResultSuccess(Unit()));

        // Act
        final result = await recipeService.createRecipe(testRecipe);

        // Assert
        expect(result, isA<ResultSuccess<Unit, RecipeFailure>>());
        verify(() => mockRecipeRepository.createRecipe(any())).called(1);
      });
      test('createRecipe fails when recipe name is empty', () async {
        // Arrange
        final invalidRecipe = testRecipe.copyWith(name: '');

        // Act
        final result = await recipeService.createRecipe(invalidRecipe);

        // Assert
        expect(result, isA<ResultFailure<Unit, RecipeFailure>>());
        expect((result as ResultFailure).failure,
            const RecipeFailure.nameCantBeEmpty());
        verifyNever(() => mockRecipeRepository.createRecipe(any()));
      });
      test('createRecipe fails when recipe duration is not positive', () async {
        // Arrange
        final invalidRecipe = testRecipe.copyWith(durationMinutes: 0);

        // Act
        final result = await recipeService.createRecipe(invalidRecipe);

        // Assert
        expect(result, isA<ResultFailure<Unit, RecipeFailure>>());
        expect((result as ResultFailure).failure,
            const RecipeFailure.durationMustBePossitive());
        verifyNever(() => mockRecipeRepository.createRecipe(any()));
      });
      test('createRecipe fails when recipe cousine is empty', () async {
        // Arrange
        final invalidRecipe = testRecipe.copyWith(cousine: '');

        // Act
        final result = await recipeService.createRecipe(invalidRecipe);

        // Assert
        expect(result, isA<ResultFailure<Unit, RecipeFailure>>());
        expect((result as ResultFailure).failure,
            const RecipeFailure.cousineCantBeEmpty());
        verifyNever(() => mockRecipeRepository.createRecipe(any()));
      });
      test('createRecipe fails when recipe has no steps', () async {
        // Arrange
        final invalidRecipe = testRecipe.copyWith(steps: []);

        // Act
        final result = await recipeService.createRecipe(invalidRecipe);

        // Assert
        expect(result, isA<ResultFailure<Unit, RecipeFailure>>());
        expect((result as ResultFailure).failure,
            const RecipeFailure.atLeastOneStepRequired());
        verifyNever(() => mockRecipeRepository.createRecipe(any()));
      });
      test('createRecipe fails when repository fails to create recipe',
          () async {
        // Arrange
        when(() => mockRecipeRepository.createRecipe(any())).thenAnswer(
            (_) async => ResultFailure(const RecipeFailure.unknown()));

        // Act
        final result = await recipeService.createRecipe(testRecipe);

        // Assert
        expect(result, isA<ResultFailure<Unit, RecipeFailure>>());
        expect(
            (result as ResultFailure).failure, const RecipeFailure.unknown());
        verify(() => mockRecipeRepository.createRecipe(any())).called(1);
      });
    },
  );
}
