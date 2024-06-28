import 'package:e_commerce/headers.dart';

class ApiController extends GetxController {
  ApiController() {
    initData();
  }
  RxList<Product> allData = <Product>[].obs;
  Future<void> initData() async {
    allData(await ApiHelper.apiHelper.fetchApi());
  }
}
