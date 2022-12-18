import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:validatinglanguange/app/models/validate.dart';

class HomeProvider {
  static Future<Words> postDataWords(String data) async {
    Uri url = Uri.parse("https://final-project-tbo-be.vercel.app/parsing");
    var body = {'string': data};
    var header = {'Content-Type': 'application/json'};
    final respons =
        await http.post(url, body: jsonEncode(body), headers: header);
    final words = wordsFromJson(respons.body);
    return words;
  }
}
