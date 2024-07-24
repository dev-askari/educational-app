import 'package:educational_app/controller/splash_screen_controller.dart';
import 'package:educational_app/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/custom_text.dart';

class SplashScreen extends GetView<SplashScreenController>{
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        controller.navigate();
      },
      child: Scaffold(
        body: Container(
          width: Get.width,
          decoration: const BoxDecoration(
            gradient: CustomAppColor.appGradient,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
              children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Align(
                alignment: Alignment.center,
                child: Text("CodeStorm", style: TextStyle(
                  fontSize: 36.0,
                    fontFamily: CustomTextSizing.kPoppinsFontFamily,
                    fontWeight: FontWeight.w700,
                    color: CustomAppColor.kWhiteColor,
                ),),
              ),
            ),
            Image.asset(controller.logoImage,width: Get.width, fit: BoxFit.fitWidth,),
          ]),
        ),

      ),
    );
  }

}