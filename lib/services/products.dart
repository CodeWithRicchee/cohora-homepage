import 'package:cohora_homeui_web/models/products_model.dart';
import 'package:dio/dio.dart';

class ProductApi {
  String url = 'https://api.cohora.net/product/v1/widget';
  Dio? _dio;

  ProductApi() {
    _dio = Dio();
  }

  Future<List<Items>?> fetchProducts() async {
    try {
      Response response = await _dio!.get(url);
      Products products = Products.fromJson(response.data);
      return products.items;
    } on DioError catch (e) {
      print(e.message);
    }
    return null;
  }
}
