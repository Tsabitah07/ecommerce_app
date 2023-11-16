import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../themes/theme.dart';
import '../../view/profilePage.dart';

class Profile extends StatelessWidget {
  final username;
  final email;

  const Profile({
    required this.username,
    required this.email
});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
        width: screenWidth, height: 185,
        // color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 120, width: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: linear2,
              ),
            ),
            Container(
                width: screenWidth * .55, height: 125,
                // color: Colors.white,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(username,
                        style: finance(color: Colors.black),
                      ),
                      SizedBox(height: 10,),
                      Text(email),
                      SizedBox(height: 5,),
                      InkWell(
                          onTap: () => Get.to(ProfilePage()),
                          child: Text("View Profile")
                      )
                    ]
                )
            ),
          ],
        )
    );
  }
}
