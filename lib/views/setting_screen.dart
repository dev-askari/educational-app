import 'package:educational_app/custom_widget/custom_icon_text_widget.dart';
import 'package:educational_app/utils/app_constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';

import '../controller/setting_screen_controller.dart';
import '../utils/app_colors.dart';
import '../utils/custom_text.dart';

class SettingScreen extends GetView<SettingScreenController>{
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children:[
            Container(
              width: Get.width,
              decoration: const BoxDecoration(
                gradient: CustomAppColor.appGradient,
              ),
              child:  Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 100),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: Get.height * 0.7,
                      decoration:  BoxDecoration(
                        gradient: CustomAppColor.settingScreenGradient,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child:  SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30.0),
                          child: Column(
                            children: [
                               Padding(
                                padding: const EdgeInsets.only(top: 30.0,),
                                child: IconTextWidget(icon: 'assets/icons/person.png', text: "profile", onTap: (){},),
                              ),
                               Padding(
                                padding: const EdgeInsets.only(top: 50.0, bottom: 30.0),
                                child: IconTextWidget(icon: 'assets/icons/notification.png', text: "Notification",onTap: (){},),
                              ),
                            Row(
                              children: [
                                  const Padding(
                                   padding: EdgeInsets.only(right: 20.0),
                                   child: Text("App notification", style: TextStyle(
                                    color: CustomAppColor.kWhiteColor,
                                    fontFamily: CustomTextSizing.kPoppinsFontFamily,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w500,
                                ),),
                                 ),
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
                                  ],
                            ),
                               Padding(
                                padding: const EdgeInsets.only(top: 30.0, bottom: 10.0),
                                child: IconTextWidget(icon: 'assets/icons/globe.png', text: "Language",onTap: (){},),
                              ),
                               Padding(
                                padding: const EdgeInsets.only(top: 30.0, bottom: 20.0),
                                child: IconTextWidget(icon: 'assets/icons/Group.png', text: "Privacy settings",onTap: (){},),
                              ),
                               Padding(
                                padding: const EdgeInsets.only(top: 30.0, bottom: 20.0),
                                child: IconTextWidget(icon: 'assets/icons/i.png', text: "About",onTap: (){},),
                              ),
                               Padding(
                                padding: const EdgeInsets.only(top: 30.0, bottom: 20.0),
                                child: IconTextWidget(icon: 'assets/icons/logout.png',
                                  text: "Logout",
                                  iconColor: CustomAppColor.kpinkColor,
                                  textColor: CustomAppColor.kpinkColor,
                                    onTap: () => Get.toNamed(kLoginScreen),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
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
                  title: const Text('Settings', style:
                  TextStyle(
                    fontWeight: FontWeight.w500,
                    color: CustomAppColor.kWhiteColor,
                    fontSize: 25.0,
                    fontFamily: CustomTextSizing.kPoppinsFontFamily,
                  ),),
                  actions: [
                    IconButton(
                      icon: Image.asset("assets/icons/settings.png", width: 25.0, height: 25.0,), onPressed: () {  },
                    ),
                  ]
              ),
            ),
          ]
      ),
    );
  }

}