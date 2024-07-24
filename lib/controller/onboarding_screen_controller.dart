import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../custom_widget/custom_onboarding_widget.dart';

class OnBoardingScreenController extends GetxController{
  final PageController pageController = PageController(initialPage: 0);
  RxInt activePage = 0.obs;

  List<Widget> listOfPages=[
    const CustomOnBoardingWidget(image: 'assets/images/onboarding1.png', title: "Explore your new skills today", description: "You can learn java in an interactive way "),
    const CustomOnBoardingWidget(image: 'assets/images/onboarding2.png', title: "Empower your education to next level", description: "Learn new things and develop your problem solving skills "),
  ];


}