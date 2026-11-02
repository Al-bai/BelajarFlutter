import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final TextEditingController txtController;
  final bool isPassword;
  final IconData? icon;

  const CustomTextField({
    super.key,
    required this.hint,
    required this.txtController,
    this.isPassword = false,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    const Color primaryBlue = Colors.blueAccent;

    return TextField(
      controller: txtController,
      obscureText: isPassword,
      style: const TextStyle(fontSize: 14),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.grey),

        prefixIcon: icon != null
            ? Icon(icon, color: Colors.grey.shade600)
            : null,

        filled: true,

        fillColor: Colors.blue.withOpacity(0.03),

        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.grey.shade300, width: 1.5),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: primaryBlue, width: 2.0),
        ),
      ),
    );
  }
}
