import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import '../utils/custom_text.dart';

class CustomNotificationWidget extends StatelessWidget {
  final String titleMsg;
  final String description;
  final double textFontSize;
  final Function() onBoxTap;
  final Color? bgColor;
  final Color? textColor;
  final Gradient? gradientColor;
  final double borderRadius;
  final double? boxWidth;
  final double? boxHeight;
  final bool isVisible;


  const CustomNotificationWidget({
    Key? key,
    required this.titleMsg,
    required this.onBoxTap,
    this.borderRadius = 30,
    this.bgColor,
    this.textColor, this.boxWidth,
    this.gradientColor = CustomAppColor.buttonGradient,
    this.textFontSize = 16.0, this.boxHeight, required this.description, required this.isVisible,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
        height: boxHeight,
        width: boxWidth,
        decoration: BoxDecoration(
          gradient: gradientColor,
          borderRadius: BorderRadius.circular(borderRadius),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              offset: const Offset(0, 4),
              blurRadius: 4,
            ),
          ],
        ),
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 30.0,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  titleMsg,
                  style: const TextStyle(
                    color: CustomAppColor.kWhiteColor,
                    fontFamily: CustomTextSizing.kPoppinsFontFamily,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                description,
                style: TextStyle(
                  color: CustomAppColor.kWhiteColor,
                  fontFamily: CustomTextSizing.kPoppinsFontFamily,
                  fontSize: textFontSize,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          ],
        ),
      ),
        Visibility(
          visible: isVisible,
          child: Positioned(
            top: 90,
            bottom: 20,
            left: 150,
            right: 10,
            child: GestureDetector(
              onTap: onBoxTap,
              child: Container(
                decoration: BoxDecoration(
                  color: CustomAppColor.kGoogleButtonColor,
                  borderRadius: BorderRadius.circular(borderRadius),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      offset: const Offset(0, 4),
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text("Get into Quizzes", style: TextStyle(
                    color: CustomAppColor.kWhiteColor,
                    fontFamily: CustomTextSizing.kPoppinsFontFamily,
                    fontSize: 13.0,
                    fontWeight: FontWeight.w400,
                  ),),
                ),
              ),
            ),
          ),
        )
    ]
    );
  }
}
