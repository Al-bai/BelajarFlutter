import 'package:flutter_application_2/controllers/list_makanan_controller.dart';
import 'package:flutter_application_2/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListMakananPage extends StatelessWidget {
  ListMakananPage({super.key});

  final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Makanan", style: TextStyle(fontWeight: FontWeight.bold),), 
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Obx (
        () => ListView.builder(
          itemCount: controller.dataMakanan.length,
          itemBuilder: (context, index) {
            final makanan = controller.dataMakanan[index];

            return Dismissible(key: ValueKey(makanan.namaMakanan),
            direction: DismissDirection.startToEnd, 
            background:Container(
              color: Colors.redAccent,
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 20),
              child: const Icon(Icons.delete, color: Colors.white70,)

            ),

            confirmDismiss: (direction) async {
              return await showDialog<bool>(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text("Konfirmasi Hapus"),
                    content: Text("Apakah kamu yakin ingin menghapus ${makanan.namaMakanan}?"),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(false), // Pilihan 'No'
                        child: const Text("Batal"),
                      ),
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(true), // Pilihan 'Yes'
                        child: const Text(
                          "Hapus",
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    ],
                  );
                },
              );
            },
            
            onDismissed: (direction) {

              Get.snackbar(
                "Berhasil",
                "${makanan.namaMakanan} telah dihapus",
                snackPosition: SnackPosition.BOTTOM,
                duration: const Duration(seconds: 2),
              );
            },
            

              child:InkWell(
                onTap: () {
                  Get.toNamed(Routes.detail_makanan, arguments: makanan);
                },
                child: ListTile(
                  tileColor: Colors.blue.shade50,
                  
                  title: Text(
                    makanan.namaMakanan,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),
                  ),
                  subtitle: Text(makanan.harga, style: TextStyle(fontSize: 15, color: Colors.green[700], fontWeight: FontWeight.w600,)),
                  trailing: Icon(Icons.arrow_forward_ios_rounded),
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