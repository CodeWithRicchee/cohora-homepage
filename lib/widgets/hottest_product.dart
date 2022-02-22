import 'package:cohora_homeui_web/helper/formatter.dart';
import 'package:cohora_homeui_web/models/hottest_product.dart';
import 'package:cohora_homeui_web/responsive.dart';
import 'package:cohora_homeui_web/viewmodels/products/products_vm.dart';
import 'package:cohora_homeui_web/widgets/hottest_product/indicator.dart';
import 'package:flutter/material.dart';

class HottestProduct extends StatefulWidget {
  const HottestProduct({Key? key, required this.products}) : super(key: key);
  final List<ProductViewModel> products;
  @override
  State<HottestProduct> createState() => _HottestProductState();
}

class _HottestProductState extends State<HottestProduct> {
  var selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    double length = widget.products.length / 2;
    Size size = MediaQuery.of(context).size;
    return Container(
      width: Responsive.isMobile(context) ? size.width : 310,
      padding: Responsive.isMobile(context)
          ? const EdgeInsets.symmetric(horizontal: 15)
          : const EdgeInsets.all(3),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 8.0, top: 8.0, bottom: 10),
            child: Text(
              "Hottest Products",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              height: 165,
              width: Responsive.isMobile(context) ? size.width : 310,
              alignment: Alignment.center,
              child: PageView.builder(
                physics: const BouncingScrollPhysics(),
                onPageChanged: (index) {
                  setState(() {
                    selectedindex = index ~/ 2;
                  });
                },
                padEnds: Responsive.isMobile(context) ? false : false,
                controller: PageController(viewportFraction: 0.33),
                scrollDirection: Axis.horizontal,
                itemCount: widget.products.length,
                itemBuilder: (context, index) {
                  final product = widget.products[index];
                  return SizedBox(
                    width: 100,
                    child: GestureDetector(
                      onTap: () {
                        launchURL(product.viewUrl);
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: Responsive.isMobile(context) ? 3 : 0),
                        child: Card(
                          elevation: 2.0,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 2),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 150,
                                  height: 95,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(18),
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: NetworkImage(
                                            product.thumbnailUrl.toString())),
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  product.productName,
                                  style: const TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const SizedBox(height: 5),
                                Row(
                                  children: [
                                    Text(
                                      product.productPriceDisplay,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    const Spacer(),
                                    Text(product.discountPriceDisplay,
                                        style: const TextStyle(
                                            fontSize: 11,
                                            color: Colors.grey,
                                            decoration:
                                                TextDecoration.lineThrough))
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                  length.toInt(),
                  (index) => Indicator(
                        isActive: selectedindex == index ? true : false,
                      ))
            ],
          )
        ],
      ),
    );
  }
}
