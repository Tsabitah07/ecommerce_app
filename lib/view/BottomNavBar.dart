import 'package:ecommerce_app/view/HomePage.dart';
import 'package:ecommerce_app/view/LoginPage.dart';
import 'package:ecommerce_app/view/registerPage.dart';
import 'package:ecommerce_app/widget/HomepageWidget.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/themes/theme.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class BtmNavBar extends StatelessWidget {
  BtmNavBar({super.key});

  // Define the classes to navigate to when icons are clicked
  void _navigateToHome(BuildContext context) {
    // Replace 'HomeClass' with the actual class you want to navigate to
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  }

  void _navigateToWallet(BuildContext context) {
    // Replace 'WalletClass' with the actual class you want to navigate to
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  void _navigateToProfile(BuildContext context) {
    // Replace 'ProfileClass' with the actual class you want to navigate to
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => RegisterPage()));
  }

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: diffgrey,
      color: secondaryColor,
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