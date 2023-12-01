import 'package:ecommerce_app/view/HomePage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  void login() {
    Get.off(Homebase());


  }

  Future<void> userLogin() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
      Get.offAll(Homebase());
          Get.snackbar("Congrats", "Login Succes");
    } on FirebaseAuthException catch (e) {
      print(e);
      if (e.code == 'INVALID_LOGIN_CREDENTIALS') {}
    }
  }
}
