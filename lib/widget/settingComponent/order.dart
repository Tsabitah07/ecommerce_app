import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'detailOption.dart';

class Order extends StatelessWidget {
  final icon;
  final headerText;

  const Order({
    required this.icon,
    required this.headerText
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
        width: screenWidth, height: 150,
        // color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: (){},
              child: Container(
                  height: 45,
                  margin: EdgeInsets.only(left: 12, right: 12 ,bottom: 5),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.vertical(top: Radius.circular(7))
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Icon(icon,
                            size: 30,
                          ),
                          SizedBox(width: 7,),
                          Text(headerText,
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
              ),
            ),
            Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(horizontal: 12),
                height: 90,
                decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.vertical(bottom: Radius.circular(7))
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        DetailOption(icon: Icons.wallet, text: "Belum Bayar",),
                        DetailOption(icon: Icons.indeterminate_check_box, text: "Dikemas",),
                        DetailOption(icon: Icons.fire_truck, text: "Dikirim",),
                        DetailOption(icon: Icons.stars, text: "Rating",),
                      ],
                    ),
                  ],
                )
            )
          ],
        )
    );
  }
}
