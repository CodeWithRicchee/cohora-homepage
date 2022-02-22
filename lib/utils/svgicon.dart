import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget svgPostIcons(String path) {
  return SizedBox(
    height: 24,
    width: 24,
    child: SvgPicture.asset(
      path,
    ),
  );
}

Widget svgSearchIcons(String path) {
  return SvgPicture.asset(
    path,
  );
}
