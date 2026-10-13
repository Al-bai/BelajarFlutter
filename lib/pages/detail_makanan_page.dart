import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/makanan_model.dart';
import 'package:get/get.dart';

class DetailMakananPage extends StatelessWidget {
  const DetailMakananPage ({super.key});

  @override
  Widget build(BuildContext context) {
    final MakananModel makanan = Get.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(makanan.namaMakanan),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
             children: [
                Container(
                 height: 200,
                 width: double.infinity,
                 margin: EdgeInsets.only(bottom: 10),
                  child: Image.asset(
                    makanan.gambarPath,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  makanan.namaMakanan,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),

                Text(
                  "Harga: ${makanan.harga}",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 12),

                Text(
                  "Rating: ${makanan.rating}",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 12),

                Text(
                  "Review:",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  makanan.review,
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(height: 12),

                Text(
                  "Deskripsi:",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  makanan.deskripsi, 
                  style: TextStyle(fontSize: 15),
                ),
              ],
          ),
        ),
    );
  }
}