import 'package:ecommerce_app/themes/theme.dart';
import 'package:flutter/material.dart';

class SettingButton extends StatelessWidget {
  final String text;

  const SettingButton({super.key, 
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
        height: 70, width: screenWidth,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            color: Colors.white70,
          ),
          margin: const EdgeInsets.all(12),
          padding: const EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(text,
                style: settingBtnText
              ),
              const Icon(Icons.arrow_forward_ios_rounded, color: Colors.black26)
            ],
          ),
        )
    );
  }
}
