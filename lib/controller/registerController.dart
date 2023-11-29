import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_app/view/profilePage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterController extends GetxController {
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

  Future<void> createUserLogin() async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      await addDataToFirestore(); // Wait for addDataToFirestore to
      await userLogin();
      Get.off(ProfilePage());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        // Handle weak password
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> userLogin() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
    } on FirebaseAuthException catch (e) {
      print(e);
      if (e.code == 'INVALID_LOGIN_CREDENTIALS') {
        print('No user found for that email.');
      }
    }
  }

  Future<void> addDataToFirestore() async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    try {
      final user = FirebaseAuth.instance.currentUser;
      // Access the ID of the newly added document
      await firestore.collection('users').doc(user?.uid).set({
        'id': user?.uid,
        'username': usernameController.text,
        'email': emailController.text,
        'password': passwordController.text
        // Add more fields as needed
      });
    } catch (e) {
      print('Error adding data to Firestore: $e');
    }
  }
}
