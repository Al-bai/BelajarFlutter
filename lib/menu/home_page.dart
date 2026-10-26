import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_2/controllers/list_makanan_controller.dart';
import 'package:flutter_application_2/routes.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page", style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      
      body: SizedBox(
        height: 240,
        child: Obx(
          () => ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
            itemCount: controller.dataMakanan.length,
            itemBuilder: (context, index) {
              final makanan = controller.dataMakanan[index];

              return SizedBox(
                width: 170,
                child: Card(
                  margin: const EdgeInsets.only(right: 12),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                  child: InkWell(
                    onTap: () => Get.toNamed(Routes.detail_makanan, arguments: makanan),

                    onLongPress: () {
                      Get.defaultDialog(
                        title: "Hapus Item",
                        middleText: "Hapus ${makanan.namaMakanan}?",
                        textConfirm: "Ya",
                        confirmTextColor: Colors.white,

                        cancel: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.greenAccent, 
                          ),
                          onPressed: () => Get.back(),
                          child: const Text("Batal", style: TextStyle(color: Colors.white)),
                        ),

                        buttonColor: Colors.redAccent,
                        onConfirm: () {
                          controller.dataMakanan.removeAt(index);
                          Get.back();
                          Get.snackbar(
                            "Terhapus",
                            "${makanan.namaMakanan} berhasil dihapus",
                            snackPosition: SnackPosition.BOTTOM,
                            duration: const Duration(seconds: 2),
                          );
                        },
                      );
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Image.network(
                            makanan.gambarPath,
                            width: double.infinity,
                            height: double.infinity,
                            fit: BoxFit.cover,
                         
                          ),
                        ),
                        
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                makanan.namaMakanan,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                makanan.harga,
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.green[700],
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}