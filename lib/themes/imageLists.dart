import 'package:ecommerce_app/model/img_item.dart';
import 'package:ecommerce_app/themes/theme.dart';
import 'package:ecommerce_app/view/DetailProduct.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final List<Widget> imageSliders = hotsales.map((item) {
  return InkWell(
    onTap: () {
      Get.to(DetailPage(), arguments: item);
    },
    child: Container(
      child: Container(
        margin: EdgeInsets.all(5.0),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          child: Stack(
            children: <Widget>[
              Image.network(item["product_image"]!,
                  fit: BoxFit.cover, width: 1000.0),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(200, 0, 0, 0),
                        Color.fromARGB(0, 0, 0, 0)
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                  child: Text(item["product_name"]!,
                      style: MiniImportant(color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}).toList();
