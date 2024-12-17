import 'package:flutter/material.dart';
import 'package:newsapi_app_exma/screens/view/home.dart';

class Routes {
  Map<String, Widget Function(BuildContext)> get allRoutes {
    return {
      '/': (context) => const Home(),
    };
  }
}
