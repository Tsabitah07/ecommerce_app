import 'package:ecommerce_app/view/HomePage.dart';
import 'package:ecommerce_app/view/profilePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterController extends GetxController {
  late TextEditingController emailController = TextEditingController();
  late TextEditingController usernameController = TextEditingController();
  late TextEditingController phoneNumberController = TextEditingController();
  late TextEditingController passwordController = TextEditingController();
  late RxString imagePath;

  @override
  void onInit() {
    super.onInit();
    imagePath = RxString('');
  }

  Future<void> pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      imagePath.value = pickedFile.path;
    }
  }

  Future<void> register() async {
    // Implement your registration logic here
    String emailPath = usernameController.value.text;
    String usernamePath = passwordController.value.text;
    String phoneNumberPath = passwordController.value.text;
    String passwordPath = passwordController.value.text;

    // Save user information to SharedPreferences
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('emailPath', emailPath);
    await prefs.setString('usernamePath', usernamePath);
    await prefs.setString('phoneNumberPath', phoneNumberPath);
    await prefs.setString('passwordPath', passwordPath);
    await prefs.setString('imagePath', imagePath.value);

    Get.off(Homebase());

    Get.snackbar("Congrats", "Login Succes");

  }
}
