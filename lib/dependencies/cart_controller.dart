import 'package:get/state_manager.dart';
import 'package:get_dependency/models/item.dart';

class CartController extends GetxController {
  var cart = [].obs;

  void addItemToCart(Item item) {
    cart.add(item);
  }

  void removeItemFromCart(Item item) {
    cart.remove(item);
  }
}
