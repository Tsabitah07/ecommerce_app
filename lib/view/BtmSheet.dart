import 'package:ecommerce_app/themes/theme.dart';
import 'package:flutter/material.dart';

class ProfilebtmSheet {
  static void show(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: Icon(Icons.edit),
                  title: Text("Edit text"),
                  // onTap: () {

                  // },
                ),
                ListTile(
                  leading: Icon(Icons.logout),
                  title: Text("Logout"),
                )
              ],
            ),
          );
        });
  }
}

class Wallet {
  static void show(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
              decoration: BoxDecoration(color: secondaryColor),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.monetization_on,
                      color: const Color.fromARGB(255, 118, 215, 121),
                    ),
                  )
                ],
              ));
        });
  }
}
