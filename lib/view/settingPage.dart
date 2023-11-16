import 'package:ecommerce_app/themes/theme.dart';
import 'package:ecommerce_app/widget/settingComponent/myWallet.dart';
import 'package:ecommerce_app/widget/settingComponent/order.dart';
import 'package:ecommerce_app/widget/settingComponent/settingButton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/settingComponent/profile.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting",
          style: appBarText
        ),
        backgroundColor: linear2,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Profile(username: "Username", email: "User Email"),
            Order(icon: Icons.calendar_today_rounded, headerText: "My Order"),
            MyWallet(icon: Icons.wallet_sharp, headerText: "My Wallet"),
            SettingButton(icon: Icons.arrow_forward_ios_rounded, text: "Account Setting"),
            SettingButton(icon: Icons.arrow_forward_ios_rounded, text: "Privacy Policy"),
            SettingButton(icon: Icons.arrow_forward_ios_rounded, text: "Help Assistant")
          ],
        ),
      ),
    );
  }
}
