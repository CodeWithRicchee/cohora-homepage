import 'package:cohora_homeui_web/screens/homescreen/homescreen_panels/navigationbar.dart';
import 'package:cohora_homeui_web/widgets/chatroom.dart';
import 'package:cohora_homeui_web/widgets/influencers.dart';
import 'package:flutter/material.dart';

class MobileMessageList extends StatelessWidget {
  const MobileMessageList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: HomeBottomNavigationBar(index: 2),
      body: Column(
        children: [
          ChatRoom(),
          Influencers(),
        ],
      ),
    );
  }
}
