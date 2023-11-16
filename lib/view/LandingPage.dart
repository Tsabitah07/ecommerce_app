// import 'package:ecommerce_app/controller/firebaseController.dart';
import 'package:ecommerce_app/themes/theme.dart';
import 'package:ecommerce_app/view/LoginPage.dart';
import 'package:ecommerce_app/view/registerPage.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatelessWidget {
  // final FirebaseController _firebaseController = FirebaseController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 5,
          child: Container(
            color: primaryColor,
            child: SvgPicture.asset(
              RunShop,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
          ),
        ),
        Expanded(
          flex: 6,
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xff2A2A2A),
              borderRadius: BorderRadius.circular(20),
            ),
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 15),
                  child: Text(
                    "Let's get started!",
                    style: GoogleFonts.poppins(
                      color: primaryText,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // InkWell(
                //   onTap: () => Get.to(
                //       RegisterPage()), // <-- Closing parenthesis added here
                //   child: Container(
                //     padding: EdgeInsets.all(18),
                //     width: MediaQuery.of(context).size.width * 0.7,
                //     decoration: BoxDecoration(
                //       color: Color(0xffC3DDD1),
                //       borderRadius: BorderRadius.circular(20),
                //     ),
                //     margin: EdgeInsets.only(top: 40),
                //     child: Center(
                //       child: Text(
                //         "Sign up free",
                //         style: GoogleFonts.poppins(
                //           color: Colors.black,
                //           fontSize: 18,
                //           fontWeight: FontWeight.bold,
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
                Container(
                  margin: EdgeInsets.all(25),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return RegisterPage();
                          },
                        ),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'Signup for free!',
                        style: GoogleFonts.poppins(
                          color: primaryText,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.all(25),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return LoginPage();
                          },
                        ),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'Login',
                        style: GoogleFonts.poppins(
                          color: primaryText,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
