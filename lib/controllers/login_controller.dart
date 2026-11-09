import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/login_model.dart';
import 'package:flutter_application_2/routes.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class LoginController extends GetxController {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  
  var isLoading = false.obs;
  var loginModel = Rxn<LoginModel>();

  // method hit API
  void login() async {
    if (txtUsername.text.isEmpty || txtPassword.text.isEmpty) {
      Get.snackbar("error", "username dan password harus terisi");
    } else {
      try {
        isLoading.value = true; 
        final url = Uri.parse("https://mediadwi.com/api/latihan/login");

        final response = await http.post(
          url,
          body: {"username": txtUsername.text, "password": txtPassword.text},
        );

        isLoading.value = false;

        if (response.statusCode == 200) {
          loginModel.value = loginModelFromJson(response.body);

          if (loginModel.value?.status == true) {
            Get.snackbar("berhasil", loginModel.value?.message ?? "");
            Get.offAndToNamed(Routes.main_menu);
          } else {
            Get.snackbar("gagal", loginModel.value?.message ?? "");
          }
        } else {
          Get.snackbar("gagal", "cek internet connection");
        }
      } catch (e) {
        isLoading.value = false;
        Get.snackbar("error", "Terjadi kesalahan: $e");
      }
    }
  }
}
