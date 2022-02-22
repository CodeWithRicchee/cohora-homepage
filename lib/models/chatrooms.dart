import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chatroom {
  final Color avatar;
  final String name;
  final String lastmessage;
  final String time;
  String? specialRoom;

  Chatroom(this.avatar, this.name, this.lastmessage, this.time,
      [this.specialRoom = "normal"]);
}

List<Chatroom> chatList = [
  Chatroom(const Color.fromARGB(255, 240, 193, 105), "Special Room", "Hi there", "",
      "Special"),
  Chatroom(const Color.fromARGB(255, 122, 212, 169), "Chat Room 1",
      "Last message shown here", "12:35 PM"),
  Chatroom(
    const Color.fromARGB(255, 122, 212, 169),
    "Chat Room 2",
    "Last message shown here",
    "Yesterday",
  ),
  Chatroom(
    const Color.fromARGB(255, 122, 212, 169),
    "Chat Room 3",
    "Last message shown here",
    "3 days ago",
  ),
];
