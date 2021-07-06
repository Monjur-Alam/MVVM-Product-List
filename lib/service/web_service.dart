import 'package:dio/dio.dart';
import 'package:mvvm_product_list/constants.dart';
import 'package:mvvm_product_list/model/product_model.dart';

class WebService {
  var dio = new Dio();

  Future<List<ProductModel>> fetchProductList() async {
    String url = Constants.PRODUCT_LIST;

    final response = await dio.get(url,
      options: Options(
        headers: {
          'Authorization': Constants.TOKEN,
        },
      ),
    );

    if (response.statusCode == 200) {
      final result = response.data;
      Iterable list = result['data'];
      return list.map((data) => ProductModel.fromJson(data)).toList();
    } else {
      throw Exception("Failed to get data");
    }
  }
}
