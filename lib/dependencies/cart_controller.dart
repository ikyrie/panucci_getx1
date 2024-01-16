import 'package:get/state_manager.dart';
import 'package:get_dependency/models/item.dart';

class CartController extends GetxController {
  RxList<Item> cart = <Item>[].obs;
  var total = 0.0.obs;

  void addItemToCart(Item item) {
    cart.add(item);
    updateTotal();
  }

  void removeItemFromCart(Item item) {
    cart.remove(item);
    updateTotal();
  }

  void updateTotal() {
    total.value = 0.0;
    for (var i = 0; i < cart.length; i++) {
      total.value += cart[i].preco;
    }
  }
}
