import 'package:educational_app/controller/notification_screen_controller.dart';
import 'package:educational_app/custom_widget/custom_notification_widget.dart';
import 'package:educational_app/utils/app_constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../utils/app_colors.dart';
import '../utils/custom_text.dart';


class NotificationScreen extends GetView<NotificationScreenController>{
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: CustomAppColor.appGradient,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
            children:[
              Container(
                width: Get.width,
                child:  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 100),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomNotificationWidget(titleMsg: "Congratulation !!",
                          description: "you have completed course on Java. ",
                          boxHeight: Get.height * 0.2,
                          borderRadius: 15,
                          textFontSize: 15, onBoxTap: () {  }, isVisible: false,

                        ),
                        const SizedBox(height: 30,),
                        CustomNotificationWidget(titleMsg: "Hurry Up !!",
                          description: "It’s time to take the Quizz!! ",
                          boxHeight: Get.height * 0.2,
                          borderRadius: 15,
                          textFontSize: 15, onBoxTap: ()=> Get.toNamed(kQuizScreen), isVisible: true,
                        ),const SizedBox(height: 30,),

                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: AppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    leading: IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.white,),
                      onPressed: () {
                        Get.back();
                      },
                    ),
                    title: const Text('Notification', style:
                    TextStyle(
                      fontWeight: FontWeight.w500,
                      color: CustomAppColor.kWhiteColor,
                      fontSize: 25.0,
                      fontFamily: CustomTextSizing.kPoppinsFontFamily,
                    ),),
                    actions: [
                      IconButton(
                        icon: Image.asset("assets/icons/notification.png", width: 25.0, height: 25.0,), onPressed: () {  },
                      ),
                    ]
                ),
              ),
            ]
        ),
      ),
    );
  }

}