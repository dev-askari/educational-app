import 'package:educational_app/controller/take_quiz_screen_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../custom_widget/custom_primary_button.dart';
import '../utils/app_colors.dart';
import '../utils/app_constant.dart';

class TakeQuizScreen extends GetView<TakeQuizScreenController>{
  const TakeQuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        decoration: const BoxDecoration(
          gradient: CustomAppColor.appBackgroundGradient,
        ),
        child: Padding(
          padding:
          const EdgeInsets.symmetric(horizontal: 38.0, vertical: 90.0),
          child: Column(
            children:[
              SizedBox(
                height: 450,
                child: PageView.builder(
                  controller: controller.pageController,
                  onPageChanged: (int page) {
                    controller.activePage.value = page;
                  },
                  itemCount: controller.listOfPages.length,
                  itemBuilder: (BuildContext context, int index) {
                    return controller.listOfPages[index % controller.listOfPages.length];
                  },
                ),
              ),
              // SizedBox(
              //   height: 450,
              //   child: PageView.builder(
              //     // controller: controller.pageController,
              //     // onPageChanged: (int page) {
              //     //   controller.activePage.value = page;
              //     // },
              //     itemCount: controller.listOfMcq.length,
              //     itemBuilder: (BuildContext context, int index) {
              //       return controller.listOfPages[index % controller.listOfMcq.length];
              //     },
              //   ),
              // ),
              Row(
                children: [
                  Obx(()=> Container(
                    height: 4.0,
                    width: controller.activePage.value == 0 ? 18.0 : 4.0,
                    decoration: BoxDecoration(
                      color: CustomAppColor.kWhiteColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  ),
                  const SizedBox(width: 5,),
                  Obx(()=>  Container(
                    height: 4.0,
                    width: controller.activePage.value == 1 ? 18.0 : 4.0,
                    decoration: BoxDecoration(
                      color: CustomAppColor.kWhiteColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  ),
                ],
              ),
              const Spacer(),
              CustomPrimaryButton(buttonName: "Next", onTap: ()=> Get.toNamed(kLevelScreen), borderRadius: 5, buttonWidth: Get.width * 0.25, buttonFontSize: 50,),
            ],
          ),
        ),
      ),
    );
  }

}