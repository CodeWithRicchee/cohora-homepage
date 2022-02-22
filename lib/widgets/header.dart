import 'package:cohora_homeui_web/helper/style.dart';
import 'package:cohora_homeui_web/responsive.dart';
import 'package:cohora_homeui_web/screens/homescreen/components/mobile_brands.dart';
import 'package:cohora_homeui_web/screens/homescreen/components/mobile_message_list.dart';
import 'package:cohora_homeui_web/screens/homescreen/components/mobile_profile_view.dart';
import 'package:cohora_homeui_web/utils/svgicon.dart';
import 'package:cohora_homeui_web/viewmodels/products/product_list_vm.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Header extends StatelessWidget {
  const Header({Key? key, required this.productsListVM}) : super(key: key);
  final ProductsListVM productsListVM;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        margin: EdgeInsets.only(
            left: 10,
            right: 10,
            top: 8,
            bottom: Responsive.isMobile(context) ? 0 : 13),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        width: Responsive.isMobile(context) ? size.width : 1165,
        height: 65,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: shadows),
        child: Row(
          // mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/header/RB32.png"),
            const SizedBox(width: 10),
            Responsive.isMobile(context) ? const Spacer() : Container(),
            Responsive.isMobile(context)
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7.0),
                    child: svgSearchIcons("assets/icons/search_icon.svg"),
                  )
                : Container(
                    height: 48,
                    width: 355.41,
                    padding: const EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                        color: lightBlue,
                        borderRadius: BorderRadius.circular(24)),
                    child: TextField(
                      style: const TextStyle(color: Colors.blueGrey),
                      decoration: InputDecoration(
                        prefixIcon: GestureDetector(
                            onTap: () {},
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: svgSearchIcons(
                                  "assets/icons/search_icon.svg"),
                            )),
                        hintText: "Enter Search",
                        hintStyle: const TextStyle(color: Colors.grey),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
            Responsive.isDesktop(context) ? const Spacer() : Container(),
            Responsive.isMobile(context)
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7.0),
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ListenableProvider<ProductsListVM>.value(
                                        value: productsListVM,
                                        child: MobileBrands(
                                            productsListVm: productsListVM),
                                      )));
                        },
                        child: svgPostIcons("assets/header/Handbag.svg")),
                  )
                : Container(
                    width: 131,
                    height: 40,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 247, 209, 1),
                        borderRadius: BorderRadius.circular(24)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text("Shopbuzz"),
                        const SizedBox(width: 7),
                        svgPostIcons("assets/header/Handbag.svg")
                      ],
                    ),
                  ),
            const SizedBox(width: 10),
            InkWell(
              onTap: () {
                if (Responsive.isMobile(context)) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MobileMessageList()));
                }
              },
              child: svgPostIcons("assets/header/BellSimple.svg"),
            ),
            const SizedBox(width: 10),
            InkWell(
                onTap: () {
                  if (Responsive.isMobile(context)) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MobileProfileView()));
                  }
                },
                child: Image.asset("assets/header/Albert.png"))
          ],
        ),
      ),
    );
  }
}
