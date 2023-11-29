import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_app/controller/profileController.dart';
import 'package:ecommerce_app/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/profileDisplayedText.dart';
import '../widget/textInput.dart';

class ProfilePage extends StatelessWidget {
  final controller = Get.put(ProfileController());

  ProfilePage({super.key});

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
        body: Obx(
          () => SingleChildScrollView(
            child: SizedBox(
              width: screenWidth,
              child: Column(
                children: [
                  buildImagePreview(
                      controller.strImage.value, screenWidth * .35),
                  FutureBuilder<DocumentSnapshot>(
                      future: controller.getUserData(),
                      builder: (BuildContext context,
                          AsyncSnapshot<DocumentSnapshot> snapshot) {
                        if (snapshot.hasData) {
                          Map<String, dynamic> data =
                              snapshot.data!.data() as Map<String, dynamic>;
                          return Container(
                              width: screenWidth * .83,
                              height: screenHeight * .55,
                              decoration: BoxDecoration(
                                  // color: commonText,
                                  borderRadius: BorderRadius.circular(23)),
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    ProfileDisplayedText(screenWidth,
                                        'Email : ${data["email"]}'),
                                    ProfileDisplayedText(screenWidth,
                                        'Username : ${data["username"]}'),
                                    ProfileDisplayedText(screenWidth,
                                        'Password : ${data["password"]}'),
                                  ]));
                        } else if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        } else {
                          return Center(
                            child: Text("An error occured"),
                          );
                        }
                      })
                ],
              ),
            ),
          ),
        ));
  }
}
