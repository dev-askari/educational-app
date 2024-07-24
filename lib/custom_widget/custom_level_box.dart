import 'package:flutter/material.dart';
import '../model/level_options_model.dart';
import '../utils/app_colors.dart';
import '../utils/custom_text.dart';

class CustomLevelBoxWidget extends StatelessWidget {
  final String boxName;
  final double? textFontSize;
  final Function() onTap;
  final Color? bgColor;
  final Color? textColor;
  final Gradient? gradientColor;
  final double borderRadius;
  final double? boxWidth;
  final double? boxHeight;
  final List<OptionsModel> selectedOption;


  const CustomLevelBoxWidget({
    Key? key,
    required this.boxName,
    required this.onTap,
    this.borderRadius = 30,
    this.bgColor,
    this.textColor, this.boxWidth,
    this.gradientColor = CustomAppColor.buttonGradient,
    this.textFontSize = 16.0, this.boxHeight,
    required this.selectedOption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Icon(Icons.circle, size: 12, color:   selectedOption.map((e) => e.opt).contains(boxName)?Colors.green : Colors.white,),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 6),
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
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 10.0,),
                child: Text(
                  boxName,
                  style: TextStyle(
                    color: CustomAppColor.kWhiteColor,
                    fontFamily: CustomTextSizing.kPoppinsFontFamily,
                    fontSize: textFontSize,
                    fontWeight: FontWeight.w600,
                    overflow: TextOverflow.ellipsis,
                  ),
                  maxLines: 2,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
