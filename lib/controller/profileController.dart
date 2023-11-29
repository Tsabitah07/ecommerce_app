import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileController extends GetxController {
  late final SharedPreferences prefs;
  RxString strEmail = "".obs;
  RxString strUsername = "".obs;
  RxString strPassword = "".obs;
  RxString strImage = "".obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    checkSharedPreference();
  }

  Future<void> checkSharedPreference() async {
    try {
      prefs = await SharedPreferences.getInstance();
      strEmail.value = prefs.getString('email') ?? "no data";
      strUsername.value = prefs.getString('username') ?? "no data";
      strPassword.value = prefs.getString('password') ?? "no data";

      strImage.value = prefs.getString('imagePath') ?? 'no data';
    } catch (e) {
      print('Error initializing SharedPreferences: $e');
    }
  }

  Future<DocumentSnapshot<Map<String, dynamic>>> getUserData() async {
    String? email = "bawwaz@gmail.com";
    final firestore = await FirebaseFirestore.instance
        .collection("users")
        .where("email", isEqualTo: email)
        .limit(1)
        .get();

    return firestore.docs.first;
  }
}
