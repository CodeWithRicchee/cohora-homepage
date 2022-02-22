import 'package:cohora_homeui_web/helper/style.dart';
import 'package:cohora_homeui_web/models/influencers.dart';
import 'package:flutter/material.dart';

class Influencers extends StatelessWidget {
  const Influencers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310,
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      padding: EdgeInsets.only(top: 13),
      decoration: BoxDecoration(
          boxShadow: shadows,
          color: lightBlue,
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Follow The Influencers ",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: influencersList.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: shadows,
                    borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 18,
                    backgroundImage: AssetImage(influencersList[index].avatar),
                    backgroundColor: Colors.grey,
                  ),
                  title: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        influencersList[index].name,
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(width: 3),
                      Image.asset("assets/inflencers/Vector.png"),
                      const Spacer(),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(influencersList[index].button),
                        style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
          const Padding(
            padding: EdgeInsets.only(left: 13.0, top: 17, bottom: 8),
            child: Text(
              "Show more",
              style: TextStyle(color: Colors.blue),
            ),
          )
        ],
      ),
    );
  }
}
