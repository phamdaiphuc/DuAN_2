                    // TODO Implement this library.import 'package:http/http.dart' as http;
import 'package:app_new/models/Product2.dart';
import 'package:http/http.dart' as http;

class updatedl {
  Future<List<product>> getListCategory() async {
    final response = await http.get(Uri.parse('https://61f0b752e386270017fe1e44.mockapi.io/Product'));
    if (response.statusCode == 200) {
      return productFromJson(response.body);
    } else {
      throw Exception('Error 8008');
    }
  }
}


