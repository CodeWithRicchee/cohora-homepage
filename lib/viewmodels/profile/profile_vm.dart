import 'package:cohora_homeui_web/services/profileservices.dart';
import 'package:flutter/cupertino.dart';

class ProfileViewModel extends ChangeNotifier {
  String? name;
  String? surname;
  String? photoUrl;
  int? count;
  String? fullname;
  String? profileUrl;
  int? unreadMessageCount;
  int? loyaltyCoins;
  Future<void> fetchProfileAndFreinds() async {
    final token = await ProfileApi().login();
    final profileResults = await ProfileApi().myProfile(token);
    final friendsResults = await ProfileApi().fetchFriends(profileResults!.id);
    unreadMessageCount = await ProfileApi().messageUnreadCount(token);
    loyaltyCoins = await ProfileApi().loyaltyCoins(token);
    name = profileResults.displayName;
    photoUrl = profileResults.photoUrl;
    surname = profileResults.surname;
    fullname = '$name $surname';
    profileUrl = profileResults.qrCode;
    count = friendsResults;
    notifyListeners();
  }
}
