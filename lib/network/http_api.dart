import 'package:http/http.dart' as http;
import 'package:app_new/models/Product2.dart';

class updatedl {
  Future<List<Product>> getListCategory() async {
    final response = await http
        .get(Uri.parse('https://61f0b752e386270017fe1e44.mockapi.io/product'));
    if (response.statusCode == 200) {
      return productFromJson(response.body);
    } else {
      throw Exception('Error 8008');
    }
  }
}
