import 'package:educational_app/utils/app_constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../controller/registration_screen_controller.dart';
import '../custom_widget/custom_primary_button.dart';
import '../custom_widget/custom_text_field.dart';
import '../utils/app_colors.dart';
import '../utils/custom_dialogue.dart';
import '../utils/custom_text.dart';

class RegistrationScreen extends GetView<RegistrationScreenController>{
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: Get.width,
        decoration: const BoxDecoration(
          gradient: CustomAppColor.appGradient,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 80.0),
                child: Text("Register Account", style : TextStyle(
                  color: CustomAppColor.kWhiteColor,
                  fontFamily: CustomTextSizing.kPoppinsFontFamily,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700,
                ),),
              ),
              CustomTextField(
                onChange: (textValue) {
                },
                textInputType: TextInputType.emailAddress,
                textInputAction: TextInputAction.done,
                maxLine: 1,
                hintText: "User Name",
                counterText: "",
                borderRadius: 5.0,
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset("assets/icons/user.png", height: 23.0, width: 20.0,),
                ),
                fillColor: CustomAppColor.kTransparentColor,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: CustomTextField(
                  onChange: (textValue) {
                  },
                  textInputType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.done,
                  maxLine: 1,
                  hintText: "Email",
                  counterText: "",
                  borderRadius: 5.0,
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Image.asset("assets/icons/email icon.png", height: 23.0, width: 20.0,),
                  ),
                  fillColor: CustomAppColor.kTransparentColor,
                ),
              ),
              CustomTextField(
                onChange: (textValue) {
                },
                textInputType: TextInputType.emailAddress,
                textInputAction: TextInputAction.done,
                maxLine: 1,
                hintText: "Date of Birth",
                counterText: "",
                borderRadius: 5.0,
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset("assets/icons/calender.png", height: 23.0, width: 20.0,),
                ),
                fillColor: CustomAppColor.kTransparentColor,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: CustomTextField(
                  onChange: (textValue) {
                  },
                  textInputType: TextInputType.number,
                  textInputAction: TextInputAction.done,
                  maxLine: 1,
                  hintText: "Age",
                  counterText: "",
                  borderRadius: 5.0,
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Image.asset("assets/icons/age_icon.png", height: 23.0, width: 20.0,),
                  ),
                  fillColor: CustomAppColor.kTransparentColor,
                ),
              ),
              CustomTextField(
                onChange: (textValue) {
                },
                isObscure: true,
                textInputType: TextInputType.emailAddress,
                textInputAction: TextInputAction.done,
                maxLine: 1,
                hintText: "Password",
                counterText: "",
                borderRadius: 5.0,
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset("assets/icons/password.png", height: 23.0, width: 20.0,),
                ),
                fillColor: CustomAppColor.kTransparentColor,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text( 'Already have an account ? ',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: CustomAppColor.kWhiteColor,
                        fontSize: 15.0,
                      ),),
                    GestureDetector(
                      onTap: () => Get.toNamed(kLoginScreen),
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: CustomAppColor.kGreyColor,
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Align(
                  alignment: Alignment.center,
                  child: CustomPrimaryButton(
                      buttonName: 'Create Account',
                      onTap: ()=> CustomDialogue().confirmationDialog(message: "Take a Quizz", dialogueButtonText: 'Skip', yesFunction: ()=> Get.back()),
                    // Get.toNamed(kLoginScreen),
                      gradientColor: CustomAppColor.buttonGradient2,
                      borderRadius: 8.0,
                      buttonWidth: Get.width * 0.4,
                      buttonFontSize: 90,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}