import 'package:cached_network_image/cached_network_image.dart';
import 'package:cohora_homeui_web/helper/formatter.dart';
import 'package:cohora_homeui_web/helper/style.dart';
import 'package:cohora_homeui_web/utils/svgicon.dart';
import 'package:cohora_homeui_web/viewmodels/posts/post_vm.dart';

import 'package:flutter/material.dart';

class PostsList extends StatelessWidget {
  const PostsList({Key? key, required this.posts}) : super(key: key);
  final List<PostViewModel> posts;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: posts.length,
      itemBuilder: (context, index) {
        final post = posts[index];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 3.0),
          child: GestureDetector(
            onTap: () {
              launchURL(post.viewUrl);
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Card(
                elevation: 2.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ListTile(
                      title: Text(
                        post.name,
                        style: boldTitle,
                      ),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(post.photoUrl),
                      ),
                      subtitle: Text(timeAgo(post.timeAgo)),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          svgPostIcons("assets/icons/share.svg"),
                          const SizedBox(width: 15),
                          svgPostIcons("assets/icons/three_dots.svg"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 8),
                      child: Text(
                        parseHtmlString(post.description),
                        maxLines: 3,
                      ),
                    ),
                    SizedBox(
                      // width: 500,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: CachedNetworkImage(
                            imageUrl: post.assetUrl,
                            fit: BoxFit.fill,
                            placeholder: (context, url) => const SizedBox(
                              height: 200,
                              child: Center(child: Text("Video/GIF")),
                            ),
                            errorWidget: (context, url, error) =>
                                Image.network(imageUrl),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15)
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
