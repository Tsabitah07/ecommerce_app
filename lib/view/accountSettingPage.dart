import 'package:ecommerce_app/themes/theme.dart';
import 'package:ecommerce_app/widget/settingComponent/settingButton.dart';
import 'package:flutter/material.dart';

class AccountSettingPage extends StatelessWidget {
  const AccountSettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Account Setting",
          style: appBarText,
        ),
        backgroundColor: linear2,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SettingButton(text: "Edit Profile"),
          ],
        )
      ),
    );
  }
}
