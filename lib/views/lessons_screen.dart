import 'package:educational_app/utils/app_constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../controller/lessons_screen_controller.dart';
import '../custom_widget/custom_lesson_widget.dart';
import '../utils/app_colors.dart';
import '../utils/custom_text.dart';

class LessonScreen extends GetView<LessonScreenController> {
  const LessonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          iconTheme: const IconThemeData(color: CustomAppColor.kWhiteColor),
          title:  Row(
            children: [
              GestureDetector(
                  onTap: (){
                    if(controller.dashboardScreenController.selectedIndex.value != 0){
                      controller.dashboardScreenController.selectedIndex.value = 0;
                    }
                  },
                  child: ImageIcon(AssetImage(controller.backIcon), size: 17,)),
               const SizedBox(width: 30,),
               const Text('Lesson',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: CustomAppColor.kWhiteColor,
                  fontSize: 25.0,
                  fontFamily: CustomTextSizing.kPoppinsFontFamily,
                ),
              ),
            ],
          ),
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Colors.transparent,
        body: Stack(children: [
          Container(
            width: Get.width,
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0, right: 30.0, left: 30.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomLessonWidget(
                      titleMsg: 'A recursive method in java',
                      imagePath: controller.lessonJavaImage,
                      onTap: () {
                        Get.toNamed(kWebViewScreen, arguments: "https://www.w3schools.com/java/java_recursion.asp");
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: CustomLessonWidget(
                        titleMsg: 'Java Collection',
                        imagePath: controller.javaCollectionImage,
                        onTap: () {
                          Get.toNamed(kWebViewScreen, arguments: "https://www.w3schools.com/java/java_recursion.asp");

                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: CustomLessonWidget(
                        titleMsg: 'How To Initialize an Array list in Java?',
                        imagePath: controller.javaListImage,
                        onTap: () {
                          Get.toNamed(kWebViewScreen, arguments: "https://www.w3schools.com/java/java_arrays.asp");

                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: CustomLessonWidget(
                        titleMsg: 'Recursion & Loops',
                        imagePath: controller.javaLoopImage,
                        onTap: () {
                          Get.toNamed(kWebViewScreen, arguments: "https://www.w3schools.com/java/java_for_loop.asp");
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
