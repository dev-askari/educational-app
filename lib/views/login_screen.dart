import 'package:educational_app/controller/login_screen_controller.dart';
import 'package:educational_app/custom_widget/custom_primary_button.dart';
import 'package:educational_app/utils/app_constant.dart';
import 'package:educational_app/utils/custom_dialogue.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';

import '../custom_widget/custom_text_field.dart';
import '../utils/app_colors.dart';
import '../utils/custom_text.dart';

class LoginScreen extends GetView<LoginScreenController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        decoration: const BoxDecoration(
          gradient: CustomAppColor.appGradient,
        ),
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 50.0,bottom: 10.0, left: 30.0, right: 30.0),
              child: Row(
                children: [
                  Image.asset(
                    controller.logoImage,
                    width: Get.width * 0.4,
                    fit: BoxFit.fitWidth,
                  ),
                  Image.asset(
                    controller.logoImage2,
                    width: Get.width * 0.4,
                    fit: BoxFit.fitWidth,
                  ),
                ],
              ),
            ),
         Expanded(
           child: SingleChildScrollView(
             child: Padding(
               padding: const EdgeInsets.symmetric(horizontal: 30.0,),
               child: Column(
                 children: [
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
                     padding: const EdgeInsets.symmetric(vertical: 28.0),
                     child: CustomTextField(
                       onChange: (textValue) {
                       },
                       isObscure: true,
                       textInputAction: TextInputAction.done,
                       maxLine: 1,
                       hintText: "Password",
                       counterText: "",
                       borderRadius: 5.0,
                       prefixIcon: Padding(
                         padding: const EdgeInsets.all(12.0),
                         child: Image.asset('assets/icons/password.png', height: 23.0, width: 20.0,),
                       ),
                       fillColor: CustomAppColor.kTransparentColor,
                     ),
                   ),
                   Row(
                     children: [
                       Obx(()=>  FlutterSwitch(value: controller.switchValue.value,
                         onToggle: (bool value) {
                           controller.switchValue.value = value;
                         },
                         width: 51.0,
                         height: 22.0,
                         inactiveColor: CustomAppColor.kTransparentColor,
                         activeColor: CustomAppColor.kButtonGradientColor,
                         activeSwitchBorder: Border.all(color: CustomAppColor.kSwitchColor),
                         inactiveSwitchBorder: Border.all(color: CustomAppColor.kSwitchColor),
                       ),
                       ),
                       const Expanded(
                         child:  Padding(
                           padding: EdgeInsets.only(left: 8.0,),
                           child: Text("Remember me", style : TextStyle(
                             color: CustomAppColor.kGreyColor,
                             fontFamily: CustomTextSizing.kPoppinsFontFamily,
                             fontSize: 13.0,
                             fontWeight: FontWeight.w500,
                           ),),
                         ),
                       ),
                        Expanded(
                         child:  Padding(
                           padding: EdgeInsets.only(left: 25.0),
                           child: GestureDetector(
                             onTap: (){},
                             child: const Text("Forgot password", style : TextStyle(
                               color: CustomAppColor.kGreyColor,
                               fontFamily: CustomTextSizing.kPoppinsFontFamily,
                               fontSize: 13.0,
                               fontWeight: FontWeight.w500,
                             ),),
                           ),
                         ),
                       ),
                     ],
                   ),
                   Padding(
                     padding: const EdgeInsets.symmetric(vertical: 48.0),
                     child: CustomPrimaryButton(
                         buttonName: 'Log in',
                         onTap: ()=> Get.toNamed(kDashboardScreen),
                         gradientColor: CustomAppColor.buttonGradient2,
                         borderRadius: 10.0,
                         buttonWidth: Get.width * 0.4
                     ),
                   ),
                   const Row(
                     children: [
                       Expanded(
                         child: Divider(
                           color: CustomAppColor.kGreyColor,
                         ),
                       ),
                       Padding(
                         padding: EdgeInsets.symmetric(horizontal: 7),
                         child: Text("or", style : TextStyle(
                           color: CustomAppColor.kWhiteColor,
                           fontFamily: CustomTextSizing.kPoppinsFontFamily,
                           fontSize: 15.0,
                           fontWeight: FontWeight.w400,
                         ),),
                       ),
                       Expanded(
                         child: Divider(
                           color: CustomAppColor.kGreyColor,
                         ),
                       ),
                     ],
                   ),
                   Padding(
                     padding: const EdgeInsets.symmetric(vertical: 30.0),
                     child: CustomPrimaryButton(
                       buttonIcon: Image.asset(controller.googleIcon, height: 30, width: 30,),
                         buttonName: 'Log in with Google',
                         onTap: (){
                         controller.onGoogleSignIn();
                         },
                         gradientColor: CustomAppColor.buttonGradient2,
                         borderRadius: 8.0,
                         buttonWidth: Get.width,
                     ),
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       const Text( 'Don’t have an account ? ',
                         style: TextStyle(
                           fontWeight: FontWeight.w400,
                           color: CustomAppColor.kWhiteColor,
                           fontSize: 15.0,
                         ),),
                       GestureDetector(
                         onTap: () => Get.toNamed(kRegistrationScreen),
                         child: const Text(
                           'Create account',
                           style: TextStyle(
                             fontWeight: FontWeight.w400,
                             color: CustomAppColor.kGreyColor,
                             fontSize: 15.0,
                           ),
                         ),
                       ),
                     ],
                   ),
                 ],
               ),
             ),
           ),
         )
          ],
        ),
      ),
    );
  }
}
