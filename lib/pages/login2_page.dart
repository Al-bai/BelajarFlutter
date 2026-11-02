import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_2/components/customTextField.dart';
import 'package:flutter_application_2/controllers/login_controller.dart';

class Login2Page extends StatelessWidget {
  Login2Page({super.key});

  final LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login Page",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: [
          Obx(
            () => controller.isLoading.value
                ? const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircularProgressIndicator(),
                  )
                : const SizedBox.shrink(),
          ),

          Container(
            margin: const EdgeInsets.all(10),
            child: CustomTextField(
              hint: "Input Username",
              txtController: controller.txtUsername,
              icon: Icons.person_outline,
            ),
          ),

          Container(
            margin: const EdgeInsets.all(10),
            child: CustomTextField(
              hint: "Input Password",
              txtController: controller.txtPassword,
              icon: Icons.lock_outline,
              isPassword: true,
            ),
          ),

          Container(
            margin: const EdgeInsets.all(10),
            width: double.infinity,
            height: 40,

            child: ElevatedButton(
              onPressed: () {
                controller.login();
              },
              child: const Text("LOGIN"),
            ),
          ),
        ],
      ),
    );
  }
}
