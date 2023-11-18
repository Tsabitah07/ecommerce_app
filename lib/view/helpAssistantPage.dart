import 'package:ecommerce_app/themes/theme.dart';
import 'package:ecommerce_app/widget/settingComponent/settingButton.dart';
import 'package:flutter/material.dart';

class HelpAssistantPage extends StatelessWidget {
  const HelpAssistantPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: linear2,
        title: Text("Help Assistant",
          style: appBarText,
        ),
      ),
      body: Column(
        children: [
          SettingButton(text: "How do i change my payment method?"),
          SettingButton(text: "Why is my transaction failed?"),
          SettingButton(text: "Why my card can't be connected with the app?"),
          SettingButton(text: "How do i start selling my product?"),
          SettingButton(text: "Another problem? Report Here")
        ],
      ),
    );
  }
}
