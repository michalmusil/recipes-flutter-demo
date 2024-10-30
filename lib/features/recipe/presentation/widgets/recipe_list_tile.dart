import 'package:flutter/material.dart';
import 'package:recipes_flutter_demo/features/recipe/domain/aggregates/recipe.dart';

class RecipeListTile extends StatelessWidget {
  const RecipeListTile({
    required this.recipe,
    required this.onTap,
    super.key,
  });

  final Recipe recipe;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.receipt_long_rounded),
      title: Text(recipe.name),
      subtitle: Text(
        recipe.description,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: _buildCookTime(),
      onTap: onTap,
    );
  }

  Widget _buildCookTime() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Icon(
          Icons.watch_later_outlined,
          size: 15,
        ),
        const SizedBox(width: 5),
        Text(
          "${recipe.durationMinutes} m",
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
