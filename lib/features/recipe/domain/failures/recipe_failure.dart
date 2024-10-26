import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipes_flutter_demo/core/domain/failures/failure.dart';

part 'recipe_failure.freezed.dart';

@freezed
sealed class RecipeFailure extends Failure with _$RecipeFailure {
  const factory RecipeFailure.nameCantBeEmpty() = NameCantBeEmpty;
  const factory RecipeFailure.durationMustBePossitive() =
      DurationMustBePossitive;
  const factory RecipeFailure.cousineCantBeEmpty() = CousineCantBeEmpty;
  const factory RecipeFailure.atLeastOneStepRequired() = AtLeastOneStepRequired;
  const factory RecipeFailure.internetRequiredToPost() = InternetRequiredToPost;
  const factory RecipeFailure.notFound() = NotFound;
  const factory RecipeFailure.unknown() = Unknown;
}
