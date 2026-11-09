import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final String title;
  final Widget icon;
  final VoidCallback onPressed;

  const SocialButton({
    super.key,
    required this.title,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: onPressed,
      icon: icon,
      label: Text(title, style: const TextStyle(fontSize: 14)),
      style: OutlinedButton.styleFrom(
        fixedSize: const Size.fromHeight(45), 
        side: BorderSide(color: Colors.grey.shade300),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        foregroundColor: Colors.black87,
      ),
    );
  }
}