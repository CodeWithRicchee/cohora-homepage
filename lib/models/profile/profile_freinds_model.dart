class ProfileFriends {
  int? totalItems;
  int? totalPages;
  int? page;
  List<Items>? items;

  ProfileFriends({this.totalItems, this.totalPages, this.page, this.items});

  ProfileFriends.fromJson(Map<String, dynamic> json) {
    totalItems = json['totalItems'];
    totalPages = json['totalPages'];
    page = json['page'];
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(new Items.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['totalItems'] = this.totalItems;
    data['totalPages'] = this.totalPages;
    data['page'] = this.page;
    if (this.items != null) {
      data['items'] = this.items!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Items {
  String? id;
  UserInfo? userInfo;
  bool? mutualFriend;
  int? unreadMessageCount;
  bool? online;

  Items(
      {this.id,
      this.userInfo,
      this.mutualFriend,
      this.unreadMessageCount,
      this.online});

  Items.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userInfo = json['userInfo'] != null
        ? new UserInfo.fromJson(json['userInfo'])
        : null;
    mutualFriend = json['mutualFriend'];
    unreadMessageCount = json['unreadMessageCount'];
    online = json['online'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.userInfo != null) {
      data['userInfo'] = this.userInfo!.toJson();
    }
    data['mutualFriend'] = this.mutualFriend;
    data['unreadMessageCount'] = this.unreadMessageCount;
    data['online'] = this.online;
    return data;
  }
}

class UserInfo {
  String? id;
  bool? guest;
  String? photoUrl;
  String? nickname;
  String? name;
  String? surname;
  String? type;
  String? displayName;

  UserInfo(
      {this.id,
      this.guest,
      this.photoUrl,
      this.nickname,
      this.name,
      this.surname,
      this.type,
      this.displayName});

  UserInfo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    guest = json['guest'];
    photoUrl = json['photoUrl'];
    nickname = json['nickname'];
    name = json['name'];
    surname = json['surname'];
    type = json['type'];
    displayName = json['displayName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['guest'] = this.guest;
    data['photoUrl'] = this.photoUrl;
    data['nickname'] = this.nickname;
    data['name'] = this.name;
    data['surname'] = this.surname;
    data['type'] = this.type;
    data['displayName'] = this.displayName;
    return data;
  }
}
