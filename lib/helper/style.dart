import 'package:flutter/material.dart';

TextStyle get boldTitle {
  return const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );
}

List<BoxShadow> get shadows {
  return [
    BoxShadow(
        blurRadius: 1,
        color: Colors.black.withOpacity(0.05),
        // offset: const Offset(-1, 1),
        spreadRadius: 1)
  ];
}

Color get lightBlue {
  return Color.fromRGBO(245, 250, 254, 1);
}
