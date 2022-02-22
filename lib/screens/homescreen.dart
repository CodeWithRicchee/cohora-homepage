import 'package:cohora_homeui_web/responsive.dart';
import 'package:cohora_homeui_web/screens/homescreen/homescreen_panels/center_panel.dart';
import 'package:cohora_homeui_web/screens/homescreen/homescreen_panels/navigationbar.dart';
import 'package:cohora_homeui_web/screens/homescreen/homescreen_panels/right_panel.dart';
import 'package:cohora_homeui_web/screens/homescreen/homescreen_panels/side_panel.dart';
import 'package:cohora_homeui_web/services/products.dart';
import 'package:cohora_homeui_web/utils/svgicon.dart';
import 'package:cohora_homeui_web/viewmodels/posts/posts_list_vm.dart';
import 'package:cohora_homeui_web/viewmodels/products/product_list_vm.dart';
import 'package:cohora_homeui_web/widgets/brandposts.dart';
import 'package:cohora_homeui_web/widgets/choicechip.dart';
import 'package:cohora_homeui_web/widgets/header.dart';
import 'package:cohora_homeui_web/widgets/hottest_product.dart';
import 'package:cohora_homeui_web/widgets/postslist.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    Provider.of<PostsListVM>(context, listen: false).fetchPosts();
    Provider.of<ProductsListVM>(context, listen: false).fetchProducts();
    ProductApi().fetchProducts();
    ProductsListVM().fetchProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final postvm = Provider.of<PostsListVM>(context);
    final productvm = Provider.of<ProductsListVM>(context);
    int index = 2;
    return Scaffold(
        extendBody: true,
        bottomNavigationBar: Responsive.isMobile(context)
            ? HomeBottomNavigationBar(index: index)
            : Container(
                height: 0,
              ),
        body: Responsive(
          mobile: Column(
            children: [
              Header(productsListVM: productvm),
              const ChoiceChipSelector(),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  children: [
                    const BrandPost(),
                    HottestProduct(products: productvm.products),
                    PostsList(posts: postvm.post)
                  ],
                ),
              ),
            ],
          ),
          desktop: Container(
            color: Colors.white,
            child: Column(
              children: [
                Header(productsListVM: productvm),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Expanded(
                      flex: 7,
                      child: SidePanel(),
                    ),
                    Expanded(
                      flex: 9,
                      child: CenterPanel(postvm: postvm),
                    ),
                    Expanded(
                      flex: 7,
                      child: RightPanel(productvm: productvm),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
