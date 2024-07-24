import 'package:educational_app/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';

import '../utils/custom_text.dart';

class CustomOnBoardingWidget extends StatelessWidget{
  const CustomOnBoardingWidget({super.key, required this.image, required this.title, required this.description});

  final String image,title,description;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(image),
          const SizedBox(height: 50.0,),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(title,style: const TextStyle(color: CustomAppColor.kWhiteColor,fontSize: 24, fontFamily: CustomTextSizing.kPoppinsFontFamily, fontWeight: FontWeight.w700)),
          ),
          Text(description,style: const TextStyle(fontSize: 14,color: CustomAppColor.kGreyColor,fontFamily: CustomTextSizing.kPoppinsFontFamily,fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }

}