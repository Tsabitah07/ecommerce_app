import 'package:ecommerce_app/themes/theme.dart';
import 'package:flutter/material.dart';

import '../widget/profileText.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: screenWidth,
          height: screenHeight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Profile",
                style: Header,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 23),
                width: screenWidth * .34,
                height: screenWidth * .34,
                decoration: BoxDecoration(
                    color: commonText,
                    shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage("")
                  )
                ),
              ),
              Container(
                width: screenWidth * .83,
                height: screenHeight * .55,
                decoration: BoxDecoration(
                  color: commonText,
                  borderRadius: BorderRadius.circular(23)
                ),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children:[
                        ProfileText("Nama : "),
                        ProfileText("Email : "),
                        ProfileText("Pass : ")
                      ]
                  )
              )
            ],
          ),
      ),
    );
  }
}
