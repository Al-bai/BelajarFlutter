import 'package:flutter/material.dart';

class TextDisplay extends StatelessWidget {
  final String hasil;
  const TextDisplay({super.key, required this.hasil});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Hasil: $hasil',
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)
    );
  }
}