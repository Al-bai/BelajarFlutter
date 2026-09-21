import 'package:flutter/material.dart';

class CalculatorButtons extends StatelessWidget {
  final Function(String operator) onOperationPressed;
  const CalculatorButtons({super.key, required this.onOperationPressed});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}