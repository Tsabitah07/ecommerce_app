import 'package:ecommerce_app/controller/walletPageController.dart';
import 'package:ecommerce_app/themes/theme.dart';
import 'package:ecommerce_app/widget/navigationButton.dart';
import 'package:ecommerce_app/widget/textInput.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AddPaymentMethod extends StatelessWidget {
  final controller = Get.put(WalletController());

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 5,
      backgroundColor: linear2,
      child: Container(
        padding: EdgeInsets.all(15),
        width: 380, height: 420,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Add Payment Method",
                style: GoogleFonts.poppins(
                    fontSize: 25, fontWeight: FontWeight.w500
                ),
              ),
              Container(
                height: 233,
                  child: Column(
                      children: [
                        inputValue("E- Wallet Type (Ovo, Dana, Paypal)", false, controller.eWalletNameController),
                        inputValue("Phone Number", false, controller.phoneNumberController),
                        inputValue("password", true, controller.passwordController),
                      ]
                  )
              ),
              InkWell(
                onTap: () {
                  controller.addWallet(
                          controller.eWalletNameController.text,
                          controller.phoneNumberController.text,
                          controller.passwordController.text,
                      );
                },
                  child: Button("Add Payment", primaryText, commonText))
            ],
          ),
      )
    );
  }
}
