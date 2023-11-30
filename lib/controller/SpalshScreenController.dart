import 'package:ecommerce_app/view/HomePage.dart';
import 'package:ecommerce_app/view/LandingPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashController extends GetxController {
  late final SharedPreferences prefs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    checkSharedPreference();
  }

  void checkSharedPreference() async {
    final user = FirebaseAuth.instance.currentUser!;
    // print(user!.);
    Future.delayed(Duration(seconds: 2), () async {
      // if (user!.email == "" || user!.email == null) {
      //   Get.off(LandingPage());
      // } else {
      //   Get.off(Homebase());
      // }
    });
  }
}
