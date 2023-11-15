import 'package:ecommerce_app/view/HomePage.dart';
import 'package:ecommerce_app/view/profilePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterController extends GetxController{
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
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      imagePath.value = pickedFile.path;
    }
  }

  Future<void> register() async {
    // Implement your registration logic here
    String email = usernameController.text;
    String username = passwordController.text;
    String phoneNumber = passwordController.text;
    String password = passwordController.text;

    // Save user information to SharedPreferences
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('emailPath', email);
    await prefs.setString('usernamePath', username);
    await prefs.setString('phoneNumberPath', phoneNumber);
    await prefs.setString('passwordPath', password);
    await prefs.setString('imagePath', imagePath.value);

    Get.off(ProfilePage());

    Get.snackbar("Congrats", "Login Succes");

    // Navigate to the next screen or perform any other action
    // For example, you can use Get.to(() => NextScreen());
  }
}