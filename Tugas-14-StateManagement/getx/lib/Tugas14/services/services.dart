import 'dart:async';

import 'package:getx/Tugas14/model/postmodel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class Services {
  Future<List<Postmodel>?> getAllPost() async {
    try {
      var response = await http
          .get(Uri.parse("https://jsonplaceholder.typicode.com/posts"))
          .timeout(const Duration(seconds: 10), onTimeout: () {
        throw TimeoutException("connection time out, try again");
      });

      if (response.statusCode == 200){
        List jsonResponse = convert.jsonDecode(response.body);
        return jsonResponse.map((e) => Postmodel.fromJson(e)).toList();
      } else {
        return null;
      }
    } on TimeoutException catch (_) {
      // ignore: avoid_print
      print("response time out");
    }
    return null;
  }
}
