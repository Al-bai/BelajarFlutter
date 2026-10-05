import 'package:flutter/material.dart';
import 'package:flutter_application_2/routes.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
// import 'calculatorPage.dart';
//import 'login_page.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
      useMaterial3: true,
    ),
      initialRoute: Routes.registration,
      getPages: Routes.myPages,
    );
  }
}
