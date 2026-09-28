import 'package:get/get.dart';
import 'package:flutter/material.dart';

class CalculatorController extends GetxController{

var hasilHitung = 0.0.obs;
 void tambah(double angka1, double angka2){
  double hasiltambah = angka1 + angka2;
  hasilHitung.value = hasiltambah;

  // snackbar
  Get.snackbar(
    "hasil tambah", "hasilnya " + hasiltambah.toString(),
    snackPosition: SnackPosition.TOP,
    backgroundColor: Colors.green,
    colorText: Colors.white,
    margin: const EdgeInsets.all(10),
    icon: const Icon(Icons.check_circle_outlined, color: Colors.white),                
    );
 }

 void kurang(double angka1, double angka2){
  double hasilkurang = angka1 - angka2;
  hasilHitung.value = hasilkurang;

  // snackbar
  Get.snackbar("hasil kurang", "hasilnya " + hasilkurang.toString(),
    snackPosition: SnackPosition.TOP,
    backgroundColor: Colors.green,
    colorText: Colors.white,
    margin: const EdgeInsets.all(10),
    icon: const Icon(Icons.check_circle_outlined, color: Colors.white),                
    );
 }

 void bagi(double angka1, double angka2){
  double hasilbagi = angka1 / angka2;
  hasilHitung.value = hasilbagi;

  // snackbar
  Get.snackbar("hasil bagi", "hasilnya " + hasilbagi.toString(), 
    snackPosition: SnackPosition.TOP,
    backgroundColor: Colors.green,
    colorText: Colors.white,
    margin: const EdgeInsets.all(10),
    icon: const Icon(Icons.check_circle_outlined, color: Colors.white),                
    );
 }

 void kali(double angka1, double angka2){
  double hasilkali = angka1 * angka2;
  hasilHitung.value = hasilkali;

  // snackbar
  Get.snackbar("hasil kali", "hasilnya " + hasilkali.toString(), 
    snackPosition: SnackPosition.TOP,
    backgroundColor: Colors.green,
    colorText: Colors.white,
    margin: const EdgeInsets.all(10),
    icon: const Icon(Icons.check_circle_outlined, color: Colors.white),                
    );
 }
}