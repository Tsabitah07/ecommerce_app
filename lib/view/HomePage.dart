import 'package:ecommerce_app/controller/AppBarController.dart';
import 'package:ecommerce_app/themes/theme.dart';
import 'package:ecommerce_app/view/BottomNavBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecommerce_app/widget/HomepageWidget.dart';
import 'Sheets.dart';

class Homebase extends StatelessWidget {
  final MyAppBarController myController = Get.put(MyAppBarController());

  Homebase({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:  Size.fromHeight(65),
        child: Obx(
          () => Stack(
            alignment: AlignmentDirectional.centerStart,
            children: [
              Padding(
                padding:  EdgeInsets.only(top: 0, right: 0),
                child: AppBar(
                  backgroundColor: secondaryColor,
                  elevation: 0,
                  actions: [
                    Padding(
                      padding:  EdgeInsets.only(top: 5, left: 0),
                      child: CircleAvatar(
                        backgroundColor: secondaryColor,
                        radius: 22,
                        child: IconButton(
                          onPressed: () {},
                          icon:  Icon(
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
                duration:  Duration(milliseconds: 110),
                child: Padding(
                  padding:  EdgeInsets.only(top: 0, left: 0),
                  child: PreferredSize(
                    preferredSize:  Size.fromHeight(65),
                    child: AppBar(
                      backgroundColor: Colors.white,
                      elevation: 0,
                      actions: [
                        Padding(
                          padding:  EdgeInsets.only(top: 5, right: 0),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 22,
                            child: IconButton(
                              onPressed: () {
                                Wishlist.show(context);
                              },
                              icon:  Icon(
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
          return  HomepageView();
        },
      ),
      bottomNavigationBar:  BtmNavBar(
        initialPage: 0,
      ),
    );
  }
}
