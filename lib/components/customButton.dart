import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final TextEditingController txtUsername;
  final TextEditingController txtPassword;
  final Function(String status) onLogin;
  const CustomButton({
    super.key, 
    required this.txtUsername, 
    required this.txtPassword, 
    required this.onLogin
    });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        String username = txtUsername.text;
        String password = txtPassword.text;

        if (username == "admin" && password == "admin") {
          print("sukses login");
          onLogin("admin");
        } else {
          print("gagal login");
          onLogin("failed");
        }
      },
      child: Text(
        "Login",
        style: TextStyle(
          fontSize: 16,
          color: Color.fromARGB(255, 0, 0, 0),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}