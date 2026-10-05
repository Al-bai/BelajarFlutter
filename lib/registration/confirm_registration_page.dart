import 'package:flutter/material.dart';
import 'package:flutter_application_2/components/customButton2.dart';
import 'package:flutter_application_2/controller_regist/confirm_registration_controller.dart';
import 'package:flutter_application_2/components/customDetailRow.dart';
import 'package:get/get.dart';

class ConfirmRegistrationPage extends StatelessWidget {
  ConfirmRegistrationPage({super.key});

  final controller = Get.put(ConfirmRegistrationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Confirm Page", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blue.shade700,
        ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),

            child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    CustomDetailRow(label: "Username", value: controller.username),
                    const Divider(),
                    CustomDetailRow(label: "Nama Lengkap", value: controller.nama_lengkap),
                    const Divider(),
                    CustomDetailRow(label: "Email", value: controller.email),
                    const Divider(),
                    CustomDetailRow(label: "No WhatsApp", value: controller.noWa),
                    const Divider(),
                    CustomDetailRow(label: "Jenis Kelamin", value: controller.jenisKelamin),
                    const Divider(),
                    CustomDetailRow(label: "Agama", value: controller.religion),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 24),
            CustomButton2(
              text: "BACK",
              onPressed: () {
                Get.back();
              },
            ),
          ],
        ),
      ),
    );
  }
}