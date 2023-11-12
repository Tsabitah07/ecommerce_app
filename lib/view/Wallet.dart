import 'package:ecommerce_app/themes/theme.dart';
import 'package:flutter/material.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Payment Method",
              style: Header,
            ),
          ],
        )
      ),
    );
  }
}
