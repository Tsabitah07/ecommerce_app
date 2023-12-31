import 'package:ecommerce_app/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingButton extends StatelessWidget {
  final String text;

  const SettingButton({
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
        height: 70, width: screenWidth,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            color: Colors.white70,
          ),
          margin: EdgeInsets.all(12),
          padding: EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(text,
                style: settingBtnText
              ),
              Icon(Icons.arrow_forward_ios_rounded, color: Colors.black26)
            ],
          ),
        )
    );
  }
}
