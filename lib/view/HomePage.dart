import 'package:ecommerce_app/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/controller/AppBarController.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final controller = Get.put(MyAppBarController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Fading AppBar'),
      // ),
      body: CustomScrollView(
        controller: controller.scrollController,
        slivers: [
          SliverAppBar(
            expandedHeight: 100.0,
            floating: false,
            pinned: true,
            flexibleSpace: Obx(() => FlexibleSpaceBar(
                  title: Text('My Fading AppBar'),
                  background: Opacity(
                      opacity: controller.appBarOpacity.value,
                      child: Icon(
                        Icons.favorite_outline_rounded,
                        color: secondaryColor,
                      )),
                )),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20, top: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                          ),
                          color: primaryColor,
                          height: 100,
                          width: 100,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20, top: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                          ),
                          color: primaryColor,
                          height: 100,
                          width: 100,
                        )
                      ],
                    )
                  ],
                );
              },
              childCount: 2,
            ),
          ),
        ],
      ),
    );
  }
}