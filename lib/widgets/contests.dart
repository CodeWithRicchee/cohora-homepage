import 'package:flutter/material.dart';

class Contests extends StatelessWidget {
  const Contests({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 320,
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
