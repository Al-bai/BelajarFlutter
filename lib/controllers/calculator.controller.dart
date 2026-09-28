import 'package:get/get.dart';

class CalculatorController extends GetxController{

var hasilHitung = 0.0.obs;
 void tambah(double angka1, double angka2){
  double hasiltambah = angka1 + angka2;
  hasilHitung.value = hasiltambah;

  // snackbar
  Get.snackbar("hasil tambah", "hasilnya " + hasiltambah.toString());
 }

 void kurang(double angka1, double angka2){
  double hasilkurang = angka1 - angka2;
  hasilHitung.value = hasilkurang;

  // snackbar
  Get.snackbar("hasil kurang", "hasilnya " + hasilkurang.toString());
 }

 void bagi(double angka1, double angka2){
  double hasilbagi = angka1 / angka2;
  hasilHitung.value = hasilbagi;

  // snackbar
  Get.snackbar("hasil bagi", "hasilnya " + hasilbagi.toString());
 }

 void kali(double angka1, double angka2){
  double hasilkali = angka1 * angka2;
  hasilHitung.value = hasilkali;

  // snackbar
  Get.snackbar("hasil kali", "hasilnya " + hasilkali.toString());
 }
}