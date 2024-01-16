import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_dependency/components/item_list.dart';
import 'package:get_dependency/dependencies/cart_controller.dart';
import '../components/categoria_text.dart';
import '../components/search_input.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final TextEditingController searchTextController = TextEditingController();
  final CartController cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
                child: SearchInput(searchTextController: searchTextController)),
            const SliverToBoxAdapter(
                child: CategoriaText(titulo: "Mais comprados")),
            const SliverToBoxAdapter(
              child: ItemList(categoria: "mais comprados"),
            ),
            const SliverToBoxAdapter(
                child: CategoriaText(titulo: "Para o almoço")),
            const SliverToBoxAdapter(
              child: ItemList(categoria: "para o almoço"),
            ),
            const SliverToBoxAdapter(
                child: CategoriaText(titulo: "Para dividir")),
            const SliverToBoxAdapter(
              child: ItemList(categoria: "para dividir"),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: InkWell(
                  onTap: () {

                  },
                  child: Ink(
                      width: double.infinity,
                      height: 80,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.surfaceTint,
                          borderRadius:
                              const BorderRadius.vertical(top: Radius.circular(10))),
                      child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Obx(
                                      () => Text(
                                        "${cartController.cart.length}",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: 
                                            Theme.of(context).colorScheme.onPrimary),
                                      ),
                                    ),
                                  ),
                                  Icon(
                                    Icons.shopping_basket_outlined,
                                    size: 24,
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
                                  )
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Ver carrinho",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: 
                                    Theme.of(context).colorScheme.onPrimary),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Obx(
                                () => Text(
                                  "R\$ ${cartController.total.toStringAsFixed(2)}",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color:
                                      Theme.of(context).colorScheme.onPrimary),
                                ),
                              ),
                            ),
                          ])),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


