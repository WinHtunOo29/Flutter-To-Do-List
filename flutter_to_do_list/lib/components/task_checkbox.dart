import 'package:flutter/material.dart';

class TaskCheckbox extends StatelessWidget {
  final bool? checkboxState;
  final Function(bool?) toggleCheckboxState;

  const TaskCheckbox({super.key, required this.checkboxState, required this.toggleCheckboxState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxState,
      onChanged: toggleCheckboxState
    );
  }
}