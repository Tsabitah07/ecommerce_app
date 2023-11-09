import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app/themes/imageLists.dart';
import 'package:ecommerce_app/themes/theme.dart';
import 'package:flutter/material.dart';

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
            Center(
              child: Stack(
                children: [
                  Container(
                    width: searchContainerWidth,
                    height: 60,
                    decoration: BoxDecoration(
                      color: secondaryColor, // Change color as needed
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  const Positioned(
                    height: 60,
                    left: 15,
                    child: Icon(
                      Icons.search_rounded,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                "Category's",
                style: Headers(color: secondaryColor),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            // Adjust category containers
            Center(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (var i = 0; i < 3; i++)
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: categoryContainerSize,
                            width: categoryContainerSize,
                            decoration: BoxDecoration(
                              color: primaryColor, // Change color as needed
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (var i = 0; i < 3; i++)
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: categoryContainerSize,
                            width: categoryContainerSize,
                            decoration: BoxDecoration(
                              color: primaryColor, // Change color as needed
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 60,
            ),
            SizedBox(
              height: 60,
              child: Center(
                child: Text("Catalog", style: Headers(color: secondaryColor)),
              ),
            ),
            Center(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (var i = 0; i < 4; i++)
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: catalogContainerWidth,
                          height: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: primaryColor, // Change color as needed
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
            )
          ],
        ),
      ],
    );
  }
}
