import 'package:get/get.dart';
import 'package:ecommerce_app/model/data_model.dart';

class DetailController extends GetxController {
  var productList = <Product>[].obs;
  var wishlist = <Product>[].obs;

  void addToProductList(Product product) {
    productList.add(product);
    update();
  }

  void toggleWishlist(Product product) {
    if (wishlist.contains(product)) {
      wishlist.remove(product);
    } else {
      wishlist.add(product);
    }
    update();
  }
}
