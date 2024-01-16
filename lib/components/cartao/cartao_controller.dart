import 'package:get/state_manager.dart';
import 'package:get_dependency/utils/snackbars.dart';

class CardController extends GetxController {
  var counter = 0.obs;

  increment() => counter++;

  decrement(String itemName) {
    if(counter.value > 0) {
      counter--;
      showSnackbarRemoveItem(itemName);
    }
  }
}
