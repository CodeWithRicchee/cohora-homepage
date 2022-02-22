import 'package:cohora_homeui_web/utils/svgicon.dart';
import 'package:flutter/material.dart';

class WelcomeTileAvatar extends StatelessWidget {
  final String icon;
  final String name;
  final String count;
  final String avatar;
  const WelcomeTileAvatar({
    Key? key,
    required this.icon,
    required this.name,
    required this.count,
    required this.avatar,
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
          Spacer(),
          Text(count,
              style:
                  const TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
          const SizedBox(width: 5),
          Image.asset("assets/welcome/$avatar.png")
        ],
      ),
    );
  }
}
