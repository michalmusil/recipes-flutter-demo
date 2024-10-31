import 'package:flutter/material.dart';
import 'package:recipes_flutter_demo/features/recipe/domain/entities/recipe_step.dart';

class StepListTile extends StatelessWidget {
  const StepListTile({
    required this.step,
    required this.onDeleteClicked,
    this.padding = const EdgeInsets.symmetric(vertical: 8),
    super.key,
  });

  final RecipeStep step;
  final VoidCallback onDeleteClicked;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surfaceDim,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              step.order.toString(),
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      step.name,
                      maxLines: 1,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      step.description,
                      maxLines: 3,
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ],
                ),
              ),
            ),
            IconButton(
              onPressed: onDeleteClicked,
              icon: const Icon(Icons.close),
            ),
          ],
        ),
      ),
    );
  }
}
