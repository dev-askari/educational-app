import 'package:educational_app/controller/profile_screen_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import '../custom_widget/custom_box_widget.dart';
import '../utils/app_colors.dart';
import '../utils/app_constant.dart';
import '../utils/custom_text.dart';

class ProfileScreen extends GetView<ProfileScreenController> {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        iconTheme: const IconThemeData(color: CustomAppColor.kWhiteColor),
        title: Row(
          children: [
            GestureDetector(
                onTap: () {
                  if (controller.dashboardScreenController.selectedIndex.value != 0) {
                    controller.dashboardScreenController.selectedIndex.value = 0;
                  }
                },
                child: ImageIcon(
                  AssetImage(controller.backIcon),
                  size: 17,
                )),
            const SizedBox(width: 30,),
            const Text(
              'Profile',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: CustomAppColor.kWhiteColor,
                fontSize: 25.0,
                fontFamily: CustomTextSizing.kPoppinsFontFamily,
              ),
            ),
            Spacer(),
            ImageIcon(AssetImage(controller.userIcon),size: 25,),
          ],
        ),
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.transparent,
      body: Stack(children: [
        Container(
          width: Get.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 30.0, vertical: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: CustomBoxWidget(
                      boxHeight: Get.height * 0.08,
                      boxName: 'Username',
                      onTap: () {},
                      borderRadius: 9.0,
                      gradientColor: CustomAppColor.buttonGradient,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: CustomBoxWidget(
                      boxHeight: Get.height * 0.08,
                      boxName: 'Email',
                      onTap: () {},
                      borderRadius: 9.0,
                      gradientColor: CustomAppColor.buttonGradient,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: CustomBoxWidget(
                      boxHeight: Get.height * 0.08,
                      boxName: 'Address',
                      onTap: () {},
                      borderRadius: 9.0,
                      gradientColor: CustomAppColor.buttonGradient,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: CustomBoxWidget(
                      boxHeight: Get.height * 0.08,
                      boxName: 'Age & D.O.B',
                      onTap: () {},
                      borderRadius: 9.0,
                      gradientColor: CustomAppColor.buttonGradient,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: CustomBoxWidget(
                      boxHeight: Get.height * 0.08,
                      boxName: 'Level',
                      onTap: () {},
                      borderRadius: 9.0,
                      gradientColor: CustomAppColor.buttonGradient,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: CustomBoxWidget(
                      boxHeight: Get.height * 0.08,
                      boxName: 'Logout',
                      onTap: () => Get.toNamed(kLoginScreen),
                      borderRadius: 9.0,
                      gradientColor: CustomAppColor.buttonGradient,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
