import 'package:cohora_homeui_web/models/profile.dart';
import 'package:dio/dio.dart';

class SearchApi {
  String url = 'https://api.cohora.net/search/v1/search';
  Dio? _dio;

  SearchApi() {
    _dio = Dio();
  }

  Future<List<Posts>?> fetchPosts() async {
    try {
      Response response =
          await _dio!.get(url, queryParameters: {'query': "man"});
      Search posts = Search.fromJson(response.data);
      return posts.posts;
    } on DioError catch (e) {
      print(e.message);
    }
    return null;
  }
}
