import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Color
const primaryColor = Color(0xff8A83EF);
const primaryText = Colors.white;
const secondaryColor = Color(0xff2A2A2A);
const commonText = Colors.black;
const linear1 = Color(0xffE7B0B8);
const linear2 = Color(0xffBFD9CE);
const diffgrey = Color.fromARGB(255, 60, 60, 60);

const Linear = LinearGradient(
    begin: Alignment.centerRight,
    end: Alignment.centerLeft,
    colors: [linear1, linear2]);

figmaFontsize(int fontSize) {
  return fontSize * 0.95;
}

//font

TextStyle finance({required final color}) {
  return GoogleFonts.poppins(
    color: color,
    fontWeight: FontWeight.bold,
    fontSize: 25,
  );
}

TextStyle Headers({required final color}) {
  return GoogleFonts.poppins(
    color: color,
    fontWeight: FontWeight.bold,
    fontSize: 35,
  );
}

TextStyle Paragraph({required final color}) {
  return GoogleFonts.poppins(
    color: color,
    fontWeight: FontWeight.normal,
    fontSize: 20,
  );
}

TextStyle Header = GoogleFonts.poppins(
  textStyle:
      const TextStyle(color: commonText, fontSize: 31, fontWeight: FontWeight.bold),
);

TextStyle loginRegisterHeader = GoogleFonts.poppins(
  textStyle:
      const TextStyle(color: commonText, fontSize: 31, fontWeight: FontWeight.bold),
);

TextStyle buttonTextStyle({color}) {
  return GoogleFonts.poppins(

      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: color
  );

}

TextStyle MiniImportant({required final color}) {
  return GoogleFonts.poppins(
    color: color,
    fontWeight: FontWeight.bold,
    fontSize: 20,
  );
}

TextStyle profileDataText = GoogleFonts.poppins(
    textStyle: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500));

TextStyle settingBtnText = GoogleFonts.poppins(
    textStyle: const TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.w400,
));

TextStyle appBarText = GoogleFonts.poppins(
    textStyle: const TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.bold,
));

//image asset

String RunShop = "assets/images/Reg.svg";
String Google = "assets/images/Google.svg";
String Access = "assets/images/Accesspng.png";
String Prot = "assets/images/Prot.png";
String Trade = "assets/images/Trade.png";
String SplashImg = "assets/images/Shopify.png";

//theme color

ThemeData customTheme = ThemeData(
  primaryColor: Colors.transparent, // Set your primary color
);
