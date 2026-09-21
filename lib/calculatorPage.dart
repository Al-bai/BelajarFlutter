import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_2/components/customNumberText.dart';
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

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  '+',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),

              SizedBox(width: 5),

              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  '-',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),

              SizedBox(width: 5),

              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'x',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),

              SizedBox(width: 5),

              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  '/',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),

          Container(
            margin: EdgeInsets.all(10),
            child: const Text(
              'Hasil',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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
