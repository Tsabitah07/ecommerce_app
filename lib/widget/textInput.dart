import 'package:ecommerce_app/themes/theme.dart';
import 'package:flutter/material.dart';

Widget inputValue(
    String label, bool isObsecure) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 13, horizontal: 29),
    // color: primaryText,
    child: TextField(
      obscureText: isObsecure,
      obscuringCharacter: "*",
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(13)
        ),
        labelText: label,
      ),
    ),
  );
}