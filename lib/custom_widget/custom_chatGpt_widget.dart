import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/custom_text.dart';

class CustomChatGptWidget extends StatelessWidget {
  final Gradient? gradientColor;
  final bool isReceiver;
  final String msg;


  const CustomChatGptWidget({super.key, this.gradientColor, required this.isReceiver, required this.msg});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
        decoration: BoxDecoration(
          gradient: isReceiver ?  CustomAppColor.buttonGradient : CustomAppColor.chatGradient,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              offset: const Offset(0, 4),
              blurRadius: 4,
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Visibility(
               visible: isReceiver,
               child: Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 8.0, bottom: 8.0),
                  child: Image.asset("assets/images/robotics.png", height: 35.0, width: 32.0,),
                ),
             ),
             Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0,right: 10.0, left: 8.0, bottom: 10.0),
                child: Text(msg,
                  textAlign: isReceiver ? TextAlign.start : TextAlign.end,
                  style: const TextStyle(
                  color: CustomAppColor.kWhiteColor,
                  fontFamily: CustomTextSizing.kPoppinsFontFamily,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w400,
                  // overflow: TextOverflow.visible,
                ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
