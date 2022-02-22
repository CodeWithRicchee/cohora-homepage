import 'package:cohora_homeui_web/widgets/brandposts.dart';
import 'package:cohora_homeui_web/widgets/interest.dart';
import 'package:cohora_homeui_web/widgets/quizes_survey.dart';
import 'package:cohora_homeui_web/widgets/welcome.dart';
import 'package:flutter/material.dart';

class SidePanel extends StatelessWidget {
  const SidePanel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 3),
      height: MediaQuery.of(context).size.height * 0.85,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              Welcome(),
              QuizesAndSurvey(),
              BrandPost(),
              Interests()
            ],
          ),
        ],
      ),
    );
  }
}