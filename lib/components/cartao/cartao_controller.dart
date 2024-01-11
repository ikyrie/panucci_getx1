import 'package:get/state_manager.dart';

class CardController extends GetxController {
  var counter = 0.obs;

  increment() => counter++;

  decrement() {
    if(counter.value > 0) {
      counter--;
    }
  }
}
