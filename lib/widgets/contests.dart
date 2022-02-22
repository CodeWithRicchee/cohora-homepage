import 'package:cohora_homeui_web/responsive.dart';
import 'package:flutter/material.dart';

class Contests extends StatelessWidget {
  const Contests({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: Responsive.isMobile(context) ? 180 : 160,
      width: Responsive.isMobile(context) ? size.width - 50 : 320,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Image.asset(
        "assets/contests/contests.png",
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
