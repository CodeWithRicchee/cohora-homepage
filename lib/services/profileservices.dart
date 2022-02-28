import 'package:cohora_homeui_web/models/profile/profile_freinds_model.dart';
import 'package:cohora_homeui_web/models/profile/profile_model.dart';
import 'package:dio/dio.dart';

class ProfileApi {
  String url1 = 'https://api.cohora.net/profile/v1/profile/P07qPMZ';

  Dio? _dio;
  String token = "";

  ProfileApi() {
    _dio = Dio();
  }

  Future<int?> fetchFriends(String? id) async {
    String url2 =
        'https://api.cohora.net/profile/v1/profile/$id/friend?page=1&perPage=20';
    try {
      Response response = await _dio!.get(url2);
      ProfileFriends friends = ProfileFriends.fromJson(response.data);

      return friends.totalItems;
    } on DioError catch (e) {
      print(e.message);
    }
    return null;
  }

  Future login() async {
    try {
      Response response = await _dio!.post(
          "https://api.cohora.net/profile/v1/login",
          data: {"login": "demo", "password": "demo", "autologinCode": ""});

      token = response.data["accessToken"]["accessToken"];
    } on DioError catch (e) {
      print(e.message);
    }
    return token;
  }

  Future<Profile?> myProfile(token1) async {
    try {
      Response response = await _dio!.get(
          "https://api.cohora.net/profile/v1/me",
          options: Options(headers: {"Authorization": "Bearer $token1"}));

      Profile profile = Profile.fromJson(response.data);

      return profile;
    } on DioError catch (e) {
      print(e.message);
    }
    return null;
  }

  Future<int?> messageUnreadCount(token1) async {
    try {
      Response response = await _dio!.get(
          "https://api.cohora.net/message/v1/messageUnreadCount",
          options: Options(headers: {"Authorization": "Bearer $token1"}));

      return response.data["unreadCount"];
    } on DioError catch (e) {
      print(e.message);
    }
    return null;
  }
  Future<int?> loyaltyCoins(token1) async {
    try {
      Response response = await _dio!.get(
          "https://api.cohora.net/wallet/v1/myWallet",
          options: Options(headers: {"Authorization": "Bearer $token1"}));

      return response.data["balance"];
    } on DioError catch (e) {
      print(e.message);
    }
    return null;
  }
}
