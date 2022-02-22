import 'package:cohora_homeui_web/screens/homescreen/homescreen_panels/navigationbar.dart';
import 'package:cohora_homeui_web/utils/svgicon.dart';
import 'package:cohora_homeui_web/viewmodels/products/product_list_vm.dart';
import 'package:cohora_homeui_web/widgets/brandposts.dart';
import 'package:cohora_homeui_web/widgets/hottest_product.dart';
import 'package:flutter/material.dart';

class MobileBrands extends StatefulWidget {
  const MobileBrands({Key? key, required this.productsListVm})
      : super(key: key);
  final ProductsListVM productsListVm;
  @override
  State<MobileBrands> createState() => _MobileBrandsState();
}

class _MobileBrandsState extends State<MobileBrands> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: HomeBottomNavigationBar(index: 2),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
        actions: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: svgPostIcons("assets/icons/CaretDoubleDown.svg"),
          ),
          const SizedBox(
            width: 15,
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          HottestProduct(products: widget.productsListVm.products),
          const BrandPost(),
        ],
      ),
    );
  }
}
