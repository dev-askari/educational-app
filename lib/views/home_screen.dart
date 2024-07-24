import 'dart:math';

import 'package:educational_app/controller/home_screen_controller.dart';
import 'package:educational_app/custom_widget/custom_text_field.dart';
import 'package:educational_app/utils/app_constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../custom_widget/custom_image_boxes.dart';
import '../utils/app_colors.dart';
import '../utils/custom_text.dart';

class HomeScreen extends GetView<HomeScreenController>{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        controller.removeFocus();
        },
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          width: Get.width,
          child:  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 50.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Row(
                    children: [
                       Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Welcome !", style: TextStyle(
                            color: CustomAppColor.kWhiteColor,
                            fontFamily: CustomTextSizing.kPoppinsFontFamily,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w700,),),
                          Text(controller.loginScreenController.userModel == null ?  "User" : "${controller.loginScreenController.userModel?.userName}", style: const TextStyle(
                            color: CustomAppColor.kWhiteColor,
                            fontFamily: CustomTextSizing.kPoppinsFontFamily,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500,),),
                        ],
                      ),
                      const Spacer(),
                      GestureDetector(
                          onTap: () => Get.toNamed(kNotificationScreen),
                          child: const ImageIcon(AssetImage("assets/icons/notification.png",), color: CustomAppColor.kWhiteColor, size: 25,)),
                      const SizedBox(width: 20.0,),
                       GestureDetector(
                           onTap: () {
                             controller.removeFocus();
                             Get.toNamed(kSettingScreen);
                           } ,
                           child: ImageIcon(AssetImage("assets/icons/menu.png",), color: CustomAppColor.kWhiteColor, size: 25,)),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: CustomTextField(
                      isShadowVisible: true,
                      focusNode: controller.searchBar,
                      textInputAction: TextInputAction.done,
                      maxLine: 1,
                      hintText: "Search...",
                      counterText: "",
                      borderRadius: 50.0,
                      borderColor: CustomAppColor.kTransparentColor,
                      hintTextColor: CustomAppColor.kSearchBarColor,
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Image.asset('assets/icons/search.png', height: 23.0, width: 20.0,),
                      ),
                      fillColor: CustomAppColor.kBottomNavBarColor,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Text("Course in progress", style: TextStyle(
                      color: CustomAppColor.kWhiteColor,
                      fontFamily: CustomTextSizing.kPoppinsFontFamily,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Image.asset(controller.javaCourseImage),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageBoxes(boxName: 'lessons',
                          onBoxTap: (){
                          if(controller.dashboardScreenController.selectedIndex.value != 1){
                            controller.dashboardScreenController.lastIndex.value =  controller.dashboardScreenController.selectedIndex.value;
                            controller.dashboardScreenController.selectedIndex.value = 1;
                          }
                          },
                          gradientColor: CustomAppColor.appGradient,
                          imageName: controller.lessonsImage,
                          textFontSize: 18,
                          boxWidth: Get.width * 0.26,
                          boxHeight: Get.height * 0.13,
                          borderRadius: 10,
                        ),
                        CustomImageBoxes(boxName: 'Quizzes',
                          onBoxTap: ()=> Get.toNamed(kQuizScreen),
                          gradientColor: CustomAppColor.appGradient,
                          imageName: controller.quizesImage,
                          textFontSize: 18,
                          boxWidth: Get.width * 0.26,
                          boxHeight: Get.height * 0.13,
                          borderRadius: 10,
                        ),
                        CustomImageBoxes(boxName: 'Chat',
                          onBoxTap: ()=> Get.toNamed(kChatGptScreen),
                          gradientColor: CustomAppColor.appGradient,
                          imageName: controller.chatIcon,
                          textFontSize: 18,
                          boxWidth: Get.width * 0.26,
                          boxHeight: Get.height * 0.13,
                          borderRadius: 10,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}