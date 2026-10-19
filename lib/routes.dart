import 'package:get/get.dart';

import 'package:flutter_application_2/registration/registration_page.dart';
import 'package:flutter_application_2/pages/list_makanan_page.dart';
import 'package:flutter_application_2/pages/detail_makanan_page.dart';
import 'package:flutter_application_2/registration/confirm_registration_page.dart';

class Routes {
  static const String registration = "/registration";
  static const String confirm_registration = "/confirm_registration";
  static const String list_makanan = "/list_makanan";
  static const String detail_makanan = "/detail_makanan";
  

  static final myPages = [
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confirm_registration, page: () => ConfirmRegistrationPage()),
    GetPage(name: list_makanan, page: () => ListMakananPage()),
    GetPage(name: detail_makanan, page: () => DetailMakananPage()),
  ];
}