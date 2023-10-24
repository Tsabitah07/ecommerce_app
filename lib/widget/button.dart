import 'package:ecommerce_app/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget button (/*navigator, */buttonText){
  return Container(
    padding: EdgeInsets.symmetric(vertical: 11, horizontal: 17),
    margin: EdgeInsets.symmetric(vertical: 11, horizontal: 24),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(9),
      color: primaryColor,
    ),
    child: InkWell(
      // onTap: navigator,
      child: Text(buttonText,
        style: buttonTextStyle
      ),
    ),
  );
}