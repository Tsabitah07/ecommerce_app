import 'package:ecommerce_app/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConfirmCheckoutBtn extends StatelessWidget {
  const ConfirmCheckoutBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      color: linear2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Confirm Payment",
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w500
            ),
          ),
          Text("Total :",
            style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w400
            ),
          )
        ],
      )
    );
  }
}
