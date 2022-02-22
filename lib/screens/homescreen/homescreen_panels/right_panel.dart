import 'package:cohora_homeui_web/viewmodels/products/product_list_vm.dart';
import 'package:cohora_homeui_web/widgets/chatroom.dart';
import 'package:cohora_homeui_web/widgets/contests.dart';
import 'package:cohora_homeui_web/widgets/hottest_product.dart';
import 'package:cohora_homeui_web/widgets/influencers.dart';
import 'package:flutter/material.dart';

class RightPanel extends StatelessWidget {
  const RightPanel({
    Key? key,
    required this.productvm,
  }) : super(key: key);

  final ProductsListVM productvm;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 3),
      height: MediaQuery.of(context).size.height * 0.85,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HottestProduct(products: productvm.products),
              const Influencers(),
              const Contests(),
              const ChatRoom(),
            ],
          )
        ],
      ),
    );
  }
}
