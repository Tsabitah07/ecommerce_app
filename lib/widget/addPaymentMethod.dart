import 'package:ecommerce_app/controller/walletPageController.dart';
import 'package:ecommerce_app/widget/textInput.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:get/get.dart';

class AddPaymentMethod extends StatelessWidget {
  final walletController = Get.put(WalletPageController());

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 5,
      backgroundColor: Colors.white,
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
        child: Column(
          children: [
            CreditCardWidget(
              cardBgColor: Colors.black87,
              bankName: walletController.bankNameController.text,
              cardNumber: walletController.cardNumberController.text,
              expiryDate: walletController.expiryDateController.text,
              cardHolderName: walletController.cardHolderNameController.text,
              cvvCode: walletController.cvvCodeController.text,
              showBackView: false, onCreditCardWidgetChange: (CreditCardBrand ) {  },
            ),
            inputValue(
              "bank Name", false),
            walletInputValue(
              "card Number", true, walletController.cardNumberController,
              walletController.updateCardNumber
            ),
            inputValue("expiry Date", false),
            inputValue("card Holder Name", false),
            inputValue("cvv Code", true),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('Save Payment Method'),
            ),
          ],
        ),
      ),
    );
  }
}
