import 'package:ecommerce_app/controller/registerController.dart';
import 'package:ecommerce_app/themes/theme.dart';
import 'package:ecommerce_app/widget/navigationButton.dart';
import 'package:ecommerce_app/widget/textInput.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterPage extends StatelessWidget {
  final controller = Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: screenWidth,
              height: screenHeight * 0.43,
              color: const Color(0xff8A83EF),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Obx(() => buildImagePreview(
                      controller.imagePath.value, screenWidth * 0.25)),
                  InkWell(
                    onTap: () => controller.pickImage(),
                    child: Button("Add Image", primaryText, primaryColor),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: screenHeight * 0.61,
              width: screenWidth,
              decoration: BoxDecoration(
                color: primaryText,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 19, bottom: 14),
                    child: Text(
                      'Welcome-!!',
                      style: Header,
                    ),
                  ),
                  inputValue('Email', false),
                  inputValue('Username', false),
                  inputValue('Password', true),
                  InkWell(
                    onTap: () => controller.register(),
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      child: Button('REGISTER', primaryColor, primaryText),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
