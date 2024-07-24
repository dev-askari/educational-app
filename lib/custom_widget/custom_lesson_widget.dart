import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import '../utils/custom_text.dart';
import 'custom_bottom_navbar.dart';

class CustomLessonWidget extends StatelessWidget {
  final String titleMsg;
  final String? imagePath;
  final double textFontSize;
  final Function onTap;
  final Color? bgColor;
  final Color? textColor;
  final Gradient? gradientColor;
  final double borderRadius;
  final double? boxWidth;
  final double? boxHeight;

  const CustomLessonWidget({
    Key? key,
    required this.titleMsg,
    required this.onTap,
    this.borderRadius = 30,
    this.bgColor,
    this.textColor, this.boxWidth,
    this.gradientColor = CustomAppColor.buttonGradient,
    this.textFontSize = 16.0, this.boxHeight, this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          GestureDetector(
            onTap: (){
              onTap();
            },
            child: Container(
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
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        titleMsg,
                        style: const TextStyle(
                          color: CustomAppColor.kBlueTextColor,
                          fontFamily: CustomTextSizing.kPoppinsFontFamily,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                      child: Image.asset("$imagePath", height: 70, width: 70,)),
                ],
              ),
            ),
          ),
        ]
    );
  }
}
