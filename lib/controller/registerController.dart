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
    prefs.setString('email', email);
    prefs.setString('username', username);
    prefs.setString('phoneNumber', phoneNumber);
    prefs.setString('password', password);
    prefs.setString('imagePath', imagePath.value);

    // Navigate to the next screen or perform any other action
    // For example, you can use Get.to(() => NextScreen());
  }
}