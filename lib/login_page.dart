import 'package:flutter/material.dart';
import 'package:flutter_application_2/components/customButton.dart';
import 'package:flutter_application_2/components/customText.dart';
import 'package:flutter_application_2/components/customTextField.dart';
// import 'package:flutter/widget_previews.dart';

class LoginPage extends StatefulWidget {
  const new({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  String statusLogin = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page")),
      body: Column(
        children: [
          CustomText(statusLogin: statusLogin),
          Container(
            margin: EdgeInsets.all(10),
            child: CustomTextField(
              hint: "INPUT USERNAME", 
              txtController: txtUsername
            ),
          ),

          Container(
            margin: EdgeInsets.all(10),
            child: CustomTextField(
              hint: "INPUT PASSWORD", 
              txtController: txtPassword
            ),
          ),

          Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            height: 40,

            child: CustomButton(
              txtUsername: txtUsername,
              txtPassword: txtPassword, 
              onLogin: (status) {
                setState(() {
                  statusLogin = status;
                });
              }
            ),
          ),
        ], // children
      ),
    );
  }
}

// @Preview(name: 'Login Page Preview')
// Widget loginPagePreview() {
//   return MaterialApp(
//     debugShowCheckedModeBanner: false,
//     theme: ThemeData(
//       colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
//     ),
//     home: const LoginPage(),
//   );
// }
