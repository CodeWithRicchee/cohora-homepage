import 'package:cohora_homeui_web/utils/svgicon.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomeBottomNavigationBar extends StatelessWidget {
  const HomeBottomNavigationBar({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      height: 60,
      backgroundColor: Colors.transparent,
      animationDuration: const Duration(milliseconds: 350),
      buttonBackgroundColor: Colors.black,
      index: index,
      items: [
        svgPostIcons("assets/navigationbar/bottom_house.svg"),
        svgPostIcons("assets/navigationbar/bottom_currency.svg"),
        const Icon(
          Icons.add_circle_outline,
          color: Colors.grey,
        ),
        svgPostIcons("assets/navigationbar/bottom_handbag.svg"),
        svgPostIcons("assets/navigationbar/bottom_four_squares.svg"),
      ],
    );
  }
}
