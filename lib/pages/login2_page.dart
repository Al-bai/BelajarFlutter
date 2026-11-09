import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:flutter_application_2/components/customTextField.dart';
import 'package:flutter_application_2/components/primaryButton.dart';
import 'package:flutter_application_2/components/socialButton.dart';
import 'package:flutter_application_2/controllers/login_controller.dart';

class Login2Page extends StatelessWidget {
  Login2Page({super.key});

  final LoginController controller = Get.put(LoginController());
  final Color primaryBlue = Colors.blueAccent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          
            const Text(
              "Masuk",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              "Silakan masuk ke akun Anda",
              style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
            ),
            const SizedBox(height: 40),

            CustomTextField(
              hint: "Masukkan username",
              txtController: controller.txtUsername,
              icon: Icons.person_outline,
            ),
            const SizedBox(height: 16),

            CustomTextField(
              hint: "Masukkan kata sandi",
              txtController: controller.txtPassword,
              icon: Icons.lock_outline,
              isPassword: true,
            ),
            const SizedBox(height: 16),
           
            Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Lupa kata sandi?",
                    style: TextStyle(color: primaryBlue),
                  ),
                ),
              ),
            const SizedBox(height: 24),

         
            Obx(() => PrimaryButton(
                  text: "Masuk",
                  isLoading: controller.isLoading.value,
                  onPressed: () => controller.login(),
                )),
            const SizedBox(height: 24),

            Row(
              children: [
                Expanded(child: Divider(color: Colors.grey.shade300)),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "atau masuk dengan",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ),
                Expanded(child: Divider(color: Colors.grey.shade300)),
              ],
            ),
            const SizedBox(height: 14),

            Row(
              children: [
                Expanded(
                  child: SocialButton(
                    title: "Google",
                    icon: Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/120px-Google_%22G%22_logo.svg.png',
                      width: 24,
                      height: 24,
                    ),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: SocialButton(
                    title: "Facebook",
                    icon: const Icon(Icons.facebook, color: Colors.blue, size: 28),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),

           
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Belum punya akun? ",
                  style: TextStyle(color: Colors.grey),
                ),
                TextButton(
                  onPressed: () {}, 
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0), 
                    minimumSize: Size.zero, 
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child: Text(
                    "Daftar",
                    style: TextStyle(
                      color: primaryBlue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),  
              ],
            ),
          ],
        ),
      ),
    );
  }
}