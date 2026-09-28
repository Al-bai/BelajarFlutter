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
                double angka1 = double.tryParse(txtAngkaPertama.text) ?? 0.0;
                double angka2 = double.tryParse(txtAngkaKedua.text) ?? 0.0;
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
