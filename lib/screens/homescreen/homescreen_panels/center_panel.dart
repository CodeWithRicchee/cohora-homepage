

import 'package:cohora_homeui_web/utils/post_button.dart';
import 'package:cohora_homeui_web/viewmodels/posts/posts_list_vm.dart';
import 'package:cohora_homeui_web/widgets/choicechip.dart';
import 'package:cohora_homeui_web/widgets/postslist.dart';
import 'package:flutter/material.dart';

class CenterPanel extends StatelessWidget {
  const CenterPanel({
    Key? key,
    required this.postvm,
  }) : super(key: key);

  final PostsListVM postvm;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      height: MediaQuery.of(context).size.height * 0.86,
      child: Column(
        children: [
          const ChoiceChipSelector(),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [const PostButton(), PostsList(posts: postvm.post)],
            ),
          ),
        ],
      ),
    );
  }
}