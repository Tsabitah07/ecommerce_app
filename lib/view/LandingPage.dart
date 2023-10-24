import 'package:ecommerce_app/themes/theme.dart';
import 'package:ecommerce_app/view/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatelessWidget {
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
                Container(
                  padding: EdgeInsets.all(18),
                  width: MediaQuery.of(context).size.width * 0.7,
                  decoration: BoxDecoration(
                    color: Color(0xffC3DDD1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  margin: EdgeInsets.only(top: 40),
                  child: Center(
                    child: Text(
                      "Sign up free",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(18),
                  width: MediaQuery.of(context).size.width * 0.7,
                  decoration: BoxDecoration(
                    color: Color(0xff404452),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  margin: EdgeInsets.only(top: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        Google,
                        height: 32,
                        width: 32,
                      ),
                      const SizedBox(
                        width: 2,
                      ), // Add some spacing between the icon and text
                      Text(
                        "Continue with Google",
                        style: GoogleFonts.poppins(
                          color: primaryText,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
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
