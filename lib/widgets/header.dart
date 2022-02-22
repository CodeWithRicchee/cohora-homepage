import 'package:cohora_homeui_web/helper/style.dart';
import 'package:cohora_homeui_web/utils/svgicon.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(left: 10, right: 10, top: 8, bottom: 13),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        width: 1165,
        height: 65,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: shadows),
        child: Row(
          // mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset("assets/header/RB32.png"),
            const SizedBox(width: 10),
            Container(
              height: 48,
              width: 355.41,
              padding: const EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(245, 250, 254, 1),
                  borderRadius: BorderRadius.circular(24)),
              child: TextField(
                style: const TextStyle(color: Colors.blueGrey),
                decoration: InputDecoration(
                  prefixIcon: GestureDetector(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: svgSearchIcons("assets/icons/search_icon.svg"),
                      )),
                  hintText: "Enter Search",
                  hintStyle: const TextStyle(color: Colors.grey),
                  border: InputBorder.none,
                ),
              ),
            ),
            const Spacer(),
            Container(
              width: 131,
              height: 40,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 247, 209, 1),
                  borderRadius: BorderRadius.circular(24)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text("Shopbuzz"),
                  const SizedBox(width: 5),
                  svgPostIcons("assets/header/Handbag.svg")
                ],
              ),
            ),
            const SizedBox(width: 10),
            svgPostIcons("assets/header/BellSimple.svg"),
            const SizedBox(width: 10),
            Image.asset("assets/header/Albert.png")
          ],
        ),
      ),
    );
  }
}
