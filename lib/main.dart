import 'package:cohora_homeui_web/screens/homescreen.dart';
import 'package:cohora_homeui_web/screens/homescreen/components/mobile_brands.dart';
import 'package:cohora_homeui_web/viewmodels/posts/posts_list_vm.dart';
import 'package:cohora_homeui_web/viewmodels/products/product_list_vm.dart';
import 'package:cohora_homeui_web/viewmodels/selectedchip.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: GoogleFonts.rubikTextTheme(
            Theme.of(context)
                .textTheme, // If this is not set, then ThemeData.light().textTheme is used.
          ),
        ),
        home: MultiProvider(
          providers: [
            ChangeNotifierProvider<SelectedChip>(
                create: (BuildContext context) {
              return SelectedChip();
            }),
            ChangeNotifierProvider<PostsListVM>(create: (BuildContext context) {
              return PostsListVM();
            }),
            ChangeNotifierProvider<ProductsListVM>(
                create: (BuildContext context) {
              return ProductsListVM();
            }),
          ],
          child: HomeScreen(),
        ));
  }
}
