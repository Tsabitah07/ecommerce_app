import 'package:ecommerce_app/controller/DetailController.dart';
import 'package:ecommerce_app/model/data_model.dart';
import 'package:ecommerce_app/themes/theme.dart';
import 'package:ecommerce_app/view/checkoutPage.dart';
import 'package:flutter/material.dart';
import 'Sheets.dart';
import 'package:get/get.dart';

class DetailPage extends StatelessWidget {
   DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final argument = Get.arguments as Map<String, dynamic>? ?? {};

    final DetailController controller = Get.put(DetailController());

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:  EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding:  EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color:  Color(0xFFF5F9FD),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color:  Color(0xFF475269).withOpacity(0.3),
                              blurRadius: 5,
                              spreadRadius: 1,
                            ),
                          ],
                        ),
                        child:  Icon(
                          Icons.arrow_back,
                          size: 30,
                          color: Color(0xFF475269),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        // Toggle product in wishlist
                        Product product = Product(
                          productName: argument["product_name"] as String,
                          productImage: argument["product_image"] as String,
                          description: argument["description"] as String,
                          price: argument["price"] as double,
                          brand: argument["brand"],
                          productType: argument["product_type"],
                          productSize: argument["product_size"],
                          stock: argument["stock"],
                        );
                        controller.toggleWishlist(product);

                        // Show wishlist modal
                        Wishlist.show(context);
                      },
                      child: Container(
                        padding:  EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color:  Color(0xFFF5F9FD),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color:  Color(0xFF475269).withOpacity(0.3),
                              blurRadius: 5,
                              spreadRadius: 1,
                            ),
                          ],
                        ),
                        child:  Icon(
                          Icons.favorite,
                          size: 30,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
               SizedBox(height: 15),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.network(
                      argument["product_image"] as String,
                      height: 350,
                      width: 350,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                width: double.infinity,
                padding:  EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                decoration: BoxDecoration(
                  color:  Color(0xFFF5F9FD),
                  borderRadius:  BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color:  Color(0xFF475269).withOpacity(0.5),
                      blurRadius: 10,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      argument["product_name"] as String,
                      style:  TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                      ),
                    ),
                     SizedBox(height: 15),
                    Text(
                      argument["description"] as String,
                      style:  TextStyle(
                        color: Color(0xFF475269),
                        fontSize: 17,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                     SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${argument["price"]}",
                          style:  TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            color: linear2,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: primaryColor),
                          onPressed: () {
                            Product product = Product(
                              productName: argument["product_name"] as String,
                              productImage: argument["product_image"] as String,
                              description: argument["description"] as String,
                              price: argument["price"] as double,
                              brand: argument["brand"],
                              productType: argument["product_type"],
                              productSize: argument["product_size"],
                              stock: argument["stock"],
                            );
                            controller.addToProductList(product);
                            Get.to( CheckoutPage());
                          },
                          child:  Text("Buy Now"),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
