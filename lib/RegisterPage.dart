import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff8A83EF),
      child: Stack(
        children: [
          Positioned(
            left: 35,
            right: 35,
            child: Image.asset(
              'assets/images/RegShop.png',
              width: 250,
              height: 245,
            ),
          ),
          Positioned(
            //Card
            top: 250,
            left: 0,
            right: 0,
            child: Container(
              width: 280,
              height: 544,
              decoration: ShapeDecoration(
                color: const Color(0xff292929),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
          ),
          Positioned(
            //sign up free card
            top: 350,
            left: 30,
            right: 30,
            child: Container(
              width: 280,
              height: 57,
              decoration: ShapeDecoration(
                color: Color(0xffC3DDD1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
          ),
          Positioned(
            top: 365,
            left: 95,
            right: 95,
            child: Text(
              "Sign Up Free",
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              semanticsLabel: "Sign Up Free",
            ),
          ),
          const Positioned(
              top: 425,
              left: 30,
              right: 30,
              child: Icon(
                Icons.favorite,
                color: Colors.white,
                size: 50,
              )),
          Positioned(
            //continue with google card
            top: 425,
            left: 30,
            right: 30,
            child: Container(
              width: 280,
              height: 57,
              decoration: ShapeDecoration(
                color: const Color(0xff404452),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
          ),
          Positioned(
            top: 440,
            left: 80,
            right: 70,
            child: Text(
              "Continue with google",
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
