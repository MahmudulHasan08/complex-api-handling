// import 'dart:convert';

// import 'package:http/http.dart' as http;

// import '../model/test_model.dart';
// import '../model/user_Model.dart';

// class RemoteServices {
//   static var client = http.Client();

//   static Future<List<Product>?> fetchProducts() async {
//     var response = await client.get(Uri.parse(
//         'https://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline'));
//     if (response.statusCode == 200) {
//       // List result = jsonDecode(response.body)['data'];
//       var jstring = response.body;

//       return productFromJson(jstring);
//     } else {
//       //show error message
//       return null;
//     }
//   }
//}

import 'package:http/http.dart' as http;

import '../model/user_Model.dart';

class RemoteServices {
  static var client = http.Client();

  // static Future<List<Product>?> fetchProducts() async {
  //   var response = await client.get(Uri.parse(
  //       'https://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline'));
  //   if (response.statusCode == 200) {
  //     var jsonString = response.body;
  //     return productFromJson(jsonString);
  //   } else {
  //     //show error message
  //     return null;
  //   }
  // }
}
