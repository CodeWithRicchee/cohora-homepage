import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;

  final Widget desktop;

  const Responsive({
    Key? key,
    required this.mobile,
    required this.desktop,
  }) : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 650;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 950;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      //desktop
      builder: (context, constraints) {
        if (constraints.maxWidth >= 950) {
          return desktop;
        }

        //mobile
        else {
          return mobile;
        }
      },
    );
  }
}
