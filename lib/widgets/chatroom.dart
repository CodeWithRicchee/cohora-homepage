import 'package:cohora_homeui_web/helper/style.dart';
import 'package:cohora_homeui_web/models/chatrooms.dart';
import 'package:cohora_homeui_web/models/hottest_product.dart';
import 'package:cohora_homeui_web/utils/svgicon.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatRoom extends StatelessWidget {
  const ChatRoom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310,
      decoration: BoxDecoration(
          color: lightBlue,
          borderRadius: BorderRadius.circular(15),
          boxShadow: shadows),
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 17),
            child: Row(
              children: [
                const Text(
                  "Chat Rooms",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                const Spacer(),
                svgPostIcons("assets/icons/ArrowSquareOut.svg"),
                const SizedBox(width: 20),
                svgPostIcons("assets/icons/CaretDoubleDown.svg"),
              ],
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: chatList.length,
            itemBuilder: (context, index) {
              return Container(
                color: chatList[index].specialRoom == "Special"
                    ? const Color.fromRGBO(223, 237, 251, 1)
                    : Colors.transparent,
                child: ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: 18,
                          backgroundColor: chatList[index].avatar,
                        ),
                        Positioned(
                            bottom: -10,
                            left: 1,
                            child: Chip(
                                backgroundColor: Colors.white,
                                label: Text(
                                  "1",
                                  style: GoogleFonts.openSans(
                                      textStyle: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600)),
                                )))
                      ],
                    ),
                  ),
                  title: Text(
                    chatList[index].name,
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Text(
                      chatList[index].lastmessage,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                  ),
                  trailing: Text(
                    chatList[index].time,
                    style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
