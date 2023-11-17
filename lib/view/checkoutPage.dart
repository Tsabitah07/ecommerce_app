import 'package:ecommerce_app/themes/theme.dart';
import 'package:ecommerce_app/view/succesCheckOut.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/conformCheckoutBtn.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: linear2,
        title: Text("Checkout",
          style: appBarText,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              child: Text("Your Order",
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.w500
                ),
              ),
            ),
            // ListView.builder(
            //     itemBuilder: (BuildContext context, int index){
            //       return ListTile();
            //     },
            // )
          ],
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () => Get.off(SuccesCheckoutPage()),
          child: ConfirmCheckoutBtn()),
    );
  }
}
