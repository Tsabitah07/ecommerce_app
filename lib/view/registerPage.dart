// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app/controller/registerController.dart';
import 'package:ecommerce_app/themes/theme.dart';
import 'package:ecommerce_app/view/LandingPage.dart';
import 'package:ecommerce_app/widget/navigationButton.dart';
import 'package:ecommerce_app/widget/textInput.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterPage extends StatelessWidget {
  final controller = Get.put(RegisterController());

  RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        body: Obx(
      () => Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: screenWidth,
              height: screenHeight * .55,
              color: linear2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildImagePreview(
                      controller.imagePath.value, screenWidth * 0.3),
                  InkWell(
                    onTap: () => controller.pickImage(),
                    child: Button("Add Image", primaryText, Colors.black),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: screenHeight * 0.5,
              width: screenWidth,
              decoration: BoxDecoration(
                  color: primaryText,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(15))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  inputValue('Email', false, controller.emailController),
                  inputValue('Username', false, controller.usernameController),
                  inputValue('Password', true, controller.passwordController),
                  InkWell(
                    onTap: () {
                      controller.registerSharedPreferences();
                      controller.createUserLogin();
                    },
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      child: Button('REGISTER', linear2, Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
              alignment: Alignment.topLeft,
              child: InkWell(
                onTap: () {
                  controller.createUserLogin();
                },
                child: Container(
                    decoration: BoxDecoration(
                        color: primaryText, shape: BoxShape.circle),
                    margin: EdgeInsets.all(15),
                    padding: EdgeInsets.all(10),
                    child: Icon(Icons.arrow_back)),
              ))
        ],
      ),
    ));
  }
}
