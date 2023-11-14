import 'package:flutter/material.dart';

import '../themes/theme.dart';

Widget ProfileText (width, text){
  return Container(
    width: width,
    height: 60,
    padding: EdgeInsets.all(14),
    decoration: BoxDecoration(
        color: primaryText,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
            width: 2.5,
            color: linear2
        )
    ),
    child: Text(
      text,
      style: profileDataText,
    ),
  );
}