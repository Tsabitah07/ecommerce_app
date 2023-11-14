import 'dart:io';

import 'package:ecommerce_app/themes/theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

Widget inputValue(
    String hint, bool isObsecure) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 13, horizontal: 29),
    // color: primaryText,
    child: TextField(
      obscureText: isObsecure,
      obscuringCharacter: "*",
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14)
        ),
        hintText: hint,
      ),
    ),
  );
}

Widget inputValue2(
    String hint, bool isObsecure, TextEditingController controller) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 13, horizontal: 29),
    // color: primaryText,
    child: TextField(
      controller: controller,
      obscureText: isObsecure,
      obscuringCharacter: "*",
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14)
        ),
        hintText: hint,
      ),
    ),
  );
}

Widget buildImagePreview(String imagePath, size) {
  if (imagePath.isEmpty) {
    return Container();
  } else {
    return Container(
      padding: EdgeInsets.all(15),
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: Container(
        width: size, height: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: kIsWeb
            ? Image.network(
          imagePath,
          fit: BoxFit.cover,
          width: size,
          height: size,
        )
            : Image.file(
          File(imagePath),
          fit: BoxFit.cover,
          width: size,
          height: size,
        ),
      ),

    );
  }
}
