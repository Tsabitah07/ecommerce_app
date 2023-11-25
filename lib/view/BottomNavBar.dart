import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:ecommerce_app/view/HomePage.dart';
import 'package:ecommerce_app/view/Sheets.dart';
import 'package:ecommerce_app/view/Wallet.dart';
import 'package:ecommerce_app/view/profilePage.dart';
import 'package:ecommerce_app/view/settingPage.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/themes/theme.dart';
import 'package:get/get.dart';

class BtmNavBar extends StatelessWidget {
  final initialPage;


  BtmNavBar({
    required this.initialPage
  });

  @override
  Widget build(BuildContext context) {
    return ConvexAppBar(
      backgroundColor: linear2,
      items: [
        TabItem(icon: Icons.home, title: 'Home'),
        TabItem(icon: Icons.wallet, title: 'Wallet'),
        TabItem(icon: Icons.settings, title: 'Setting'),
      ],
      onTap: (int i) {
        print('click index=$i');

        switch(i){
          case 0:
          // Handle tap on Home
            Get.off(Homebase());
            break;
          case 1:
          // Handle tap on Favorites
            Get.off(WalletPage());
            break;
          case 2:
          // Handle tap on Search
            Get.off(SettingPage());
            break;
        }
      },
      initialActiveIndex: initialPage,
      style: TabStyle.reactCircle,
    );
  }
}
