import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrivacyPolicyContainer extends StatelessWidget {
  final String textHeader;
  final String textBody;
  final double height;

  const PrivacyPolicyContainer({
    required this.textHeader,
    required this.textBody,
    required this.height
});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth, height: height,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(textHeader,
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w500
              ),
            ),
            Text(textBody,
              textAlign: TextAlign.justify,
              style: GoogleFonts.poppins(
                fontSize: 14,
              ),
            )
          ],
        ),
    );
  }
}
