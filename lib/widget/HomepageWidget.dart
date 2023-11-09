import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app/themes/imageLists.dart';
import 'package:ecommerce_app/themes/theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HompageView extends StatefulWidget {
  const HompageView({super.key});

  @override
  State<HompageView> createState() => _HompageViewState();
}

class _HompageViewState extends State<HompageView> {
  @override
  Widget build(BuildContext context) {
    // Get screen width and height using MediaQuery
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Define responsive constants
    final searchContainerWidth = screenWidth > 600 ? 400.0 : 300.0;
    final categoryContainerSize = screenWidth > 600 ? 85.0 : 65.0;
    final catalogContainerWidth = screenWidth > 600 ? 150.0 : 120.0;

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
              height: 40,
            ),
            Text(
              "Category's",
              style: Headers(color: Colors.black),
            ),
            SizedBox(
              height: 15,
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
                          padding: const EdgeInsets.all(25.0),
                          child: Container(
                            height: categoryContainerSize,
                            width: categoryContainerSize,
                            decoration: BoxDecoration(
                              color: primaryColor, // Change color as needed
                              borderRadius: BorderRadius.circular(10),
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
                          padding: const EdgeInsets.all(25.0),
                          child: Container(
                            height: categoryContainerSize,
                            width: categoryContainerSize,
                            decoration: BoxDecoration(
                              color: primaryColor, // Change color as needed
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 75,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text("Catalog",
                      style:
                          Headers(color: Colors.black) // Change style as needed
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
              height: 50,
            ),
            Center(
              child: Stack(
                children: [
                  Container(
                    child: CarouselSlider(
                      options: CarouselOptions(
                        autoPlay: true,
                        enlargeCenterPage: true,
                      ),
                      items: imageSliders,
                    ),
                  ),
                  Text(
                    "HOT SALES",
                    style: MiniImportant(color: Colors.black),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
