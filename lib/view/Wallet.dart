import 'package:ecommerce_app/themes/theme.dart';
import 'package:ecommerce_app/view/BottomNavBar.dart';
import 'package:flutter/material.dart';

import '../widget/navigationButton.dart';

class WalletPage extends StatelessWidget {
   WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("My Wallet",
          style: appBarText,
        ),
        backgroundColor: linear2,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: screenWidth, height: screenHeight * .9,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: (){},
                child: Button("Add Payment", linear2, Colors.black)
              )
            ],
          ),
        )
      ),
      bottomNavigationBar:  BtmNavBar(initialPage: 1,),
    );
  }
}
