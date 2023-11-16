import 'package:ecommerce_app/view/Sheets.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/themes/theme.dart';
import 'package:ecommerce_app/controller/AppBarController.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

class AppbarView extends StatelessWidget {
  final MyAppBarController myController = Get.put(MyAppBarController());

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final searchContainerWidth = screenWidth > 400 ? 200.0 : 150.0;

    return Scaffold(
      appBar: AppBar(
        title: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5, right: 0),
              child: AppBar(
                backgroundColor: secondaryColor,
                elevation: 0,
                titleSpacing: 0,
                title: Row(
                  children: [
                    Stack(
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
                            color: secondaryColor,
                            size: 40,
                          ),
                        ),
                      ],
                    ),
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
                            fontSize: 100,
                            // height: 2,
                            fontWeight: FontWeight.w600,
                            color: primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5, right: 0),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 22,
                      child: IconButton(
                        onPressed: () {
                          Wishlist.show(context);
                        },
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
            AnimatedOpacity(
              opacity: myController.showTitle.value ? 0 : 1,
              duration: Duration(milliseconds: 110),
              child: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: AppBar(
                  backgroundColor: Colors.white,
                  elevation: 0,
                  title: Row(
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
          ],
        ),
      ),
    );
  }
}
