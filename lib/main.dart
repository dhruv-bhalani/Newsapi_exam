import 'package:flutter/material.dart';
import 'package:newsapi_app_exma/routes/routes.dart';
import 'package:newsapi_app_exma/screens/view/home_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: HomeProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // theme: ThemeData.light().copyWith(
        //   appBarTheme: const AppBarTheme(color: Color(0xffe9ae1f)),
        // ),
        // darkTheme: ThemeData.dark().copyWith(
        //   appBarTheme: const AppBarTheme(color: Color(0xffe9ae1f)),
        // ),

        // themeMode: (value.isdarkmode)
        //     ? ThemeMode.dark
        //     : value.isdarkmode
        //         ? ThemeMode.dark
        //         : ThemeMode.light,
        routes: Routes().allRoutes,
      ),
    );
  }
}
