import 'dart:io';

import 'package:flutter/material.dart';

import 'package:ecommerce_app/themes/theme.dart';
import 'package:ecommerce_app/widget/navigationButton.dart';
import 'package:ecommerce_app/widget/textInput.dart';
import 'package:get/get.dart';

import '../controller/registerController.dart';

class RegisterPage extends StatelessWidget {
  final controller = Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
          children:[
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: screenWidth,
                height: screenHeight * .43,
                color: Color(0xff8A83EF),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 75,
                      // backgroundColor: Colors.grey[300],
                      backgroundImage: controller.selectedImage != null
                          ? FileImage(File(controller.selectedImage!.path))
                          : null,
                    ),
                    SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () async {
                        await controller.pickImageFromGallery();
                      },
                      child: Text('Add Photo'),
                    ),
                  ],
                )
              ),
            ),
            Align(
                alignment: Alignment.topLeft,
                child: InkWell(
                  child: Container(
                    margin: EdgeInsets.all(13),
                    padding: EdgeInsets.all(11),
                    decoration: BoxDecoration(
                        color: primaryText,
                        shape: BoxShape.circle
                    ),
                    child: Icon(
                      Icons.arrow_back,
                      color: commonText,
                    ),
                  ),
                )
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: MediaQuery.of(context).size.height * .61,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: primaryText,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 19, bottom: 14),
                        child: Text("Welcome-!!",
                          style: loginRegisterHeader,
                        ),
                      ),
                      inputValue("Email", false),
                      inputValue("Username", false),
                      inputValue("Password", true),
                      InkWell(
                        onTap: (){},
                          child: button("REGISTER"),
                      )
                    ],
                  ),
                )
            )
          ]
      ),
    );
  }
}
