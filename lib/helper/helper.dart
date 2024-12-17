import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:newsapi_app_exma/model/newsapi_model.dart';

class ShrHelper {
  Future<NewsapiModel?> getData() async {
    String link =
        "https://newsapi.org/v2/everything?q=tesla&tata&jio&bmw&honda&Bajajfrom=2024-11-17&sortBy=publishedAt&apiKey=999e8dc91a1741f7b3427908709b5308";

    http.Response response = await http.get(Uri.parse(link));

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      NewsapiModel Newsapi = NewsapiModel.mapToModel(data);
      return Newsapi;
    }
    return null;
  }
}
