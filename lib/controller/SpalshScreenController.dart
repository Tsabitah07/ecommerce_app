
import 'package:ecommerce_app/view/HomePage.dart';
import 'package:ecommerce_app/view/LandingPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashController extends GetxController {
  late final SharedPreferences prefs;

  @override
  void onReady() {
    // TODO: implement onReady
    checkSharedPreference();
    super.onReady();
  }

  void checkSharedPreference() async {
    // final user = FirebaseAuth.instance.currentUser!;
    // // print(user!.);
    User? user = FirebaseAuth.instance.currentUser;
    Future.delayed(Duration(seconds: 2), () {
      if (user == "" || user == null) {
        Get.off(LandingPage());
      } else {
        Get.off(Homebase());
      }
    });

  }
}
