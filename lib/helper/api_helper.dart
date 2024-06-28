import 'package:e_commerce/headers.dart';
import 'package:http/http.dart' as http;

class ApiHelper {
  ApiHelper._internal();
  static final ApiHelper apiHelper = ApiHelper._internal();

  String api = "https://dummyjson.com/products";

  Future<List<Product>> fetchApi() async {
    List<Product> productList = [];
    http.Response response = await http.get(Uri.parse(api));

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)["products"];
      productList = data.map((e) => Product.fromJson(e)).toList();
    }
    return productList;
  }
}
