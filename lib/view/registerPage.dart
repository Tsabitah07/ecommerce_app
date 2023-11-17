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
      appBar: AppBar(
        backgroundColor: linear2,
        title: Text("Register Page",
          style: appBarText,
        ),
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: screenWidth,
              height: screenHeight * 0.32,
              color: const Color(0xff8A83EF),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildImagePreview(
                      controller.imagePath.value, screenWidth * 0.2),
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
              height: screenHeight * 0.59,
              width: screenWidth,
              decoration: BoxDecoration(
                color: primaryText,
              ),
              child: Column(
                children: [
                  // Container(
                  //   margin: const EdgeInsets.only(top: 19, bottom: 10),
                  //   child: Text(
                  //     'Welcome-!!',
                  //     style: Header,
                  //   ),
                  // ),
                  inputValue('Email', false),
                  inputValue('Username', false),
                  inputValue('Password', true),
                  inputValue('Phone Number', true),
                  InkWell(
                    onTap: () => controller.register(),
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      child: Button('REGISTER', linear2, Colors.black),
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
