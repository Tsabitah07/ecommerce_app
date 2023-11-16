import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingButton extends StatelessWidget {
  final icon;
  final String text;

  const SettingButton({
    required this.icon,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
        height: 70, width: screenWidth,
        child: InkWell(
          onTap: (){},
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
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Icon(icon, color: Colors.black26)
              ],
            ),
          ),
        )
    );
  }
}
