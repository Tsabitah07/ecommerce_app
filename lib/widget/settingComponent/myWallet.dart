import 'package:ecommerce_app/themes/theme.dart';
import 'package:ecommerce_app/view/Wallet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'detailOption.dart';

class MyWallet extends StatelessWidget {
  final icon;
  final headerText;

  const MyWallet({
    required this.icon,
    required this.headerText
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
        width: screenWidth, height: 175,
        // color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () => Get.to(WalletPage()),
              child: Container(
                  height: 45,
                  margin: EdgeInsets.only(left: 12, right: 12 ,bottom: 5),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.vertical(top: Radius.circular(7))
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Icon(icon,
                            size: 30,
                          ),
                          SizedBox(width: 7,),
                          Text(headerText,
                            style: settingBtnText
                          ),
                        ],
                      ),
                    ],
                  )
              ),
            ),
            Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(horizontal: 12),
                height: 90,
                decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.vertical(bottom: Radius.circular(7))
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        DetailOption(icon: Icons.add_circle_outline, text: "Top Up",),
                        DetailOption(icon: Icons.qr_code_scanner, text: "Payment",),
                        DetailOption(icon: Icons.account_balance_wallet, text: "Transfer",),
                        DetailOption(icon: Icons.wallet_outlined, text: "Connected \nWallet",),
                      ],
                    ),
                  ],
                )
            )
          ],
        )
    );
  }
}
