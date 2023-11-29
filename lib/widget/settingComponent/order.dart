import 'package:ecommerce_app/themes/theme.dart';
import 'package:ecommerce_app/view/orderPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'detailOption.dart';

class Order extends StatelessWidget {
  final icon;
  final headerText;

  const Order({super.key, 
    required this.icon,
    required this.headerText
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
        width: screenWidth, height: 150,
        // color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () => Get.to(const OrderPage()),
              child: Container(
                  height: 45,
                  margin: const EdgeInsets.only(left: 12, right: 12 ,bottom: 5),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: const BoxDecoration(
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
                          const SizedBox(width: 7,),
                          Text(headerText,
                            style: settingBtnText
                          ),
                        ],
                      ),
                    ],
                  )
              ),
            ),
            Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.symmetric(horizontal: 12),
                height: 90,
                decoration: const BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.vertical(bottom: Radius.circular(7))
                ),
                child: const Column(
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
