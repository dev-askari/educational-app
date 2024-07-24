import 'package:educational_app/controller/dashboard_screen_controller.dart';
import 'package:educational_app/custom_widget/custom_bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/app_colors.dart';

class DashboardScreen extends GetView<DashboardScreenController>{
  const DashboardScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: CustomAppColor.appGradient,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Obx((){
          return controller.homeScreens[controller.selectedIndex.value];
        }),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 70.0, vertical: 30.0),
          child: Obx((){
            return BottomCustomNavBar(
              currentIndex: controller.selectedIndex.value,
              selectedIndex: (int index){
                controller.selectedIndex.value = index;
              },
            );
          }),
        ),
      ),
    );
  }

}