import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String statusLogin;
  const CustomText({super.key, required this.statusLogin});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Well, well.. well... $statusLogin",
      style: const TextStyle(
        fontSize: 32,
        color: Color.fromARGB(255, 0, 0, 0),
        fontWeight: FontWeight.bold,
      ),
    );
  }
}