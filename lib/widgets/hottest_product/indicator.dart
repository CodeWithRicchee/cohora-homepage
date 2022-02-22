import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  final bool isActive;
  const Indicator({
    Key? key,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2),
      width: 8,
      height: 8,
      decoration: BoxDecoration(
          color: isActive ? Colors.orange : Colors.grey,
          borderRadius: BorderRadius.circular(8)),
    );
  }
}
