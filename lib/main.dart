import 'package:educational_app/utils/app_constant.dart';
import 'package:educational_app/utils/route_generator.dart';
import 'package:educational_app/utils/screen_binding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      theme: ThemeData.light(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      getPages: RouteGenerator.getPages(),
      initialBinding: ScreenBindings(),
      initialRoute: kSplashScreen,
    );
  }
}




