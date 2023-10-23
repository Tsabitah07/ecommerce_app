import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Color

const primaryColor = Color(0xff8A83EF);
const primaryText = Colors.white;
const secondaryColor = Color(0xff2A2A2A);

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

//image asset

String RunShop = "assets/images/Reg.svg";
String Google = "assets/images/Google.svg";
