class Profile {
  String? id;
  String? createdAt;
  String? lastUpdatedAt;
  bool? guest;
  String? displayName;
  String? nickname;
  String? name;
  String? surname;
  String? photoUrl;
  String? phone;
  bool? phoneVerified;
  String? email;
  bool? emailVerified;
  String? gender;
  String? birthdate;
  String? preferredLanguage;
  String? qrCode;
  String? referralCode;
  String? usedReferralCode;
  ReferralUserInfo? referralUserInfo;
  bool? marketingConsent;

  Profile(
      {this.id,
      this.createdAt,
      this.lastUpdatedAt,
      this.guest,
      this.displayName,
      this.nickname,
      this.name,
      this.surname,
      this.photoUrl,
      this.phone,
      this.phoneVerified,
      this.email,
      this.emailVerified,
      this.gender,
      this.birthdate,
      this.preferredLanguage,
      this.qrCode,
      this.referralCode,
      this.usedReferralCode,
      this.referralUserInfo,
      this.marketingConsent});

  Profile.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['createdAt'];
    lastUpdatedAt = json['lastUpdatedAt'];
    guest = json['guest'];
    displayName = json['displayName'];
    nickname = json['nickname'];
    name = json['name'];
    surname = json['surname'];
    photoUrl = json['photoUrl'];
    phone = json['phone'];
    phoneVerified = json['phoneVerified'];
    email = json['email'];
    emailVerified = json['emailVerified'];
    gender = json['gender'];
    birthdate = json['birthdate'];
    preferredLanguage = json['preferredLanguage'];
    qrCode = json['qrCode'];
    referralCode = json['referralCode'];
    usedReferralCode = json['usedReferralCode'];
    referralUserInfo = json['referralUserInfo'] != null
        ? new ReferralUserInfo.fromJson(json['referralUserInfo'])
        : null;
    marketingConsent = json['marketingConsent'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['createdAt'] = this.createdAt;
    data['lastUpdatedAt'] = this.lastUpdatedAt;
    data['guest'] = this.guest;
    data['displayName'] = this.displayName;
    data['nickname'] = this.nickname;
    data['name'] = this.name;
    data['surname'] = this.surname;
    data['photoUrl'] = this.photoUrl;
    data['phone'] = this.phone;
    data['phoneVerified'] = this.phoneVerified;
    data['email'] = this.email;
    data['emailVerified'] = this.emailVerified;
    data['gender'] = this.gender;
    data['birthdate'] = this.birthdate;
    data['preferredLanguage'] = this.preferredLanguage;
    data['qrCode'] = this.qrCode;
    data['referralCode'] = this.referralCode;
    data['usedReferralCode'] = this.usedReferralCode;
    if (this.referralUserInfo != null) {
      data['referralUserInfo'] = this.referralUserInfo!.toJson();
    }
    data['marketingConsent'] = this.marketingConsent;
    return data;
  }
}

class ReferralUserInfo {
  String? id;
  bool? guest;
  String? photoUrl;
  String? nickname;
  String? name;
  String? surname;
  String? type;
  String? displayName;

  ReferralUserInfo(
      {this.id,
      this.guest,
      this.photoUrl,
      this.nickname,
      this.name,
      this.surname,
      this.type,
      this.displayName});

  ReferralUserInfo.fromJson(Map<String, dynamic> json) {
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
