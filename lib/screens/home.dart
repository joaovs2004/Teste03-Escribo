import 'package:flutter/material.dart';
import 'package:teste03_escribo/screens/avatar.dart';
import 'package:teste03_escribo/screens/homepage.dart';
import 'package:teste03_escribo/screens/webview.dart';
import 'package:fluttermoji/fluttermoji.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int page = 0;

  Widget bodyFn() {
    switch (page) {
      case 0:
        return const HomePage();
      case 1:
        return const MyWebView();
      case 2:
        return const Avatar();
      default:
        return const HomePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: TextButton(
          child: const Text(
            "Site oficial",
            style: TextStyle(color: Colors.black45),
          ),
          onPressed: () {
            if (page != 1) {
              page = 1;
            } else {
              page = 0;
            }
            setState(() {});
          },
        ),
        actions: [
          TextButton(
            onPressed: () {
              if (page != 2) {
                page = 2;
              } else {
                page = 0;
              }

              setState(() {});
            },
            child: FluttermojiCircleAvatar(),
          )
        ],
      ),
      body: bodyFn(),
    );
  }
}
