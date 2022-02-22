import 'package:cohora_homeui_web/screens/homescreen/homescreen_panels/navigationbar.dart';
import 'package:cohora_homeui_web/widgets/contests.dart';
import 'package:cohora_homeui_web/widgets/interest.dart';
import 'package:cohora_homeui_web/widgets/quizes_survey.dart';
import 'package:cohora_homeui_web/widgets/welcome.dart';
import 'package:flutter/material.dart';

class MobileProfileView extends StatelessWidget {
  const MobileProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: HomeBottomNavigationBar(index: 2),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: const [
            Welcome(),
            QuizesAndSurvey(),
            Contests(),
            Interests(),
          ],
        ),
      ),
    );
  }
}