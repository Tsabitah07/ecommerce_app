import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileController extends GetxController {
  late final SharedPreferences prefs;
  RxString strEmail = "".obs;
  RxString strUsername = "".obs;
  RxString strPhoneNumber = "".obs;
  RxString strPassword = "".obs;
  RxString strImage = "".obs;

  void onInit() {
    // TODO: implement onInit
    super.onInit();
    checkSharedPreference();
  }

  void checkSharedPreference() async {
    prefs = await SharedPreferences.getInstance();
    strEmail.value = prefs.getString('emailPath') ?? '';
    strUsername.value = prefs.getString('usernamePath') ?? '';
    strPhoneNumber.value = prefs.getString('phoneNumberPath') ?? '';
    strPassword.value = prefs.getString('passwordPath') ?? '';

    strImage.value = prefs.getString('imagePath') ?? '';
  }
}
