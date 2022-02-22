import 'package:cohora_homeui_web/helper/style.dart';
import 'package:flutter/material.dart';

class QuizesAndSurvey extends StatelessWidget {
  const QuizesAndSurvey({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 320,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: Image.asset(
        "assets/quizes/current contests.png",
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
