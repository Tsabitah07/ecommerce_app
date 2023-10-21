import 'package:flutter/material.dart';

Widget inputValue(
    String label, bool isObsecure) {
  return Container(
    margin: EdgeInsets.all(10),
    child: TextField(
      obscureText: isObsecure,
      obscuringCharacter: "*",
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: label,
      ),
    ),
  );
}