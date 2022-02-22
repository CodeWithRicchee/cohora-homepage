class Products {
  int? totalItems;
  int? totalPages;
  int? page;
  List<Items>? items;

  Products({this.totalItems, this.totalPages, this.page, this.items});

  Products.fromJson(Map<String, dynamic> json) {
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
  String? createdAt;
  String? lastUpdatedAt;
  String? externalUrl;
  String? activeFrom;
  String? activeTo;
  bool? displayWidget;
  int? position;
  int? popularity;
  String? name;
  String? description;
  String? note;
  Attributes? attributes;
  int? price;
  int? discountPrice;
  String? priceDisplay;
  String? discountPriceDisplay;
  String? currency;
  String? sticker;
  String? stickerColor;
  String? stickerTextColor;
  int? referralReward;
  String? promotionDetails;
  String? promoteUrl;
  List<Images>? images;
  List<Tags>? tags;
  String? viewUrl;

  Items(
      {this.id,
      this.createdAt,
      this.lastUpdatedAt,
      this.externalUrl,
      this.activeFrom,
      this.activeTo,
      this.displayWidget,
      this.position,
      this.popularity,
      this.name,
      this.description,
      this.note,
      this.attributes,
      this.price,
      this.discountPrice,
      this.priceDisplay,
      this.discountPriceDisplay,
      this.currency,
      this.sticker,
      this.stickerColor,
      this.stickerTextColor,
      this.referralReward,
      this.promotionDetails,
      this.promoteUrl,
      this.images,
      this.tags,
      this.viewUrl});

  Items.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['createdAt'];
    lastUpdatedAt = json['lastUpdatedAt'];
    externalUrl = json['externalUrl'];
    activeFrom = json['activeFrom'];
    activeTo = json['activeTo'];
    displayWidget = json['displayWidget'];
    position = json['position'];
    popularity = json['popularity'];
    name = json['name'];
    description = json['description'];
    note = json['note'];
    attributes = json['attributes'] != null
        ? new Attributes.fromJson(json['attributes'])
        : null;
    price = json['price'];
    discountPrice = json['discountPrice'];
    priceDisplay = json['priceDisplay'];
    discountPriceDisplay = json['discountPriceDisplay'];
    currency = json['currency'];
    sticker = json['sticker'];
    stickerColor = json['stickerColor'];
    stickerTextColor = json['stickerTextColor'];
    referralReward = json['referralReward'];
    promotionDetails = json['promotionDetails'];
    promoteUrl = json['promoteUrl'];
    if (json['images'] != null) {
      images = <Images>[];
      json['images'].forEach((v) {
        images!.add(new Images.fromJson(v));
      });
    }
    if (json['tags'] != null) {
      tags = <Tags>[];
      json['tags'].forEach((v) {
        tags!.add(new Tags.fromJson(v));
      });
    }
    viewUrl = json['viewUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['createdAt'] = this.createdAt;
    data['lastUpdatedAt'] = this.lastUpdatedAt;
    data['externalUrl'] = this.externalUrl;
    data['activeFrom'] = this.activeFrom;
    data['activeTo'] = this.activeTo;
    data['displayWidget'] = this.displayWidget;
    data['position'] = this.position;
    data['popularity'] = this.popularity;
    data['name'] = this.name;
    data['description'] = this.description;
    data['note'] = this.note;
    if (this.attributes != null) {
      data['attributes'] = this.attributes!.toJson();
    }
    data['price'] = this.price;
    data['discountPrice'] = this.discountPrice;
    data['priceDisplay'] = this.priceDisplay;
    data['discountPriceDisplay'] = this.discountPriceDisplay;
    data['currency'] = this.currency;
    data['sticker'] = this.sticker;
    data['stickerColor'] = this.stickerColor;
    data['stickerTextColor'] = this.stickerTextColor;
    data['referralReward'] = this.referralReward;
    data['promotionDetails'] = this.promotionDetails;
    data['promoteUrl'] = this.promoteUrl;
    if (this.images != null) {
      data['images'] = this.images!.map((v) => v.toJson()).toList();
    }
    if (this.tags != null) {
      data['tags'] = this.tags!.map((v) => v.toJson()).toList();
    }
    data['viewUrl'] = this.viewUrl;
    return data;
  }
}

class Attributes {
  AdditionalProp1? additionalProp1;

  Attributes({this.additionalProp1});

  Attributes.fromJson(Map<String, dynamic> json) {
    additionalProp1 = json['additionalProp1'] != null
        ? new AdditionalProp1.fromJson(json['additionalProp1'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.additionalProp1 != null) {
      data['additionalProp1'] = this.additionalProp1!.toJson();
    }
    return data;
  }
}

class AdditionalProp1 {
  AdditionalProp1.fromJson(Map<String, dynamic> json) {}

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    return data;
  }
}

class Images {
  String? id;
  String? createdAt;
  String? lastUpdatedAt;
  Asset? asset;
  bool? main;

  Images({this.id, this.createdAt, this.lastUpdatedAt, this.asset, this.main});

  Images.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['createdAt'];
    lastUpdatedAt = json['lastUpdatedAt'];
    asset = json['asset'] != null ? new Asset.fromJson(json['asset']) : null;
    main = json['main'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['createdAt'] = this.createdAt;
    data['lastUpdatedAt'] = this.lastUpdatedAt;
    if (this.asset != null) {
      data['asset'] = this.asset!.toJson();
    }
    data['main'] = this.main;
    return data;
  }
}

class Asset {
  String? id;
  String? createdAt;
  String? lastUpdatedAt;
  String? url;
  String? bucket;
  String? type;
  String? mimeType;
  int? filesize;
  int? width;
  int? height;
  int? durationSeconds;
  String? profileId;
  String? description;
  List<Thumbnails>? thumbnails;

  Asset(
      {this.id,
      this.createdAt,
      this.lastUpdatedAt,
      this.url,
      this.bucket,
      this.type,
      this.mimeType,
      this.filesize,
      this.width,
      this.height,
      this.durationSeconds,
      this.profileId,
      this.description,
      this.thumbnails});

  Asset.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['createdAt'];
    lastUpdatedAt = json['lastUpdatedAt'];
    url = json['url'];
    bucket = json['bucket'];
    type = json['type'];
    mimeType = json['mimeType'];
    filesize = json['filesize'];
    width = json['width'];
    height = json['height'];
    durationSeconds = json['durationSeconds'];
    profileId = json['profileId'];
    description = json['description'];
    if (json['thumbnails'] != null) {
      thumbnails = <Thumbnails>[];
      json['thumbnails'].forEach((v) {
        thumbnails!.add(new Thumbnails.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['createdAt'] = this.createdAt;
    data['lastUpdatedAt'] = this.lastUpdatedAt;
    data['url'] = this.url;
    data['bucket'] = this.bucket;
    data['type'] = this.type;
    data['mimeType'] = this.mimeType;
    data['filesize'] = this.filesize;
    data['width'] = this.width;
    data['height'] = this.height;
    data['durationSeconds'] = this.durationSeconds;
    data['profileId'] = this.profileId;
    data['description'] = this.description;
    if (this.thumbnails != null) {
      data['thumbnails'] = this.thumbnails!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Thumbnails {
  String? id;
  String? createdAt;
  String? lastUpdatedAt;
  String? type;
  String? url;
  String? mimeType;
  int? filesize;
  int? width;
  int? height;
  int? durationSeconds;

  Thumbnails(
      {this.id,
      this.createdAt,
      this.lastUpdatedAt,
      this.type,
      this.url,
      this.mimeType,
      this.filesize,
      this.width,
      this.height,
      this.durationSeconds});

  Thumbnails.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['createdAt'];
    lastUpdatedAt = json['lastUpdatedAt'];
    type = json['type'];
    url = json['url'];
    mimeType = json['mimeType'];
    filesize = json['filesize'];
    width = json['width'];
    height = json['height'];
    durationSeconds = json['durationSeconds'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['createdAt'] = this.createdAt;
    data['lastUpdatedAt'] = this.lastUpdatedAt;
    data['type'] = this.type;
    data['url'] = this.url;
    data['mimeType'] = this.mimeType;
    data['filesize'] = this.filesize;
    data['width'] = this.width;
    data['height'] = this.height;
    data['durationSeconds'] = this.durationSeconds;
    return data;
  }
}

class Tags {
  String? id;
  String? tag;
  String? parentId;

  Tags({this.id, this.tag, this.parentId});

  Tags.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    tag = json['tag'];
    parentId = json['parentId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['tag'] = this.tag;
    data['parentId'] = this.parentId;
    return data;
  }
}
