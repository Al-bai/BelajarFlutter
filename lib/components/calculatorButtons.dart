import 'package:flutter/material.dart';

class CalculatorButtons extends StatelessWidget {
  final Function(String operator) onOperationPressed;
  const CalculatorButtons({super.key, required this.onOperationPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildOperationButton('+'),
        const SizedBox(width: 5),
        _buildOperationButton('-'),
        const SizedBox(width: 5),
        _buildOperationButton('x'),
        const SizedBox(width: 5),
        _buildOperationButton('/'),
      ],
    );
  }

  Widget _buildOperationButton(String symbol) {
    return ElevatedButton(
      onPressed: () => onOperationPressed(symbol),
      child: Text(
        symbol,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }
  
}