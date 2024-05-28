import 'package:flutter/material.dart';
import 'pages/2pInit.dart';
// import 'package:my_app/pages/3pInit.dart';
// import 'package:my_app/pages/init.dart';
import 'pages/2P.dart';
import 'pages/final.dart';
import 'pages/history.dart';
// import 'package:my_app/pages/3P.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/2pInit",
    theme: ThemeData(useMaterial3: true,colorSchemeSeed: Colors.green),darkTheme: ThemeData(useMaterial3: true,colorSchemeSeed: Colors.green,brightness: Brightness.dark),
    routes: {
      // "/":(context) => const Init(),
      "/2pInit": (context) => const Two(),
      // "/3pInit": (context) => const Three(),
      "/2p":(context) => const GameTwo(),
      "history": (context) => const History(),
      "win":(context) => const Win()
    },
  ));
}
