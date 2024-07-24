import 'package:flutter/material.dart';

class CustomAppColor {
  CustomAppColor._();

  static const Color kBackgroundColorBlue = Color(0xFF7F6BE5);
  static const Color kBackgroundColorBlack = Color(0xFF111112);
  static const Color kBackgroundColorWhite = Color(0xFFE6E6E6);
  static const Color kBackgroundColorLightBlue = Color(0xFF50429C);
  static const Color kWhiteColor = Color(0xFFFFFFFF);
  static const Color kGreyColor = Color(0xFF949FA6);
  static const Color kDarkBlueColor = Color(0xFF433A72);
  static const Color kBottomColor = Color(0xFF232426);
  static const Color kSwitchColor = Color(0xFF6C63FF);
  static const Color kButtonGradientColor = Color(0xFF7260CC);
  static const Color kButtonGradientBottomColor = Color(0xFF312B50);
  static const Color kGoogleButtonColor = Color(0xFF7D6AE2);
  static const Color kButtonGradientBottom = Color(0xFF363E40);
  static const Color kBottomNavBarColor = Color(0xFF767194);
  static const Color kSearchBarColor = Color(0xFFF2F2F2);
  static const Color kCustomBoxGradientColor = Color(0xFF2C2746);
  static const Color kSettingGradientColor = Color(0xFF1F1B31);
  static const Color kpinkColor = Color(0xFFFFB6B6);
  static const Color kBlueTextColor = Color(0xFF8984A5);
  static const Color kGreenTextColor = Color(0xFF97B89E);
  static const Color kTextFieldColor = Color(0xFFBAC6CD);
  static const Color kChatColor = Color(0xFF859097);
  static const Color kChatColor2 = Color(0xFF4A4475);
  static const Color kTransparentColor = Colors.transparent;


  static const Gradient appGradient = LinearGradient(
    colors: [
      CustomAppColor.kBackgroundColorBlue,
      CustomAppColor.kBackgroundColorBlack,
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const Gradient appBackgroundGradient = LinearGradient(
    colors: [
      CustomAppColor.kBackgroundColorWhite,
      CustomAppColor.kBackgroundColorLightBlue,
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );


  static const Gradient buttonGradient = LinearGradient(
    colors: [
      CustomAppColor.kButtonGradientBottom,
      CustomAppColor.kDarkBlueColor,
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const Gradient buttonGradient2 = LinearGradient(
    colors: [
      CustomAppColor.kButtonGradientColor,
      CustomAppColor.kButtonGradientBottomColor,
    ],
    begin: Alignment.centerRight,
    end: Alignment.centerLeft,
  );

  static const Gradient buttonGradient3 = LinearGradient(
    colors: [
      CustomAppColor.kButtonGradientColor,
      CustomAppColor.kButtonGradientBottomColor,
    ],
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
  );
  static const Gradient buttonGradient4 = LinearGradient(
    colors: [
      CustomAppColor.kGreyColor,
      CustomAppColor.kGreyColor,
    ],
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
  );
  static const Gradient optionsBoxGradient = LinearGradient(
    colors: [
      CustomAppColor.kDarkBlueColor,
      CustomAppColor.kButtonGradientBottom,
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const Gradient chatGradient = LinearGradient(
    colors: [
      CustomAppColor.kChatColor,
      CustomAppColor.kChatColor2,
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const Gradient customBoxGradient = LinearGradient(
    colors: [
      CustomAppColor.kGreyColor,
      CustomAppColor.kWhiteColor,
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  static const Gradient settingScreenGradient = LinearGradient(
    colors: [
      CustomAppColor.kDarkBlueColor,
      CustomAppColor.kSettingGradientColor,
    ],
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
  );

}
