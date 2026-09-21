import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_2/components/calculatorButtons.dart';
import 'package:flutter_application_2/components/customNumberText.dart';
import 'package:flutter_application_2/components/textDisplay.dart';
// import 'package:flutter/widget_previews.dart';

class CalculatorPage extends StatefulWidget {
  const new({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  TextEditingController txtAngkaPertama = TextEditingController();
  TextEditingController txtAngkaKedua = TextEditingController();
  String hasil = "";

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

          CalculatorButtons(onOperationPressed: (String operator) {  },),

          Container(
            margin: EdgeInsets.all(10),
            child: TextDisplay(hasil: hasil)
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
