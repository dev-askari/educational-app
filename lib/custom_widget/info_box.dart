
import 'package:educational_app/custom_widget/custom_primary_button.dart';
import 'package:educational_app/utils/app_constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/app_colors.dart';
import '../utils/custom_text.dart';

class CustomBox {
  void infoDialog(
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
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "your test has been submitted successfully!",
                          style:
                          TextStyle(color: CustomAppColor.kWhiteColor,
                            fontFamily: CustomTextSizing.kPoppinsFontFamily,
                            fontSize: 18.0,),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: GestureDetector(
                            onTap: (){
                              Get.toNamed(kTakeQuizScreen);
                            },
                            child: Row(
                              children: [
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
                        const SizedBox(height: 30.0),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 15),
                                child: CustomPrimaryButton(buttonName: 'Exit', onTap: ()=> Get.toNamed(kDashboardScreen),
                                  bgColor: CustomAppColor.kGreyColor,
                                  gradientColor: CustomAppColor.buttonGradient4,
                                  borderRadius: 2,
                                )
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

