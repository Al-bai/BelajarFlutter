import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_2/components/calculatorButtons.dart';
import 'package:flutter_application_2/components/customNumberText.dart';
import 'package:flutter_application_2/components/textDisplay.dart';
import 'package:flutter_application_2/controllers/calculator.controller.dart';
import 'package:get/get.dart';
// import 'package:flutter/widget_previews.dart';

class CalculatorPage extends StatelessWidget {
  CalculatorPage({super.key});

  final controller = Get.put(CalculatorController());
  final TextEditingController txtAngkaPertama = TextEditingController();
  final TextEditingController txtAngkaKedua = TextEditingController();
 


    @override
    Widget build(BuildContext context) {
    

      return Scaffold(
        appBar: AppBar(
          title: Text(
            "MyCalculator",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(10, 40, 10, 10),
              child: CustomNumberText(controller: txtAngkaPertama, hintText: "Masukkan Angka Pertama"),
            ),

            Container(
              margin: EdgeInsets.all(10),
              child: CustomNumberText(controller: txtAngkaKedua, hintText: "Masukkan Angka Kedua"),
            ),

            SizedBox(width: 15),

            CalculatorButtons(
              onOperationPressed: (String operator) {
                String input1 = txtAngkaPertama.text.trim();
                String input2 = txtAngkaKedua.text.trim();

                if (input1.isEmpty || input2.isEmpty) {
                  Get.snackbar(
                    "Peringatan",
                    "Angka pertama dan angka kedua tidak boleh kosong!",
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: Colors.amber.shade700,
                    colorText: Colors.white,
                    margin: const EdgeInsets.all(10),
                    icon: const Icon(Icons.warning_amber_rounded, color: Colors.white),
                  );
                  return; 
                }

                double angka1 = double.parse(input1);
                double angka2 = double.parse(input2);

                if (operator == '/' && angka2 == 0) {
                  Get.snackbar(
                    "Peringatan",
                    "Tidak dapat melakukan pembagian dengan angka 0!",
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: Colors.redAccent,
                    colorText: Colors.white,
                    margin: const EdgeInsets.all(10),
                    icon: const Icon(Icons.error_outline, color: Colors.white),
                  );
                  return; // Hentikan eksekusi jika pembagi adalah 0
                }
                    switch (operator) {
                    case '+':
                      controller.tambah(angka1, angka2);
                      break;
                    case '-':
                      controller.kurang(angka1, angka2);
                      break;
                    case 'x':
                      controller.kali(angka1, angka2);
                      break;
                    case '/':
                      controller.bagi(angka1, angka2);
                      break;
                  }

                },
                
                ),

            Container(
              margin: EdgeInsets.all(10),
              child: Obx( () => TextDisplay(hasil: controller.hasilHitung.value.toString()), 
              ),
            ),
          ],
        ),
      );
    }
  
}


// @Preview(name: 'Calculator Page Preview')
// Widget CalculatorPagePreview() {
//   return MaterialApp(
//     debugShowCheckedModeBanner: false,
//     theme: ThemeData(
//       colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
//     ),
//     home: const CalculatorPage(),
//   );
// }
