import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipes_flutter_demo/core/domain/types/unique_identifier.dart';

part 'recipe_step.freezed.dart';

@Freezed(fromJson: false, toJson: false)
class RecipeStep with _$RecipeStep {
  const factory RecipeStep({
    required UniqueIdentifier id,
    required int order,
    required String name,
    required String description,
    required DateTime updatedAt,
  }) = _RecipeStep;

  const RecipeStep._();
}
