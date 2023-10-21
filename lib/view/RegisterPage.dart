import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

//note ganti dari positioned ke column

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            color: Color(0xff8A83EF),
            child: SvgPicture.asset(
              'assets/images/Reg.svg',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .5,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xff2A2A2A),
              borderRadius: BorderRadius.circular(20),
            ),
            width: MediaQuery.of(context).size.width,
            height:
                MediaQuery.of(context).size.height * .55, //fix bottom colors
            child: Column(children: [
              Container(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  "Let's get started!",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(18),
                width: MediaQuery.of(context).size.width * .7,
                decoration: BoxDecoration(
                    color: Color(0xffC3DDD1),
                    borderRadius: BorderRadius.circular(20)),
                margin: EdgeInsets.only(top: 40),
                child: Center(
                  child: Text(
                    "Sign up free",
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(18),
                width: MediaQuery.of(context).size.width * .7,
                decoration: BoxDecoration(
                    color: Color(0xff404452),
                    borderRadius: BorderRadius.circular(20)),
                margin: EdgeInsets.only(top: 40),
                child: Center(
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/images/Google.svg",
                        height: 32,
                        width: 32,
                      ),
                      Text(
                        "Continue with google",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(25),
                child: Text(
                  "Login",
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              )
            ]),
          ),
        ),
      ],
    );
  }
}
