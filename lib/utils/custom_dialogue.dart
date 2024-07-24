
import 'package:educational_app/utils/app_constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'app_colors.dart';
import 'custom_text.dart';

class CustomDialogue {
  void confirmationDialog(
      {required String message,
        Function()? yesFunction,
        required String dialogueButtonText}) {
    const double padding = 10.0;
    const double avatarRadius = 66.0;
    Get.dialog(
      Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        child: Stack(
          children: [
            Container(
              width: Get.width,
              padding: const EdgeInsets.only(
                top: padding + 10,
                // bottom: padding,
                left: padding + 10,
                right: padding,
              ),
              margin: const EdgeInsets.only(top: avatarRadius),
              decoration: BoxDecoration(
                color: CustomAppColor.kButtonGradientBottom,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(padding),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10.0,
                    offset: Offset(0.0, 10.0),
                  ),
                ],
              ),
              child: Stack(
                children:[
                  Positioned(
                      child: Image.asset("assets/images/image3.png", height: 153.0, width:90.0,),
                  bottom: 0,
                    top: 150,
                    left: 200,
                  ),
                  Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Select Your Level by",
                      style:
                      TextStyle(color: CustomAppColor.kWhiteColor,
                           fontFamily: CustomTextSizing.kPoppinsFontFamily,
                            fontSize: 24.0,),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: GestureDetector(
                        onTap: (){
                          Get.toNamed(kTakeQuizScreen);
                        },
                        child: Row(
                          children: [
                            Image.asset("assets/images/code.png", height: 24.0, width: 41.0,),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                message,
                                style: const TextStyle(
                                  color: CustomAppColor.kWhiteColor,
                                  fontFamily: CustomTextSizing.kPoppinsFontFamily,
                                  fontSize: 15.0,
                                    fontWeight: FontWeight.w700

                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0, left: 10.0),
                      child: GestureDetector(
                        onTap: (){
                          levelDialog( dialogueButtonText: 'Next');
                        },
                        child: Row(
                          children: [
                            Image.asset("assets/images/level.png", height: 33.0, width: 24.0,),
                            const Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Text(
                                "Choose your level",
                                style: TextStyle(
                                  color: CustomAppColor.kWhiteColor,
                                  fontFamily: CustomTextSizing.kPoppinsFontFamily,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w700
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 30.0),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: yesFunction,
                            child:  Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 15),
                              child: Text(
                                dialogueButtonText,
                                textDirection: TextDirection.ltr,
                                style: const TextStyle(
                                    color: CustomAppColor.kGreyColor,
                                    fontFamily: CustomTextSizing.kPoppinsFontFamily,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w700
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
          ]
              ),
            ),
          ],
        ),
      ),
      barrierDismissible: false,
    );
  }
}
void levelDialog(
      {
        Function()? yesFunction,
        required String dialogueButtonText}) {
    const double padding = 10.0;
    const double avatarRadius = 66.0;
    Get.dialog(
      Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        child: Container(
          width: Get.width,
          padding: const EdgeInsets.only(
            top: padding + 10,
            left: padding + 10,
            right: padding,
          ),
          margin: const EdgeInsets.only(top: avatarRadius),
          decoration: BoxDecoration(
            color: CustomAppColor.kButtonGradientBottom,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(padding),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                offset: Offset(0.0, 10.0),
              ),
            ],
          ),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "select your level",
              style:
              TextStyle(color: CustomAppColor.kWhiteColor,
                   fontFamily: CustomTextSizing.kPoppinsFontFamily,
                    fontSize: 24.0,),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 10.0),
              child: GestureDetector(
                onTap: (){},
                child: const Row(
                  children: [
                    Icon(Icons.circle, color: CustomAppColor.kWhiteColor, size: 14,),
                    Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Text(
                        "beginner",
                        style: TextStyle(
                          color: CustomAppColor.kWhiteColor,
                          fontFamily: CustomTextSizing.kPoppinsFontFamily,
                          fontSize: 15.0,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 10.0),
              child: GestureDetector(
                onTap: (){},
                child: const Row(
                  children: [
                    Icon(Icons.circle, color: CustomAppColor.kWhiteColor, size: 14,),
                    Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Text(
                        "Intermediate",
                        style: TextStyle(
                            color: CustomAppColor.kWhiteColor,
                            fontFamily: CustomTextSizing.kPoppinsFontFamily,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 10.0),
              child: GestureDetector(
                onTap: (){},
                child: const Row(
                  children: [
                    Icon(Icons.circle, color: CustomAppColor.kWhiteColor, size: 14,),
                    Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Text(
                        "profficional",
                        style: TextStyle(
                            color: CustomAppColor.kWhiteColor,
                            fontFamily: CustomTextSizing.kPoppinsFontFamily,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30.0),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: ()=> Get.toNamed(kDashboardScreen),
                    child:  Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 15),
                      child: Text(
                        dialogueButtonText,
                        textDirection: TextDirection.ltr,
                        style: const TextStyle(
                            color: CustomAppColor.kGreyColor,
                            fontFamily: CustomTextSizing.kPoppinsFontFamily,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
            ),
        ),
      ),
      barrierDismissible: false,
    );
  }

