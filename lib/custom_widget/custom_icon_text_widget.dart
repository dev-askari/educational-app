import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/custom_text.dart';

class IconTextWidget extends StatelessWidget {
  final String icon;
  final String text;
  final Color? textColor;
  final Color? iconColor;
  final Function()? onTap;


  const IconTextWidget({super.key,
    required this.icon,
    required this.text,
    this.textColor,
    this.iconColor,  this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
            onTap: onTap,
            child: ImageIcon(AssetImage(icon),color: iconColor ?? CustomAppColor.kWhiteColor,)),
        const SizedBox(width: 50,),
        GestureDetector(
          onTap: onTap,
          child: Text(text,
            style:  TextStyle(
            color: textColor ?? CustomAppColor.kWhiteColor,
            fontFamily: CustomTextSizing.kPoppinsFontFamily,
            fontSize: 18.0,
            fontWeight: FontWeight.w500,
          ),),
        ),
      ],
    );
  }
}
