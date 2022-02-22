import 'package:cohora_homeui_web/models/profile.dart';

class PostViewModel {
  final Posts posts;

  PostViewModel({required this.posts});

  String get assetUrl {
    for (int i = 0; i < posts.assets!.length; i++) {
      return posts.assets![i].url.toString();
    }
    return "https://media.istockphoto.com/vectors/error-page-or-file-not-found-icon-vector-id924949200?k=20&m=924949200&s=170667a&w=0&h=-g01ME1udkojlHCZeoa1UnMkWZZppdIFHEKk6wMvxrs=";
  }

  String get name {
    return posts.userInfo!.nickname.toString();
  }

  String get description {
    return posts.text.toString();
  }

  String get photoUrl {
    return posts.userInfo!.photoUrl.toString();
  }

  String get timeAgo {
    return posts.createdAt.toString();
  }

  String get viewUrl {
    return posts.viewUrl.toString();
  }
}
