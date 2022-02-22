import 'package:cohora_homeui_web/helper/style.dart';
import 'package:cohora_homeui_web/utils/svgicon.dart';
import 'package:flutter/material.dart';

class PostButton extends StatelessWidget {
  const PostButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
          horizontal: 25, vertical: 10),
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
          color: lightBlue,
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          svgPostIcons(
              "assets/icons/PlusCircle.svg"),
          const SizedBox(
            width: 5,
          ),
          const Text(
            "POST",
            style: TextStyle(color: Colors.blue),
          )
        ],
      ),
    );
  }
}