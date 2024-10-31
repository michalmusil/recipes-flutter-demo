import 'package:flutter/material.dart';
import 'package:recipes_flutter_demo/core/presentation/widgets/input.dart';

const _upperBottomSheetRadius = 30.0;

class RecipeStepModalBottomSheet extends StatefulWidget {
  const RecipeStepModalBottomSheet({
    required this.onSubmitted,
    super.key,
  });

  final void Function(String name, String description) onSubmitted;

  @override
  State<RecipeStepModalBottomSheet> createState() =>
      _RecipeStepModalBottomSheetState();
}

class _RecipeStepModalBottomSheetState
    extends State<RecipeStepModalBottomSheet> {
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();

  bool _addingEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 15,
        bottom: 30,
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(_upperBottomSheetRadius),
          topRight: Radius.circular(_upperBottomSheetRadius),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Add step",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 20),
          Input(
            hint: "Name",
            controller: _nameController,
            onChanged: (value) => setState(() {
              _addingEnabled = value.isNotEmpty;
            }),
            inputType: InputType.text,
          ),
          const SizedBox(height: 20),
          Input(
            hint: "Description",
            controller: _descriptionController,
            inputType: InputType.text,
          ),
          const SizedBox(height: 40),
          ElevatedButton(
            onPressed: _addingEnabled
                ? () => widget.onSubmitted(
                      _nameController.text,
                      _descriptionController.text,
                    )
                : null,
            child: const Text("Add"),
          )
        ],
      ),
    );
  }
}
