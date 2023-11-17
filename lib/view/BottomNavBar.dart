import 'package:ecommerce_app/view/HomePage.dart';
import 'package:ecommerce_app/view/Sheets.dart';
import 'package:ecommerce_app/view/Wallet.dart';
import 'package:ecommerce_app/view/profilePage.dart';
import 'package:ecommerce_app/view/settingPage.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/themes/theme.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class BtmNavBar extends StatelessWidget {
  BtmNavBar({super.key});

  // Define the classes to navigate to when icons are clicked
  void _navigateToHome(BuildContext context) {
    // Replace 'HomeClass' with the actual class you want to navigate to
    Get.to(Homebase());
  }

  void _navigateToWallet(BuildContext context) {
    Get.off(WalletPage());
  }

  void _navigateToProfile(BuildContext context) {
    // Replace 'ProfileClass' with the actual class you want to navigate to
    // Navigator.push(
    //     context, MaterialPageRoute(builder: (context) => RegisterPage()));
    Get.off(SettingPage());
  }

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: linear1,
      color: linear2,
      onTap: (index) {
        // Navigate to the respective class based on the selected icon
        if (index == 0) {
          _navigateToHome(context);
        } else if (index == 1) {
          _navigateToWallet(context);
        } else if (index == 2) {
          _navigateToProfile(context);
        }
      },
      items: [
        Icon(
          Icons.home_rounded,
          color: primaryText,
          size: 30,
        ),
        Icon(
          Icons.account_balance_wallet_rounded,
          color: primaryText,
          size: 30,
        ),
        Icon(
          Icons.person_rounded,
          color: primaryText,
          size: 30,
        ),
      ],
    );
  }
}
