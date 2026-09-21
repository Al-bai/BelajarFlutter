import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomNumberText extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  const CustomNumberText({super.key, required this.controller, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller, 
      keyboardType: TextInputType.number,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      decoration: InputDecoration(
          hintText: hintText, 
          border: const OutlineInputBorder(),
          prefixIcon: const Icon(Icons.numbers),
        ),
    );
  }
}