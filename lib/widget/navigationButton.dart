import 'package:ecommerce_app/themes/theme.dart';
import 'package:flutter/material.dart';

Widget Button (buttonText, backgrounColor, fontColor){
  return Container(
    padding: EdgeInsets.symmetric(vertical: 11, horizontal: 31),
    margin: EdgeInsets.symmetric(vertical: 11, horizontal: 24),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(9),
      color: backgrounColor,
    ),
    child: Text(
        buttonText,
      style: buttonTextStyle(color: fontColor)
    ),
  );
}