import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipes_flutter_demo/core/domain/types/unique_identifier.dart';
import 'package:recipes_flutter_demo/core/infrastructure/converters/millis_datetime_json_converter.dart';
import 'package:recipes_flutter_demo/features/recipe/domain/aggregates/recipe.dart';
import 'package:recipes_flutter_demo/features/recipe/domain/entities/recipe_step.dart';

part 'get_recipe_dto.freezed.dart';
part 'get_recipe_dto.g.dart';

@freezed
class GetRecipeDto with _$GetRecipeDto {
  const factory GetRecipeDto({
    required String id,
    required String name,
    required String description,
    required int duration,
    required String cousine,
    @MillisDatetimeJsonConverter() required DateTime updatedAt,
  }) = _GetRecipeDto;

  const GetRecipeDto._();

  factory GetRecipeDto.fromJson(Map<String, Object?> json) =>
      _$GetRecipeDtoFromJson(json);

  Recipe toDomain(List<RecipeStep> steps) {
    return Recipe(
      id: IntegerUid(int.parse(id)),
      name: name,
      description: description,
      durationMinutes: duration,
      cousine: cousine,
      updatedAt: updatedAt,
      steps: steps,
    );
  }
}
