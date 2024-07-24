import 'package:educational_app/controller/quizes_screen_controller.dart';
import 'package:educational_app/custom_widget/custom_bottom_navbar.dart';
import 'package:educational_app/custom_widget/custom_primary_button.dart';
import 'package:educational_app/utils/app_constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/app_colors.dart';
import '../utils/custom_text.dart';

class QuizScreen extends GetView<QuizScreenController>{
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: CustomAppColor.appGradient,
      ),
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: CustomAppColor.kWhiteColor),
          title: const Text('Quizzes', style:
      TextStyle(
        fontWeight: FontWeight.w500,
        color: CustomAppColor.kWhiteColor,
        fontSize: 25.0,
        fontFamily: CustomTextSizing.kPoppinsFontFamily,
      ),),
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Colors.transparent,
        body: Container(
          width: Get.width,
          child:   SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text("Java Quiz",style:
                    TextStyle(
                      fontWeight: FontWeight.w700,
                      color: CustomAppColor.kWhiteColor,
                      fontSize: 22.0,
                      fontFamily: CustomTextSizing.kPoppinsFontFamily,
                    ),),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20),
                    child: Text("Question 1 of 25:",
                      style:
                      TextStyle(
                        fontWeight: FontWeight.w700,
                        color: CustomAppColor.kWhiteColor,
                        fontSize: 22.0,
                        fontFamily: CustomTextSizing.kPoppinsFontFamily,
                      ),),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 10, right: 30, left: 30),
                    child: Text("What is a correct syntax to output 'Hello World' in Java?",
                      style:
                      TextStyle(
                        fontWeight: FontWeight.w400,
                        color: CustomAppColor.kWhiteColor,
                        fontSize: 18.0,
                        fontFamily: CustomTextSizing.kPoppinsFontFamily,
                      ),),
                  ),
                        ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: controller.items.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: const Icon(
                                Icons.fiber_manual_record, size: 15.0, color: CustomAppColor.kWhiteColor,),
                            title: controller.items[index],
                          );
                        }
                        ),
                  Padding(
                    padding: const EdgeInsets.only(top: 38.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: CustomPrimaryButton(
                        buttonName: 'Next',
                        onTap: (){},
                        bgColor: CustomAppColor.kSearchBarColor,
                        textColor: CustomAppColor.kGreenTextColor,
                        borderRadius: 5,
                        buttonWidth: Get.width * 0.25,
                        buttonFontSize: 50,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 90.0, vertical: 30.0),
          child: Obx((){
            return BottomCustomNavBar(
              currentIndex: controller.dashboardScreenController.selectedIndex.value,
              selectedIndex: (int index){
                if(Get.previousRoute == kNotificationScreen){
                  Get.back();
                  Get.back();
                }else{
                  Get.back();
                }
                controller.dashboardScreenController.selectedIndex.value = index;
              },
            );
          }),
        ),
      ),
    );
  }

}