import 'package:cohora_homeui_web/helper/style.dart';
import 'package:cohora_homeui_web/services/products.dart';
import 'package:cohora_homeui_web/utils/post_button.dart';
import 'package:cohora_homeui_web/utils/svgicon.dart';
import 'package:cohora_homeui_web/viewmodels/posts/posts_list_vm.dart';
import 'package:cohora_homeui_web/viewmodels/products/product_list_vm.dart';
import 'package:cohora_homeui_web/viewmodels/products/products_vm.dart';
import 'package:cohora_homeui_web/widgets/brandposts.dart';
import 'package:cohora_homeui_web/widgets/chatroom.dart';
import 'package:cohora_homeui_web/widgets/choicechip.dart';
import 'package:cohora_homeui_web/widgets/contests.dart';
import 'package:cohora_homeui_web/widgets/header.dart';
import 'package:cohora_homeui_web/widgets/hottest_product.dart';
import 'package:cohora_homeui_web/widgets/influencers.dart';
import 'package:cohora_homeui_web/widgets/interest.dart';
import 'package:cohora_homeui_web/widgets/postslist.dart';
import 'package:cohora_homeui_web/widgets/quizes_survey.dart';
import 'package:cohora_homeui_web/widgets/welcome.dart';
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
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            const Header(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    flex: 7,
                    child: Container(
                      margin: const EdgeInsets.only(right: 3),
                      height: MediaQuery.of(context).size.height * 0.85,
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: const [
                              Welcome(),
                              QuizesAndSurvey(),
                              BrandPost(),
                              Interests()
                            ],
                          ),
                        ],
                      ),
                    )),
                Expanded(
                    flex: 9,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      height: MediaQuery.of(context).size.height * 0.86,
                      child: Column(
                        children: [
                          const ChoiceChipSelector(),
                          Expanded(
                            child: ListView(
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              children: [
                                const PostButton(),
                                PostsList(posts: postvm.post)
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
                Expanded(
                    flex: 7,
                    child: Container(
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
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
