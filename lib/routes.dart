import 'package:get/get.dart';

import 'package:flutter_application_2/registration/registration_page.dart';
import 'package:flutter_application_2/registration/confirm_registration_page.dart';

class Routes {
  static const String registration = "/registration";
  static const String confirm_registration = "/confirm_registration";

  static final myPages = [
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confirm_registration, page: () => ConfirmRegistrationPage()),
  ];
}