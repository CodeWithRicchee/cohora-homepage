import 'package:cohora_homeui_web/services/products.dart';
import 'package:cohora_homeui_web/viewmodels/products/products_vm.dart';
import 'package:flutter/material.dart';

class ProductsListVM extends ChangeNotifier {
  List<ProductViewModel> products = <ProductViewModel>[];
  int? count;
  Future<void> fetchProducts() async {
    final results = await ProductApi().fetchProducts();
    products = results!.map((e) => ProductViewModel(items: e)).toList();

    notifyListeners();
  }
}
