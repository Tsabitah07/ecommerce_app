import 'package:ecommerce_app/themes/theme.dart';
import 'package:ecommerce_app/view/BottomNavBar.dart';
import 'package:ecommerce_app/widget/addPaymentMethod.dart';
import 'package:ecommerce_app/widget/textInput.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controller/walletPageController.dart';
import '../widget/navigationButton.dart';

class WalletPage extends StatelessWidget {
  final controller = Get.put(WalletController());

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
      body: Column(
        children: [
          InkWell(
            onTap: (){
              Get.dialog(AddPaymentMethod());
            },
            child: Button("Add Payment", linear2, commonText),
          ),
          Expanded(
            child: Obx(() => ListView.builder(
              itemCount: controller.itemCount.value,
              itemBuilder: ((context, index) {
                return ListTile(
                  title: Text(controller.eWalletList.value[index].eWalletName),
                  subtitle:
                  Text(controller.eWalletList.value[index].phoneNumber),
                  trailing: GestureDetector(
                    child: const Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                    onTap: () {
                      controller.removeWallet(index);
                    },
                  ),
                );
              }),
            )),
          )
        ],
      ),
      bottomNavigationBar: BtmNavBar(initialPage: 1,),
    );
  }
}
