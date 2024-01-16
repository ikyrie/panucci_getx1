import 'package:get/get.dart';

showSnackbarAddItem(String itemName) {
  return Get.showSnackbar(
    GetSnackBar(
      title: "Item adicionado",
      message: "$itemName adicionado ao carrinho!",
      duration: const Duration(seconds: 3),
    ),
  );
}

showSnackbarRemoveItem(String itemName) {
  return Get.showSnackbar(
    GetSnackBar(
      title: "Item adicionado",
      message: "$itemName removido do carrinho!",
      duration: const Duration(seconds: 3),
    ),
  );
}

showSnackbarPayment() {
  return Get.showSnackbar(
    const GetSnackBar(
      title: "Pedido realizado!",
      message: "Seu pedido chegará em breve!",
      duration: Duration(seconds: 3),
    ),
  );
}
