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

TextStyle loginRegisterHeader = GoogleFonts.poppins(
  textStyle:
      TextStyle(color: commonText, fontSize: 31, fontWeight: FontWeight.bold),
);

TextStyle buttonTextStyle = GoogleFonts.poppins(
    textStyle: TextStyle(
        fontSize: 17, fontWeight: FontWeight.bold, color: primaryText));

TextStyle MiniImportant({required final color}) {
  return GoogleFonts.poppins(
    color: color,
    fontWeight: FontWeight.bold,
    fontSize: 20,
  );
}

//image asset

String RunShop = "assets/images/Reg.svg";
String Google = "assets/images/Google.svg";
String Access = "assets/images/Accesspng.png";
String Prot = "assets/images/Prot.png";
String Trade = "assets/images/Trade.png";
