import 'package:ecommerce_app/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: Obx(
          () => Stack(
            alignment: AlignmentDirectional.centerStart,
            children: [
              AppBar(
                backgroundColor: primaryColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
