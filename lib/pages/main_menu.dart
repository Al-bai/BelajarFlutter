import 'package:flutter/material.dart';
import 'package:flutter_application_2/controllers/main_menu_controller.dart';
import 'package:get/get.dart';

class MainMenu extends StatelessWidget {
  MainMenu({super.key});

  final controller = Get.put(MainMenuController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
      body: IndexedStack(
        children: controller.listPages,
        index: controller.selectedIndex.value,
        
      ),
      
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: controller.selectedIndex.value,
        onTap: controller.changePage,
        
        items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: "Home"
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.history_outlined),
          label: "History"
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_2_outlined),
          label: "Profile"
        )
      ]),

    )
    
    );
  }
}