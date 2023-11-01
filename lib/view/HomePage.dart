import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ecommerce_app/controller/AppBarController.dart';
import 'package:ecommerce_app/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class HomePage extends StatelessWidget {
  final MyAppBarController myController = Get.put(MyAppBarController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(
          () => Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: AppBar(
                  backgroundColor: primaryColor,
                  elevation: 0,
                ),
              ),
              AnimatedOpacity(
                opacity: myController.showTitle.value ? 0 : 1,
                duration: Duration(milliseconds: 200),
                child: Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: AppBar(
                    backgroundColor: secondaryColor,
                    elevation: 0,
                    title: Row(
                      children: [
                        CircleAvatar(
                          radius: 22,
                          backgroundColor: diffgrey,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Greetings!",
                              style: Paragraph(color: Colors.white),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text(
                            "Bolot",
                            style: MiniImportant(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    actions: [
                      Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: CircleAvatar(
                          backgroundColor: secondaryColor,
                          radius: 22,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite_border_rounded,
                              color: primaryColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: GetBuilder<MyAppBarController>(
        builder: (controller) {
          Expanded(
            child: Row(
              children: [
                Text(
                  "Categorys",
                  style: Headers(color: Colors.black),
                )
              ],
            ),
          );
          return ListView.builder(
            controller: controller.scrollController,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Container(
                      // width: 20,
                      // height: 20,
                      // color: primaryColor,
                      ),
                ],
              );
            },
          );
        },
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: diffgrey,
        color: secondaryColor,
        items: const [
          Icon(
            Icons.house,
            color: primaryText,
          ),
          Icon(Icons.person_rounded,
          color: primaryText,),
          Icon(Icons.account_balance_wallet_rounded,
          color: primaryText,)
        ],
      ),
    );
  }
}
