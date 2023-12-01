import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app/themes/imageLists.dart';
import 'package:ecommerce_app/themes/theme.dart';
import 'package:ecommerce_app/view/DetailProduct.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/model/data_model.dart';
import 'package:get/get.dart';

class HomepageView extends StatefulWidget {
  const HomepageView({super.key});

  @override
  State<HomepageView> createState() => _HompageViewState();
}

class _HompageViewState extends State<HomepageView> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Define responsive constants
    final searchContainerWidth = screenWidth > 600 ? 400.0 : 300.0;
    final categoryContainerSize = screenWidth > 600 ? 120.0 : 80.0;
    final catalogContainerWidth = screenWidth > 500 ? 220.0 : 180.0;

    return ListView(
      children: [
        Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "HOT SALE",
                  style: Headers(color: secondaryColor),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Stack(children: [
              Container(
                child: CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                  ),
                  items: imageSliders,
                ),
              ),
            ]),
            SizedBox(
              height: 60,
            ),
            SizedBox(
              height: 60,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Catalog",
                    style: Headers(color: secondaryColor),
                  ),
                ),
              ),
            ),
            Center(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (var i = 1; i < 9; i++)
                      InkWell(
                        onTap: () {
                          Get.to(DetailPage(), arguments: products[i]);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Stack(
                            children: [
                              Container(
                                width: catalogContainerWidth,
                                height: 250,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(products[i]
                                          ["product_image"] as String),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(20),
                                  color: primaryColor,
                                ),
                              ),
                              Container(
                                width: catalogContainerWidth,
                                height: 250,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  gradient: LinearGradient(
                                      colors: [
                                        Color.fromARGB(120, 0, 0, 0),
                                        Color.fromARGB(0, 0, 0, 0)
                                      ],
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter),
                                ),
                              ),
                              Container(
                                width: catalogContainerWidth,
                                height: 250,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                padding:
                                    const EdgeInsets.only(top: 180, left: 10),
                                child: Text(
                                  products[i]["product_name"] as String,
                                  style: MiniImportant(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            SizedBox(
              height: 60,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Recomeneded",
                    style: Headers(color: secondaryColor),
                  ),
                ),
              ),
            ),
            Center(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (var i = 2; i < 4; i++)
                        InkWell(
                          onTap: () {
                            Get.to(DetailPage(), arguments: products[i]);
                          },
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Stack(
                              children: [
                                Container(
                                  width: catalogContainerWidth,
                                  height: 250,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(products[i]
                                          ["product_image"] as String),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                    color: primaryColor,
                                  ),
                                ),
                                Container(
                                  width: catalogContainerWidth,
                                  height: 250,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    gradient: LinearGradient(
                                      colors: [
                                        Color.fromARGB(120, 0, 0, 0),
                                        Color.fromARGB(0, 0, 0, 0),
                                      ],
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (var i = 5; i < 7; i++)
                        InkWell(
                          onTap: () {
                            Get.to(DetailPage(), arguments: products[i]);
                          },
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Stack(
                              children: [
                                Container(
                                  width: catalogContainerWidth,
                                  height: 250,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(products[i]
                                          ["product_image"] as String),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                    color: primaryColor,
                                  ),
                                ),
                                Container(
                                  width: catalogContainerWidth,
                                  height: 250,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    gradient: LinearGradient(
                                      colors: [
                                        Color.fromARGB(120, 0, 0, 0),
                                        Color.fromARGB(0, 0, 0, 0),
                                      ],
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (var i = 7; i < 9; i++)
                        InkWell(
                          onTap: () {
                            Get.to(DetailPage(), arguments: products[i]);
                          },
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Stack(
                              children: [
                                Container(
                                  width: catalogContainerWidth,
                                  height: 250,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(products[i]
                                          ["product_image"] as String),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                    color: primaryColor,
                                  ),
                                ),
                                Container(
                                  width: catalogContainerWidth,
                                  height: 250,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    gradient: LinearGradient(
                                      colors: [
                                        Color.fromARGB(120, 0, 0, 0),
                                        Color.fromARGB(0, 0, 0, 0),
                                      ],
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                    ],
                  ),
                ]),
              ),
            )
          ],
        ),
      ],
    );
  }
}
