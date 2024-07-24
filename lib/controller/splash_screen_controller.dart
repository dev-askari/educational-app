import 'dart:async';

import 'package:get/get.dart';
import 'package:get/state_manager.dart';

import '../utils/app_constant.dart';
import '../utils/utils_methods.dart';

class SplashScreenController extends GetxController{
  String logoImage=Img.get('app_logo.png');
  final RxDouble splashLoading = 0.0.obs;

  Timer? timer;

  @override
  void onInit() {
    super.onInit();
    timer = Timer.periodic(
      const Duration(milliseconds: 50),
          (timer) {
        splashLoading.value += 0.025;
        if (splashLoading.value >= 1.0) {
          timer.cancel();
          navigate();
        }
      },
    );
  }
  Future<void> navigate() async{
    Get.offNamed(kOnBoardingScreen);
  }
}