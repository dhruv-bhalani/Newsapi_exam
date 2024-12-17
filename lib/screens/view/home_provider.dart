import 'package:flutter/material.dart';
import 'package:newsapi_app_exma/helper/helper.dart';

class HomeProvider with ChangeNotifier {
  List articles = [];
  List<Map> company = [
    {
      "name": "Bajaj",
    },
    {
      "name": "Honda",
    },
    {
      "name": "Jio",
    },
    {
      "name": "Bmw",
    },
    {
      "name": "Tesla",
    },
    {
      "name": "Tata",
    },
  ];
  void getNewsData() {
    ShrHelper helper = ShrHelper();
    helper.getData().then(
      (value) {
        notifyListeners();
      },
    );
  }
}
