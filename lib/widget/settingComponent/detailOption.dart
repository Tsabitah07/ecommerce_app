import 'package:flutter/material.dart';

class DetailOption extends StatelessWidget {
  final icon;
  final String text;

  const DetailOption({
    required this.icon,
    required this.text
});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(icon,
              size: 30,
            ),
            Text(text, style: TextStyle(fontSize: 13),),
          ],
        ),
    );
  }
}
