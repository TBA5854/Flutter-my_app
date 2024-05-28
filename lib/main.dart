import 'package:flutter/material.dart';
import 'package:TBA5854.firstapp/pages/calculator/home.dart' as calc;
import 'package:TBA5854.firstapp/pages/stopwatch/home.dart' as stop;
import 'package:TBA5854.firstapp/pages/quiz/home.dart' as quiz;

void main() {
  runApp(MaterialApp(
    theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.blueAccent),
    darkTheme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.greenAccent,
        brightness: Brightness.dark),
        initialRoute: "calc",
        routes: {
          "calc":(context) => const calc.Home(),
          "stop":(context) => const stop.Home(),
          "quiz":(context) => const quiz.Home(),
        },
    // home: const Home(),
  ));
}