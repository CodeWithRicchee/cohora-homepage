import 'package:cohora_homeui_web/helper/style.dart';
import 'package:cohora_homeui_web/models/interests.dart';
import 'package:flutter/material.dart';

class Interests extends StatelessWidget {
  const Interests({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
          color: lightBlue,
          borderRadius: BorderRadius.circular(7),
          boxShadow: shadows),
      margin: EdgeInsets.only(right: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 10, bottom: 15),
            child: Text(
              "Interests",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
          ListView.builder(
              shrinkWrap: true,
              itemCount: interestList.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 7),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 18,
                      backgroundImage: AssetImage(interestList[index].avatar),
                      backgroundColor: Colors.grey,
                    ),
                    title: Text(
                      interestList[index].name,
                      style: const TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 15),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0, bottom: 10),
                          child: Text(
                            interestList[index].desc,
                            style: const TextStyle(fontSize: 13),
                          ),
                        ),
                        Text(
                          interestList[index].time,
                          style: const TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                );
              }),
        ],
      ),
    );
  }
}
