import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../controller/chat_gpt_screen_controller.dart';
import '../custom_widget/custom_chatGpt_widget.dart';
import '../custom_widget/custom_text_field.dart';
import '../utils/app_colors.dart';
import '../utils/custom_text.dart';

class ChatGptScreen extends GetView<ChatGptScreenController>{
  const ChatGptScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        controller.removeFocus();
      },
      child: Container(
        decoration: const BoxDecoration(
          gradient: CustomAppColor.appGradient,
        ),
        child: Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData(color: CustomAppColor.kWhiteColor),
            title: const Text('Chat GPT', style:
            TextStyle(
              fontWeight: FontWeight.w500,
              color: CustomAppColor.kWhiteColor,
              fontSize: 25.0,
              fontFamily: CustomTextSizing.kPoppinsFontFamily,
            ),),
            backgroundColor: Colors.transparent,
          ),
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: Container(
                      width: Get.width,
                      height: Get.height * 0.7,
                      decoration:  BoxDecoration(
                        gradient: CustomAppColor.settingScreenGradient,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child:  Obx(()=> ListView.builder(
                            physics: BouncingScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: controller.listOfMsg.length,
                            itemBuilder: (context, index) {
                              return CustomChatGptWidget(isReceiver: controller.listOfMsg[index].isReceiver, msg: controller.listOfMsg[index].msg, );
                            }
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: CustomAppColor.kBottomNavBarColor.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child:  Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextField(
                                  focusNode: controller.chatMsg,
                                  controller: controller.textEditingController,
                                  decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0,),
                                    hintText: 'ask chat GPT........',
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(
                                      color: CustomAppColor.kWhiteColor,
                                      fontFamily: CustomTextSizing.kPoppinsFontFamily,
                                    ),
                                  ),
                                  style: const TextStyle(
                                    color: CustomAppColor.kWhiteColor,
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                                onTap: controller.sendMessage,
                                child: ImageIcon(AssetImage(controller.micIcon),size: 50, color: CustomAppColor.kWhiteColor,),),
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: GestureDetector(
                                  onTap: controller.sendMessage,
                                  child: ImageIcon(AssetImage(controller.msgSendIcon),size: 40, color: Colors.green.withOpacity(0.98),),),
                            ),
                          ],
                    ),
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