import 'package:cohora_homeui_web/services/apiservices.dart';
import 'package:cohora_homeui_web/viewmodels/posts/post_vm.dart';
import 'package:flutter/material.dart';

class PostsListVM extends ChangeNotifier {
  List<PostViewModel> post = <PostViewModel>[];
  int? count;
  Future<void> fetchPosts() async {
    final results = await SearchApi().fetchPosts();
    post = results!.map((e) => PostViewModel(posts: e)).toList();
    notifyListeners();
  }
}
