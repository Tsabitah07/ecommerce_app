import 'package:ecommerce_app/controller/profileController.dart';
import 'package:ecommerce_app/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../widget/profileText.dart';
import '../widget/textInput.dart';

class ProfilePage extends StatelessWidget {
  final controller = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Page"),
        backgroundColor: primaryColor,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: screenWidth,
            child: Column(
              children: [
                Obx(() => buildImagePreview(controller.strImage.value, screenWidth * .35)),
                Container(
                  width: screenWidth * .83,
                  height: screenHeight * .55,
                  decoration: BoxDecoration(
                    // color: commonText,
                    borderRadius: BorderRadius.circular(23)
                  ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:[
                          ProfileText(screenWidth * .7, 'Email : ${controller.strEmail.value}'),
                          ProfileText(screenWidth * .7, 'Username : ${controller.strUsername.value}'),
                          ProfileText(screenWidth * .7, 'Phone Number : ${controller.strPhoneNumber.value}'),
                          ProfileText(screenWidth * .7, 'Password : ${controller.strPassword.value}')
                        ]
                    )
                )
              ],
            ),
        ),
      ),
    );
  }
}
