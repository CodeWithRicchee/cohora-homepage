import 'package:cohora_homeui_web/models/brandposts.dart';
import 'package:flutter/material.dart';

class BrandPost extends StatelessWidget {
  const BrandPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 320,
        height: 160,
        margin: const EdgeInsets.symmetric(vertical: 10),
        // margin: const EdgeInsets.only(right: 25, left: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: PageView.builder(
            itemCount: brandPostList.length,
            padEnds: false,
            itemBuilder: (context, index) {
              return Center(
                child: Stack(
                  children: [
                    Container(
                      width: 300,
                      height: 150,
                      margin: const EdgeInsets.only(right: 20, left: 13),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image(
                          image: AssetImage(brandPostList[index].bgimgurl),
                          fit: BoxFit.fitWidth,
                          color: Colors.black.withOpacity(0.3),
                          colorBlendMode: BlendMode.darken,
                        ),
                      ),
                    ),
                    Positioned(
                        top: 20,
                        left: 20,
                        child: Container(
                            margin: const EdgeInsets.only(right: 25, left: 10),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CircleAvatar(
                                  radius: 18,
                                  backgroundImage:
                                      AssetImage(brandPostList[index].avatar),
                                  backgroundColor: Colors.grey,
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  brandPostList[index].brandName,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(
                                  width: 80,
                                ),
                                Text(
                                  brandPostList[index].time,
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 10),
                                )
                              ],
                            )))
                  ],
                ),
              );
            }),
      ),
    );
  }
}
