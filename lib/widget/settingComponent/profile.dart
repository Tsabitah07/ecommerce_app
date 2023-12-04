import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_app/controller/profileController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../themes/theme.dart';
import '../../view/profilePage.dart';

class Profile extends StatelessWidget {
  final controller = Get.put(ProfileController());
  Profile({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return FutureBuilder<QuerySnapshot<Map<String, dynamic>>>(
      future: controller.getData(),
      builder: (BuildContext context,
          AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
        if (snapshot.hasData) {
          final data =
                snapshot.data!.docs.first.data() as Map<String, dynamic>;
          return Container(
              width: screenWidth,
              height: 185,
              // color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image: NetworkImage(data["image"],), fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                      width: screenWidth * .55,
                      height: 125,
                      // color: Colors.white,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              data["username"],
                              style: finance(color: Colors.black),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(data["email"]),
                            SizedBox(
                              height: 5,
                            ),
                            InkWell(
                                onTap: () => Get.to(ProfilePage()),
                                child: Text("View Profile"))
                          ])),
                ],
              ));
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
