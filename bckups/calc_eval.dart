import 'package:flutter/material.dart';
import 'package:dart_eval/dart_eval.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

// ignore: use_key_in_widget_constructors
class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // int num = 0;
  String num = "";
  void ac() {
    num = "";
    setState(() {});
  }

  void append(String c) {
    num += c;
    setState(() {});
  }

  void eq() {
    num = eval(num).toString();
    setState(() {});
  }

  void factorial() {
    double n = double.parse(num), prod = 1;
    for (int i = 1; i <= n; i++) {
      prod *= i;
    }
    num = prod.toString();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Calculator"),
          backgroundColor: Colors.lightBlue,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(num),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                    onPressed: () {
                      ac();
                    },
                    child: const Text("AC")),
                OutlinedButton(
                    onPressed: () {
                      append("/100");
                    },
                    child: const Text("%")),
                OutlinedButton(
                    onPressed: () {
                      factorial();
                    },
                    child: const Text("!")),
                OutlinedButton(
                    onPressed: () {
                      append("+");
                    },
                    child: const Text("+")),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                    onPressed: () {
                      append("7");
                    },
                    child: const Text("7")),
                OutlinedButton(
                    onPressed: () {
                      append("8");
                    },
                    child: const Text("8")),
                OutlinedButton(
                    onPressed: () {
                      append("9");
                    },
                    child: const Text("9")),
                OutlinedButton(
                    onPressed: () {
                      append("-");
                    },
                    child: const Text("-")),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                    onPressed: () {
                      append("4");
                    },
                    child: const Text("4")),
                OutlinedButton(
                    onPressed: () {
                      append("5");
                    },
                    child: const Text("5")),
                OutlinedButton(
                    onPressed: () {
                      append("6");
                    },
                    child: const Text("6")),
                OutlinedButton(
                    onPressed: () {
                      append("*");
                    },
                    child: const Text("*")),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                    onPressed: () {
                      append("1");
                    },
                    child: const Text("1")),
                OutlinedButton(
                    onPressed: () {
                      append("2");
                    },
                    child: const Text("2")),
                OutlinedButton(
                    onPressed: () {
                      append("3");
                    },
                    child: const Text("3")),
                OutlinedButton(
                    onPressed: () {
                      append("/");
                    },
                    child: const Text("/")),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                    onPressed: () {
                      append("0");
                    },
                    child: const Text("0")),
                OutlinedButton(
                    onPressed: () {
                      append(".");
                    },
                    child: const Text(".")),
                OutlinedButton(
                    onPressed: () {
                      num = num.substring(0, num.length - 1);
                      setState(() {});
                    },
                    child: const Icon(Icons.backspace_outlined)),
                OutlinedButton(
                    onPressed: () {
                      eq();
                    },
                    child: const Text("=")),
              ],
            ),
          ],
        ));
  }
}
