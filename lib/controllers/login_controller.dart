import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/routes.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class LoginController extends GetxController {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  var isLoading = false.obs;

  // method hit API
  void login() async {
    if (txtUsername.text.isEmpty || txtPassword.text.isEmpty) {
      Get.snackbar("error", "username dan password harus terisi");
    } else {
      try {
        isLoading.value =
            true; // sebagai tanda di page nya muncul loading widget
        final url = Uri.parse("https://mediadwi.com/api/latihan/login");

        final response = await http.post(
          url,
          body: {"username": txtUsername.text, "password": txtPassword.text},
        );

        isLoading.value = false;

        if (response.statusCode == 200) {
          final data = jsonDecode(response.body);

          if (data['status'] == true) {
            Get.snackbar("berhasil", data['message']);
            Get.offAndToNamed(Routes.main_menu);
          } else {
            Get.snackbar("gagal", data['message']);
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
