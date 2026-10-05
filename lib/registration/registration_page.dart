// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_2/routes.dart';
import 'package:flutter_application_2/components/customDropdown.dart';
import 'package:flutter_application_2/components/customButton2.dart';
import 'package:flutter_application_2/components/customTextField.dart';
import 'package:get/get.dart';

class RegistrationPage extends StatelessWidget {
  RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController txtUsername = TextEditingController();
    TextEditingController txtNamaLengkap = TextEditingController();
    TextEditingController txtEmail = TextEditingController();
    TextEditingController txtNoWA = TextEditingController();

    RxString selectedReligion = 'Islam'.obs;
    RxString selectedGender = 'Laki-laki'.obs;

    final List<String> religionOptions = [
      'Islam',
      'Kristen',
      'Katolik',
      'Hindu',
      'Buddha',
      'Khonghucu'
    ];

    final List<String> genderOptions = [
      'Laki-laki',
      'Perempuan'
    ];

    

    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blue.shade700,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox( 
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
            child: CustomTextField(
              hint: "Input Username", 
              txtController: txtUsername,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
            child: CustomTextField(
              hint: "Nama Lengkap", 
              txtController: txtNamaLengkap,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
            child: CustomTextField(
              hint: "Email", 
              txtController: txtEmail,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
            child: CustomTextField(
              hint: "Nomor WhatsApp", 
              txtController: txtNoWA,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
            child: Obx(() => CustomDropdown<String>(
                  label: "Jenis Kelamin",
                  value: selectedGender.value,
                  items: genderOptions,
                  onChanged: (value) {
                    if (value != null) selectedGender.value = value;
                  },
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
            child: Obx(() => CustomDropdown<String>(
                  label: "Agama",
                  value: selectedReligion.value,
                  items: religionOptions,
                  onChanged: (value) {
                    if (value != null) selectedReligion.value = value;
                  },
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
            child: CustomButton2(
              text: "SENDING", 
              onPressed: () {
                Get.toNamed(
                  Routes.confirm_registration,
                  arguments: {
                    "username": txtUsername.text,
                    "nama_lengkap": txtNamaLengkap.text,
                    "email": txtEmail.text,
                    "no_wa": txtNoWA.text,
                    "jenis_kelamin": selectedGender.value,
                    "religion": selectedReligion.value,
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}