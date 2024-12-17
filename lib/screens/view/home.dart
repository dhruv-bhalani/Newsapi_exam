import 'package:flutter/material.dart';
import 'package:newsapi_app_exma/screens/view/home_provider.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late HomeProvider homeProviderR;
  late HomeProvider homeProviderW;
  @override
  Widget build(BuildContext context) {
    homeProviderR = context.read<HomeProvider>();
    homeProviderW = context.watch<HomeProvider>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        scrollDirection: Axis.horizontal,
        itemCount: homeProviderR.company.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              GestureDetector(
                onTap: () {
                  homeProviderW.getNewsData();
                },
                child: Container(
                  height: 50,
                  width: 100,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: const Color(0xfff4B474ff),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Text('${homeProviderR.company[index]["name"]}')),
                ),
              ),
              Expanded(
                  child: Text(
                '${homeProviderR.company[index]["name"]}',
              )),
            ],
          );
        },
      ),
    );
  }
}
