import 'package:educational_app/model/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../utils/app_constant.dart';
import '../utils/utils_methods.dart';

class LoginScreenController extends GetxController{
  String logoImage=Img.get('login_logo.png');
  String logoImage2=Img.get('app_logo_2.png');
  UserModel? userModel;
  String googleIcon=IconImage.get('google_icon.png');
  late TextEditingController emailTextEditingController;
  RxString emailErrorMsg=''.obs;
  RxBool switchValue = false.obs;
  late FocusNode emailFocusNode;

  Future<void> onGoogleSignIn() async {
    final GoogleSignInAccount? googleSignInAccount = await GoogleSignIn()
        .signIn();

    if (googleSignInAccount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount
          .authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      final UserCredential userCredential = await FirebaseAuth.instance
          .signInWithCredential(credential);
      User? user = userCredential.user;
      user?.updateProfile(displayName: googleSignInAccount.displayName);
      if (user != null) {
        await user.reload();
        user = FirebaseAuth.instance.currentUser;
        userModel = UserModel(userName: user!.displayName.toString());
        Get.toNamed(kDashboardScreen, arguments: user?.displayName);
      }
    }
  }


}