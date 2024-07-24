import 'package:educational_app/custom_widget/custom_primary_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../controller/onboarding_screen_controller.dart';
import '../utils/app_colors.dart';
import '../utils/app_constant.dart';
import '../utils/custom_text.dart';

class OnBoardingScreen extends GetView<OnBoardingScreenController> {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        decoration: const BoxDecoration(
          gradient: CustomAppColor.appGradient,
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
               Row(
                children: [
                  CustomPrimaryButton(buttonName: "Next", onTap: ()=> {
                  controller.activePage.value == 0 ? controller.pageController.nextPage(duration: Duration(milliseconds: 1), curve: Curves.linear)
                      : controller.activePage.value == 1 ? Get.toNamed(kLoginScreen) : null,
                  }, borderRadius: 5, buttonWidth: Get.width * 0.25, buttonFontSize: 50,),
                  const Spacer(),
                  GestureDetector(
                    onTap: ()=> Get.toNamed(kLoginScreen),
                    child: const Text("Skip", style : TextStyle(
                      color: CustomAppColor.kGreyColor,
                      fontFamily: CustomTextSizing.kPoppinsFontFamily,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
