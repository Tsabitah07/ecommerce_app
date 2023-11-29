import 'package:ecommerce_app/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("My Order",
          style: appBarText,
        ),
        backgroundColor: linear2,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 60,
              color: linear2.withOpacity(.35),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      margin: const EdgeInsets.only(top: 7, bottom: 7, left: 8),
                      width: 135,
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Belum Bayar",
                              style: GoogleFonts.poppins(),
                            ),
                            const Icon(Icons.arrow_drop_down)
                          ],
                        ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 23),
                      margin: const EdgeInsets.only(top: 7, bottom: 7, left: 8),
                      width: 135,
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Dikemas",
                            style: GoogleFonts.poppins(),
                          ),
                          const Icon(Icons.arrow_drop_down)
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 29),
                      margin: const EdgeInsets.only(top: 7, bottom: 7, left: 8),
                      width: 135,
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Dikirim",
                            style: GoogleFonts.poppins(),
                          ),
                          const Icon(Icons.arrow_drop_down)
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 7),
                      width: 135,
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Rating",
                            style: GoogleFonts.poppins(),
                          ),
                          const Icon(Icons.arrow_drop_down)
                        ],
                      ),
                    ),
                  ],
                ),
            ),
            Center(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text("No Order Hostory",
                    style: profileDataText,
                  ),
                )
            )
          ],
        )
      ),
    );
  }
}
