import 'package:ecommerce_app/themes/theme.dart';
import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: linear2,
        title: Text("Privacy Policy",
          style: appBarText,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(""),
          ],
        )
      ),
    );
  }
}
