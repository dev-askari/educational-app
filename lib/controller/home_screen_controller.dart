import 'package:educational_app/controller/dashboard_screen_controller.dart';
import 'package:educational_app/controller/login_screen_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../utils/utils_methods.dart';

class HomeScreenController extends GetxController{
  final LoginScreenController loginScreenController = Get.find<LoginScreenController>();
  final DashboardScreenController dashboardScreenController = Get.find<DashboardScreenController>();
  String javaCourseImage=Img.get('course_image.png');
  String lessonsImage=Img.get('lessons.png');
  String quizesImage=Img.get('quizes.png');
  String chatIcon=IconImage.get('chat.png');
  RxBool isReceiver = false.obs;


  FocusNode searchBar=FocusNode();

  void removeFocus(){
    if(searchBar.hasFocus){
      searchBar.unfocus();
    }
  }



}