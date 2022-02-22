import 'package:cohora_homeui_web/helper/style.dart';
import 'package:cohora_homeui_web/responsive.dart';
import 'package:cohora_homeui_web/utils/svgicon.dart';
import 'package:cohora_homeui_web/widgets/welcome/welcome_tile_avatar.dart';
import 'package:cohora_homeui_web/widgets/welcome/welcome_tile_chip.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.topCenter,
      width: Responsive.isMobile(context) ? size.width : 310,
      margin: Responsive.isMobile(context)
          ? EdgeInsets.symmetric(horizontal: 20, vertical: 5)
          : const EdgeInsets.only(bottom: 15, right: 3, top: 5),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: shadows),
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: Responsive.isMobile(context)
            ? CrossAxisAlignment.stretch
            : CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Welcome to the community",
                style: GoogleFonts.workSans(
                    textStyle: const TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -1)),
              ),
              const Spacer(),
              Responsive.isMobile(context)
                  ? InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: svgPostIcons("assets/icons/CaretDoubleDown.svg"))
                  : Container(),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text("People online :",
                  style: TextStyle(color: Colors.black, fontSize: 16)),
              Text(
                " 1200",
                style: TextStyle(color: Colors.blue, fontSize: 14),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              CircleAvatar(
                child: Image.asset("assets/welcome/Background.png"),
              ),
              const SizedBox(width: 10),
              const Text(
                "Sormy Curpen",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 17.0),
            child: Column(
              children: const [
                WelcomeTileAvatar(
                    icon: "Users",
                    name: "Freinds",
                    count: "150",
                    avatar: "Photo"),
                WelcomeTileAvatar(
                    icon: "UserCircle",
                    name: "Followers",
                    count: "69",
                    avatar: "Photo1"),
                WelcomeTileChip(
                    icon: "EnvelopeSimple", name: "Messages", count: "11"),
                WelcomeTileChip(
                    icon: "CurrencyCircleDollar",
                    name: "Loyalty coins",
                    count: "500"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
