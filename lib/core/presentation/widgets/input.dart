import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Input extends StatefulWidget {
  const Input({
    required this.hint,
    required this.inputType,
    this.onChanged,
    this.initialValue,
    this.controller,
    super.key,
  });

  final TextEditingController? controller;
  final String? initialValue;
  final String hint;
  final ValueChanged<String>? onChanged;
  final InputType inputType;

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  late final TextEditingController _textController;

  @override
  void initState() {
    _textController = TextEditingController(text: widget.initialValue);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller ?? _textController,
      onChanged: widget.onChanged,
      autocorrect: false,
      decoration: InputDecoration(
        hintText: widget.hint,
      ),
      onTapOutside: (event) => FocusScope.of(context).unfocus(),
      keyboardType: _getInputType(),
      inputFormatters: _getFormatters(),
    );
  }

  TextInputType _getInputType() {
    switch (widget.inputType) {
      case InputType.text:
        return TextInputType.text;
      case InputType.int:
        return TextInputType.number;
    }
  }

  List<TextInputFormatter> _getFormatters() {
    switch (widget.inputType) {
      case InputType.text:
        return [];
      case InputType.int:
        return [FilteringTextInputFormatter.digitsOnly];
    }
  }
}

enum InputType {
  text,
  int,
}
