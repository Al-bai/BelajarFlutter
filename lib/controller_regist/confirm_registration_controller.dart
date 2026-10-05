import 'package:get/get.dart';

class ConfirmRegistrationController extends GetxController {
  late String username;
  late String nama_lengkap;
  late String email;
  late String noWa;
  late String jenisKelamin;
  late String religion;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    final Map<String, dynamic> arguments = Get.arguments ?? {};
    username = arguments["username"] ?? "-";
    nama_lengkap = arguments["nama_lengkap"] ?? "-";
    email = arguments["email"] ?? "-";
    noWa = arguments["no_wa"] ?? "-";
    jenisKelamin = arguments["jenis_kelamin"] ?? "-";
    religion = arguments["religion"] ?? "-";
  }
}