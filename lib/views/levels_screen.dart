import 'package:educational_app/controller/level_screen_controller.dart';
import 'package:educational_app/custom_widget/info_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import '../custom_widget/custom_primary_button.dart';
import '../custom_widget/custom_quiz_widget.dart';
import '../utils/app_colors.dart';
import '../utils/custom_text.dart';

class LevelScreen extends GetView<LevelScreenController>{
  const LevelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: CustomAppColor.appBackgroundGradient,
      ),
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          iconTheme: IconThemeData(color: CustomAppColor.kWhiteColor),
          title: Row(
            children: [
              Obx(()=> controller.currentPage.value == 0 ? GestureDetector(
                  onTap: ()=> Get.back(),
                  child: const Icon(Icons.arrow_back_outlined, color: Colors.white,)) : SizedBox()),
              const SizedBox(width: 20,),
              const Text('Level Test', style:
              TextStyle(
                fontWeight: FontWeight.w500,
                color: CustomAppColor.kWhiteColor,
                fontSize: 25.0,
                fontFamily: CustomTextSizing.kPoppinsFontFamily,
              ),),
            ],
          ),
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
          Container(
            // color: Colors.blue,
            height: Get.height * 0.8,
            child: PageView.builder(
              itemCount: controller.questions.length ~/ 2,
              controller: controller.pageController,
              physics: const NeverScrollableScrollPhysics(),
              onPageChanged: (page) {
                controller.currentPage.value = page;
              },
              itemBuilder: (context, index) {
                return SingleChildScrollView(
                  child: Column(
                      children: [
                    Obx(
                      ()=> buildQuestion(controller.questions[controller.currentPage.value == 0 ? index :
                      controller.currentPage.value == 1 ? index + 1 :
                      controller.currentPage.value == 2 ? index + 2 : index + 3],
                          controller.currentPage.value == 0 ? index :
                      controller.currentPage.value == 1 ? index + 1 :
                      controller.currentPage.value == 2 ? index + 2 : index + 3),
                    ),
                    Obx(
                    ()=> buildQuestion(controller.questions[controller.currentPage.value == 0 ? index +1 :
                      controller.currentPage.value == 1 ? index + 2 :
                      controller.currentPage.value == 2 ? index + 3 : index + 4], controller.currentPage.value == 0 ? index +1 :
                      controller.currentPage.value == 1 ? index + 2 :
                      controller.currentPage.value == 2 ? index + 3 : index + 4),
                    ),
                  ]),
                );
              },
            ),
          ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Obx(()=> CustomPrimaryButton(
                        buttonName:  controller.currentPage.value == 3 ? 'Submission' : "Next",
                        onTap: (){
                          controller.currentPage.value == 3 ? CustomBox().infoDialog(message: "your level is.....", dialogueButtonText: "yes") :
                           controller.nextPage();
                        },
                        textColor: CustomAppColor.kWhiteColor,
                        borderRadius: 5,
                        buttonWidth: controller.currentPage.value == 3 ? Get.width * 0.35 : Get.width * 0.25,
                        buttonFontSize: 50,
                      ),
                    ),
                  ),
                ),

              ]
        ),
          ),
        ),
      ),
    );
  }
  Widget buildQuestion(MCQWidget mcqWidget, int index) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
            child: Text(
              "Question ${index + 1} of ${controller.questions.length}:",
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                color: CustomAppColor.kWhiteColor,
                fontSize: 18.0,
                fontFamily: CustomTextSizing.kPoppinsFontFamily,
              ),
            ),
          ),
          MCQWidget(
            question: mcqWidget.question,
            options: mcqWidget.options,
            questionIndex: controller.currentPage.value,
          ),
        ],
      ),
    );
  }

}