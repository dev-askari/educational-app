import 'package:educational_app/custom_widget/custom_web_view_widget.dart';
import 'package:educational_app/utils/screen_binding.dart';
import 'package:educational_app/views/chat_gpt_screen.dart';
import 'package:educational_app/views/dashboard_screen.dart';
import 'package:educational_app/views/home_screen.dart';
import 'package:educational_app/views/levels_screen.dart';
import 'package:educational_app/views/login_screen.dart';
import 'package:educational_app/views/notification_screen.dart';
import 'package:educational_app/views/onboarding_screen.dart';
import 'package:educational_app/views/profile_screen.dart';
import 'package:educational_app/views/quizes_screen.dart';
import 'package:educational_app/views/registration_screen.dart';
import 'package:educational_app/views/setting_screen.dart';
import 'package:educational_app/views/take_quiz_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../views/lessons_screen.dart';
import '../views/splash_screen.dart';
import 'app_constant.dart';

class RouteGenerator {
  static List<GetPage> getPages() {
    return [
      GetPage(
        name: kSplashScreen,
        page: () => const SplashScreen(),
        binding: ScreenBindings(),
      ),
      GetPage(
        name: kHomeScreen,
        page: () => const HomeScreen(),
        binding: ScreenBindings(),
      ),
      GetPage(
        name: kSettingScreen,
        page: () => const SettingScreen(),
        binding: ScreenBindings(),
      ),
      GetPage(
        name: kRegistrationScreen,
        page: () => const RegistrationScreen(),
        binding: ScreenBindings(),
      ),
      GetPage(
        name: kOnBoardingScreen,
        page: () => const OnBoardingScreen(),
        binding: ScreenBindings(),
      ),
      GetPage(
        name: kLoginScreen,
        page: () => const LoginScreen(),
        binding: ScreenBindings(),
      ),
      GetPage(
        name: kProfileScreen,
        page: () => const ProfileScreen(),
        binding: ScreenBindings(),
      ),
      GetPage(
        name: kNotificationScreen,
        page: () => const NotificationScreen(),
        binding: ScreenBindings(),
      ),
      GetPage(
        name: kLessonScreen,
        page: () => const LessonScreen(),
        binding: ScreenBindings(),
      ),
      GetPage(
        name: kQuizScreen,
        page: () => const QuizScreen(),
        binding: ScreenBindings(),
      ),
      GetPage(
        name: kChatGptScreen,
        page: () => const ChatGptScreen(),
        binding: ScreenBindings(),
      ),
      GetPage(
        name: kDashboardScreen,
        page: () => const DashboardScreen(),
        binding: ScreenBindings(),
      ),
      GetPage(
        name: kTakeQuizScreen,
        page: () => const TakeQuizScreen(),
        binding: ScreenBindings(),
      ),
      GetPage(
        name: kLevelScreen,
        page: () => const LevelScreen(),
        binding: ScreenBindings(),
      ),
      GetPage(
        name: kWebViewScreen,
        page: () => const InAppWebViewExampleScreen(),
        binding: ScreenBindings(),
      ),

    ];
  }


}