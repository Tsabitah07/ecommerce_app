import 'package:ecommerce_app/themes/theme.dart';
import 'package:flutter/material.dart';

Widget button (buttonText){
  return Container(
    padding: EdgeInsets.symmetric(vertical: 11, horizontal: 31),
    margin: EdgeInsets.symmetric(vertical: 11, horizontal: 24),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(9),
      color: primaryColor,
    ),
    child: Text(
        buttonText,
      style: buttonTextStyle
    ),
  );
}