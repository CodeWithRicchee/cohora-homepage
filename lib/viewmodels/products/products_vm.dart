import 'package:cohora_homeui_web/models/products_model.dart';

class ProductViewModel {
  final Items items;

  ProductViewModel({required this.items});

  String? get thumbnailUrl {
    List<Images>? images = items.images;
    for (var element in images!) {
      Asset? obj = element.asset;
      List<Thumbnails>? thumbnails = obj?.thumbnails;
      for (var element in thumbnails!) {
        return element.url;
      }
    }
    return "null";
  }

  String get productName {
    return items.name.toString();
  }

  String get productPriceDisplay {
    return items.priceDisplay.toString();
  }

  String get discountPriceDisplay {
    return items.discountPriceDisplay.toString();
  }
  String get viewUrl {
    return items.viewUrl.toString();
  }
}
