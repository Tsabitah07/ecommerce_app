import 'package:ecommerce_app/themes/theme.dart';
import 'package:flutter/material.dart';

import '../model/PrivacyPolicyModel.dart';
import '../widget/settingComponent/privacyPolicy.dart';

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
            PrivacyPolicyContainer(textHeader: PrivacyPolicyHeader1, textBody: PrivacyPolicyBody1, height: 375,),
            PrivacyPolicyContainer(textHeader: PrivacyPolicyHeader2, textBody: PrivacyPolicyBody2, height: 228,),
            PrivacyPolicyContainer(textHeader: PrivacyPolicyHeader3, textBody: PrivacyPolicyBody3, height: 333,),
            PrivacyPolicyContainer(textHeader: PrivacyPolicyHeader4, textBody: PrivacyPolicyBody4, height: 138,),
          ],
        )
      ),
    );
  }
}
