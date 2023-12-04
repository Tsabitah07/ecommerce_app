import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_app/view/HomePage.dart';
import 'package:ecommerce_app/view/profilePage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'dart:io';

class RegisterController extends GetxController {
  late TextEditingController emailController;
  late TextEditingController usernameController;
  late TextEditingController phoneNumberController;
  late TextEditingController passwordController;

  late RxString imagePath;

  var imageUrl = "".obs;
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
      await uploadImage();
      await addDataToFirestore(); // Wait for addDataToFirestore to complete
      Get.off(Homebase());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        // Handle weak password
      }
    } catch (e) {
      print(e);
    }
  }

Future<void> uploadImage() async {
  try {
    // Get the current user ID
    String? userId = FirebaseAuth.instance.currentUser?.uid ?? "";
    
    // Create a reference to the storage location
    final storageRef = FirebaseStorage.instance.ref().child("profile_picture/$userId.jpg");

    // Get the file from the image path
    File imageFile = File(imagePath.value);

    // Upload the file to Firebase Storage
    UploadTask uploadTask = storageRef.putFile(imageFile);

    // Wait for the upload to complete
    await uploadTask.whenComplete(() => null);

    // Get the download URL of the uploaded image
    imageUrl.value = await storageRef.getDownloadURL();

    // Update the user's photo URL in Firebase Auth
    await FirebaseAuth.instance.currentUser?.updatePhotoURL(imageUrl.value);

    // Print the download URL for debugging
    print("Image URL: ${imageUrl.value}");
  } catch (error) {
    // Handle any potential errors during the upload process
    print("Error uploading image: $error");
    // You might want to throw or return an error here depending on your use case
  }
}

  Future<void> addDataToFirestore() async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    try {
      final user = FirebaseAuth.instance.currentUser;
      print(user!.email);
      // Access the ID of the newly added document
      await firestore.collection('users').doc(user?.uid).set({
        'id': user?.uid,
        'username': usernameController.text,
        'email': emailController.text,
        "password": passwordController.text,
        "image": imageUrl.value
        // Add more fields as needed
      });
    } catch (e) {
      print('Error adding data to Firestore: $e');
    }
  }
}
