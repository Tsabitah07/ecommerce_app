import 'package:ecommerce_app/view/profilePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterController extends GetxController{
  late TextEditingController emailController;
  late TextEditingController usernameController;
  late TextEditingController phoneNumberController;
  late TextEditingController passwordController;

  late RxString imagePath;

  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
    usernameController = TextEditingController();
    passwordController = TextEditingController();
    imagePath = RxString('');
  }

  Future<void> pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      imagePath.value = pickedFile.path;
    }
  }

  Future<void> registerSharedPreferences() async {
    // Implement your registration logic here
    String email = usernameController.text;
    String username = passwordController.text;
    String password = passwordController.text;

    // Save user information to SharedPreferences
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('email', email);
    await prefs.setString('username', username);
    await prefs.setString('password', password);
    await prefs.setString('imagePath', imagePath.value);

    Get.off(() => ProfilePage());

    Get.snackbar("Congrats", "Login Succes");

  }
}
