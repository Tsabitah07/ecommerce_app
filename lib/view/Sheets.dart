import 'package:ecommerce_app/themes/theme.dart';
import 'package:flutter/material.dart';

class Wishlist {
  static void show(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 650,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: secondaryColor,
            ),
            child: Column(
              children: [
                ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.only(top: 12.0, left: 10),
                    child: Text(
                      "Wishlist",
                      style: Headers(color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 80.0,
                    top: 10,
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }
}