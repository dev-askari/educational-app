import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import '../utils/custom_text.dart';

class CustomPrimaryButton extends StatelessWidget {
  final String buttonName;
  final double? buttonFontSize;
  final Function onTap;
  final bool isLoading;
  final bool isButtonDisable;
  final Color? bgColor;
  final Color? textColor;
  final Gradient? gradientColor;
  final double borderRadius;
  final double? buttonWidth;
  final Widget? buttonIcon;

  const CustomPrimaryButton({
    Key? key,
    required this.buttonName,
    required this.onTap,
    this.isLoading = false,
    this.isButtonDisable = false,
    this.borderRadius = 30,
    this.bgColor,
    this.textColor, this.buttonWidth,
    this.gradientColor = CustomAppColor.buttonGradient,
    this.buttonFontSize = 16.0, this.buttonIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        if(isLoading){
          return;
        }
        onTap();
      },
      child: Container(
        width: buttonWidth,
        decoration: BoxDecoration(
          gradient: gradientColor,
          color: isButtonDisable
              ? CustomAppColor.kGreyColor
              : bgColor ?? CustomAppColor.kWhiteColor,
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
        child: FittedBox(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: buttonIcon ?? SizedBox(),
              ),
              Text( buttonName,
                style: TextStyle(
                  color: textColor ?? CustomAppColor.kWhiteColor,
                  fontFamily: CustomTextSizing.kPoppinsFontFamily,
                  fontSize: buttonFontSize,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
