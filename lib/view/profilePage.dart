import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_app/controller/profileController.dart';
import 'package:ecommerce_app/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../widget/profileDisplayedText.dart';
import '../widget/textInput.dart';

class ProfilePage extends StatelessWidget {
  final controller = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile Page",
          style: appBarText,
        ),
        backgroundColor: linear2,
      ),
      body: FutureBuilder<QuerySnapshot<Map<String, dynamic>>>(
        future: controller.getData(),
        builder: (BuildContext context,
            AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
          if (snapshot.hasError) {
            return Text("Something went wrong");
          }

          if (snapshot.connectionState == ConnectionState.done) {
            final data =
                snapshot.data!.docs.first.data() as Map<String, dynamic>;

            return Container(
              width: screenWidth,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Image.network(
                      data["image"],
                      height: 250,
                      width: 250,
                      fit: BoxFit.cover,
                    ),
                  ),
                  // buildImagePreview(controller.strImage.value, screenWidth * .35),
                  Container(
                      width: screenWidth * .83,
                      height: screenHeight * .55,
                      decoration: BoxDecoration(
                          // color: commonText,
                          borderRadius: BorderRadius.circular(23)),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ProfileDisplayedText(
                                screenWidth, 'Email : ${data["email"]}'),
                            ProfileDisplayedText(
                                screenWidth, 'Username : ${data["username"]}'),
                            ProfileDisplayedText(
                                screenWidth, 'Password : ${data["password"]}'),
                          ]))
                ],
              ),
            );
          }

          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
