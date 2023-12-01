import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ecommerce_app/controller/AppBarController.dart';
import 'package:ecommerce_app/model/data_model.dart';
import 'package:ecommerce_app/themes/theme.dart';
import 'package:ecommerce_app/view/BottomNavBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:ecommerce_app/widget/HomepageWidget.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:ecommerce_app/model/data_model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Sheets.dart';

class Homebase extends StatelessWidget {
  final MyAppBarController myController = Get.put(MyAppBarController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: Obx(
          () => Stack(
            alignment: AlignmentDirectional.centerStart,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 0, right: 0),
                child: AppBar(
                  backgroundColor: secondaryColor,
                  elevation: 0,
                  actions: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 0),
                    ),
                  ],
                ),
              ),
              AnimatedOpacity(
                opacity: myController.showTitle.value ? 0 : 1,
                duration: Duration(milliseconds: 110),
                child: Padding(
                  padding: const EdgeInsets.only(top: 0, left: 0),
                  child: PreferredSize(
                    preferredSize: Size.fromHeight(65),
                    child: AppBar(
                      backgroundColor: Colors.white,
                      elevation: 0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: GetBuilder<MyAppBarController>(
        builder: (controller) {
          return HomepageView();
        },
      ),
      bottomNavigationBar: BtmNavBar(
        initialPage: 0,
      ),
    );
  }
}
