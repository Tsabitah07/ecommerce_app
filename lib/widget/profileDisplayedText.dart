import 'package:flutter/material.dart';

import '../themes/theme.dart';

Widget ProfileDisplayedText (width, text){
  return Container(
    width: width * .7,
    height: 58,
    padding: const EdgeInsets.all(14),
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