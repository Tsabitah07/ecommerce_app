import 'package:ecommerce_app/themes/theme.dart';
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
          Text(""),
        ],
      ),
    );
  }
}
