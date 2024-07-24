import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../custom_widget/custom_onboarding_widget.dart';

class TakeQuizScreenController extends GetxController{
  final PageController pageController = PageController(initialPage: 0);
  RxInt activePage = 0.obs;

  List<Widget> listOfPages=[
    const CustomOnBoardingWidget(image: 'assets/images/onboarding1.png', title: "Your level will be determined based on this test", description: "Multiple choice test 8 questions "),
  ];
}