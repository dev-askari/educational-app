import 'package:educational_app/controller/chat_gpt_screen_controller.dart';
import 'package:educational_app/controller/dashboard_screen_controller.dart';
import 'package:educational_app/controller/home_screen_controller.dart';
import 'package:educational_app/controller/level_screen_controller.dart';
import 'package:educational_app/controller/login_screen_controller.dart';
import 'package:educational_app/controller/onboarding_screen_controller.dart';
import 'package:educational_app/controller/profile_screen_controller.dart';
import 'package:educational_app/controller/registration_screen_controller.dart';
import 'package:educational_app/controller/setting_screen_controller.dart';
import 'package:educational_app/controller/take_quiz_screen_controller.dart';
import 'package:educational_app/controller/web_view_screen_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

import '../controller/lessons_screen_controller.dart';
import '../controller/notification_screen_controller.dart';
import '../controller/quizes_screen_controller.dart';
import '../controller/splash_screen_controller.dart';

class ScreenBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => SplashScreenController());
    Get.lazyPut(() => SettingScreenController());
    Get.lazyPut(() => RegistrationScreenController());
    Get.lazyPut(() => OnBoardingScreenController());
    Get.lazyPut(() => LoginScreenController());
    Get.lazyPut(() => HomeScreenController());
    Get.lazyPut(() => ProfileScreenController());
    Get.lazyPut(() => NotificationScreenController());
    Get.lazyPut(() => LessonScreenController());
    Get.lazyPut(() => QuizScreenController());
    Get.lazyPut(() => ChatGptScreenController());
    Get.lazyPut(() => DashboardScreenController());
    Get.lazyPut(() => TakeQuizScreenController());
    Get.lazyPut(() => LevelScreenController());
    Get.lazyPut(() => WebViewScreenController());
  }
}