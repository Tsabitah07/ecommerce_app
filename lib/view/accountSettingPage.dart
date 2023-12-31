import 'package:ecommerce_app/themes/theme.dart';
import 'package:ecommerce_app/view/LandingPage.dart';
import 'package:ecommerce_app/view/LoginPage.dart';
import 'package:ecommerce_app/widget/navigationButton.dart';
import 'package:ecommerce_app/widget/settingComponent/settingButton.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountSettingPage extends StatelessWidget {
  const AccountSettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Account Setting",
          style: appBarText,
        ),
        backgroundColor: linear2,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          SettingButton(text: "Edit Profile"),
          SettingButton(text: "Account Privacy"),
          SettingButton(text: "Notification"),
          SettingButton(text: "Community"),
          SettingButton(text: "Information"),
          InkWell(
              onTap: () async {
                await FirebaseAuth.instance.signOut();
                Get.offAll(LandingPage());
              },
              child: Button("Logout", Colors.red, Colors.white)),
        ],
      )),
    );
  }
}
