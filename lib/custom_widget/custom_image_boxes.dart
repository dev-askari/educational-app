import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import '../utils/custom_text.dart';

class CustomImageBoxes extends StatelessWidget {
  final String boxName;
  final double? textFontSize;
  final Function() onBoxTap;
  final Color? bgColor;
  final Color? textColor;
  final Gradient? gradientColor;
  final double borderRadius;
  final double? boxWidth;
  final double? boxHeight;
  final String? imageName;


  const CustomImageBoxes({
    Key? key,
    required this.boxName,
    required this.onBoxTap,
    this.borderRadius = 30,
    this.bgColor,
    this.textColor, this.boxWidth,
    this.gradientColor = CustomAppColor.buttonGradient,
    this.textFontSize = 16.0,
    this.boxHeight,
    this.imageName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onBoxTap,
      child: Container(

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
        padding: const EdgeInsets.symmetric(vertical: 6.0,horizontal: 10.0,),
        child: Column(
          children: [
            Text(
              boxName,maxLines: 1,
              style: TextStyle(
                color: CustomAppColor.kGreyColor,
                fontFamily: CustomTextSizing.kPoppinsFontFamily,
                fontSize: textFontSize,
                fontWeight: FontWeight.w600,
              ),
            ),
            Container(
              height: 60,
                width: 60,
                child: Image.asset("$imageName",)),
          ],
        ),
      ),
    );
  }
}
