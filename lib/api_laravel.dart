import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:http/http.dart';
import 'package:send_auto_sms/numbers.dart';

class ApiLaravel {
  static getDataFromBackend() async {
    print("df");
    final url = Uri.parse("http://192.168.0.119:8080/api/another");
    Response r = await http
        .get(url, headers: <String, String>{"Accept": "application/json"});

    var result = jsonDecode(r.body);
    if (result['message'] == 'yes') {
      // print('dfsfdsfsfsdf');
      SSS.count1++;
      var x = await anotherApi();
      print('herer : ' + x['message']);
      return x['message'];
    } else {
      SSS.count2++;
      print(result);
      return result['message'];
    }
  }

  static anotherApi() async {
    final url = Uri.parse("http://192.168.0.119:8080/api/new");
    Response r = await http
        .get(url, headers: <String, String>{"Accept": "application/json"});

    var result = jsonDecode(r.body);
    // print(result);
    return result;
  }
}
