import 'package:educational_app/custom_widget/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../custom_widget/custom_box_widget.dart';
import 'dashboard_screen_controller.dart';


class QuizScreenController extends GetxController{
  final DashboardScreenController dashboardScreenController = Get.find<DashboardScreenController>();
  final List<Widget> items = [
    CustomBoxWidget(boxName: 'print ("Hello World");', onTap: (){},
    borderRadius: 5, textFontSize: 14,
    ),
    Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: CustomBoxWidget(boxName: 'echo("Hello World");', onTap: (){}, borderRadius: 5,textFontSize: 14,
      ),
    ),
    Padding(
        padding: const EdgeInsets.only(top: 8.0),
    child: CustomBoxWidget(boxName: 'Console.WriteLine("Hello World");', onTap: (){}, borderRadius: 5,textFontSize: 14,),),
    Padding(
        padding: const EdgeInsets.only(top: 8.0),
    child:
    CustomBoxWidget(boxName: 'System.out.printin("Hello World");', onTap: (){}, borderRadius: 5,textFontSize: 14,
    ),),
  ];

}