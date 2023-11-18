import 'package:ecommerce_app/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/model/data_model.dart';

final List<Widget> imageSliders = HOTSALE.map((item) {
  if (item["img"] != null && item["name"] != null) {
    return Container(
      child: Container(
        margin: EdgeInsets.all(5.0),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          child: Stack(
            children: <Widget>[
              Image.network(item["img"]!, fit: BoxFit.cover, width: 1000.0),
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
                  child: Text(item["name"]!,
                      style: MiniImportant(color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  } else {
    return Container();
  }
}).toList();
