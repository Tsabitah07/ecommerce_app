import 'package:ecommerce_app/themes/theme.dart';
import 'package:ecommerce_app/view/CheckoutView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ecommerce_app/controller/DetailController.dart';

import '../widget/conformCheckoutBtn.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecommerce_app/controller/DetailController.dart';

class CheckoutPage extends StatelessWidget {
  final DetailController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Cart',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: controller.productList.length,
                itemBuilder: (context, index) {
                  var product = controller.productList[index];
                  return Card(
                    elevation: 3,
                    margin: EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      contentPadding: EdgeInsets.all(16),
                      title: Text(
                        product.productName,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 8),
                          Text(
                            'Price: \$${product.price}',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                      leading: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage(product.productImage),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(CheckoutView());
              },
              child: Text('Proceed to Checkout'),
            ),
          ],
        ),
      ),
    );
  }
}


// class CheckoutPage extends StatelessWidget {
//   const CheckoutPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: linear2,
//         title: Text("Checkout",
//           style: appBarText,
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Container(
//               padding: EdgeInsets.all(15),
//               child: Text("Your Order",
//                 style: GoogleFonts.poppins(
//                   fontSize: 15,
//                   fontWeight: FontWeight.w500
//                 ),
//               ),
//             ),
//             // ListView.builder(
//             //     itemBuilder: (BuildContext context, int index){
//             //       return ListTile();
//             //     },
//             // )
//           ],
//         ),
//       ),
//       bottomNavigationBar: InkWell(
//         onTap: () => Get.off(SuccesCheckoutPage()),
//           child: ConfirmCheckoutBtn()),
//     );
//   }
// }
