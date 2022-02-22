import 'package:cohora_homeui_web/utils/svgicon.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeTileChip extends StatelessWidget {
  final String icon;
  final String name;
  final String count;
  const WelcomeTileChip({
    Key? key,
    required this.name,
    required this.count,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      margin: const EdgeInsets.symmetric(vertical: 3),
      width: 239,
      height: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: const Color.fromRGBO(245, 250, 254, 1)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          svgPostIcons("assets/welcome/$icon.svg"),
          const SizedBox(width: 8),
          Text(
            name,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
          ),
          const Spacer(),
          Chip(
            label: Text(count,
                style: GoogleFonts.openSans(
                  textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w600),
                )),
            backgroundColor: const Color.fromRGBO(255, 153, 51, 1),
          )
        ],
      ),
    );
  }
}
