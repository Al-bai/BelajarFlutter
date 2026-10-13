import 'package:flutter_application_2/models/makanan_model.dart';
import 'package:get/get.dart';

class ListMakananController extends GetxController {
  // data makanan berupa List, masih hardcoded

  List<MakananModel> dataMakanan = [
    MakananModel(namaMakanan: "Mie Gacoan", harga: "10.000", rating: "⭐⭐⭐⭐", review: "Murah mantap, cocok buat nongki bareng, after tastenya enak juga", deskripsi: "Mi berbumbu pedas dengan tekstur mi tipis, kenyal, dan lurus, dipadukan bersama taburan ayam cincang halus, irisan daun bawang, dan pangsit goreng renyah berisi olahan ayam.", gambarPath: "assets/images/gacoan.jpg" ),
    MakananModel(namaMakanan: "Ayam Goreng", harga: "13.000", rating: "⭐⭐⭐⭐⭐", review: "Lauk simple enak dan affordable", deskripsi: "Daging ayam berbumbu ungkep rempah dengan kulit luar cokelat keemasan yang garing dan daging bagian dalam empuk serta juicy.", gambarPath: "assets/images/ayam goyeng.jpg"),
    MakananModel(namaMakanan: "Ayam Bakar", harga: "15.000", rating: "⭐⭐⭐⭐", review: "Agak mahal tapi cocok juga buat variasi sesekali", deskripsi: "Daging ayam panggang berbalur olesan bumbu kecap atau rempah karamel, beraroma smoky, legit di luar, dan empuk di dalam.", gambarPath: "assets/images/ayam bakar.jpg"),
    MakananModel(namaMakanan: "Miyago", harga: "8.000", rating: "⭐⭐⭐⭐", review: "Murah dan rekomendasi, rasanya enak juga dan ngenyangin", deskripsi: "Mi kenyal tanpa kuah yang diaduk bumbu gurih, disajikan dengan topping potongan ayam semur manis-gurih kental, sawi hijau, dan pangsit.", gambarPath: "assets/images/miyago.jpg"),
    MakananModel(namaMakanan: "Nasi Goreng", harga: "13.000", rating: "⭐⭐⭐⭐", review: "Makanan legend yang enak", deskripsi: "Nasi pera yang ditumis api besar bersama bumbu bawang, telur, dan kecap/cabai, menghasilkan bulir nasi beraroma sangit wajan (wok hei) yang gurih merata.", gambarPath: "assets/images/nasgor.jpg"),
    MakananModel(namaMakanan: "Mie Hompimpa", harga: "10.000",  rating: "⭐⭐⭐⭐", review: "Murah, cocok bagi yang seleranya asin", deskripsi: "Varian pedas asin. Mi diaduk dengan minyak gurih dan ulekan cabai rawit merah segar tanpa tambahan kecap manis. Rasanya tajam, asin, dan pedas menggigit di lidah.", gambarPath: "assets/images/hompimpa.jpg"),
  ];
}