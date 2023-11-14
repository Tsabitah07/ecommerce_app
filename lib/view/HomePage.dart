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
                  title: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.menu),
                          ),
                        ],
                      ),
                    ],
                  ),
                  actions: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 0),
                      child: CircleAvatar(
                        backgroundColor: secondaryColor,
                        radius: 22,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_border_rounded,
                            color: Colors.white,
                          ),
                        ),
                      ),
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
                      title: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            // CircleAvatar(
                            //   radius: 22,
                            //   backgroundColor: diffgrey,
                            // ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Hello ,',
                                    style: Paragraph(color: secondaryColor)),
                                Text(
                                  'Wir',
                                  style: GoogleFonts.poppins(
                                    fontSize: figmaFontsize(20),
                                    height: 1.2,
                                    fontWeight: FontWeight.w600,
                                    color: primaryColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      actions: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5, right: 0),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 22,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.favorite_border_rounded,
                                color: secondaryColor,
                              ),
                            ),
                          ),
                        ),
                      ],
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
      bottomNavigationBar: BtmNavBar(),
    );
  }
}
