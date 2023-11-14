import 'package:flutter/material.dart';

import '../themes/theme.dart';

Widget ProfileText (String text){
  return Container(
    padding: EdgeInsets.only(top: 17, left: 19),
    child: Text(text,
      style: buttonTextStyle(),
    ),
  );
}