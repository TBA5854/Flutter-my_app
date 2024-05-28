import 'package:flutter/material.dart';

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
  int num1 = 0, num2 = 0;
  int operator = 0;
  bool ac = true;

  void append(int n) {
    if (operator == 0) {
      num1 *= 10;
      num1 += n;
    } else {
      num2 *= 10;
      num2 += n;
    }
    setState(() {});
  }

  void factorial() {
    int prod = 1, n = 0;
    if (operator == 0) {
      n = num1.floor();
    } else {
      n = num2.floor();
    }
    for (int i = 1; i <= n; i++) {
      prod *= i;
    }
    if (operator == 0) {
      num1 = prod;
    } else {
      num2 = prod;
    }
    setState(() {});
  }

  void eval() {
    switch (operator) {
      case 1:
        num1 += num2;
        num2 = 0;
        break;
      case 2:
        num1 -= num2;
        num2 = 0;
        break;
      case 3:
        num1 *= num2;
        num2 = 0;
        break;
      case 4:
        num1 = (num1 / num2).toInt();
        num2 = 0;
        break;
      case 5:
        num1 %= num2;
        num2 = 0;
        break;
    }
    operator = 0;
    setState(() {});
  }

  String str() {
    if (operator == 0) {
      return num1.toString();
    } else {
      return "$num1\n$num2";
    }
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
            Text(str()),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                    onPressed: () {
                      ac = true;
                      num1 = 0;
                      num2 = 0;
                      operator = 0;
                      setState(() {});
                    },
                    child: const Text("AC")),
                OutlinedButton(
                    onPressed: () {
                      operator = 5;
                    },
                    child: const Text("%")),
                OutlinedButton(
                    onPressed: () {
                      factorial();
                    },
                    child: const Text("!")),
                OutlinedButton(
                    onPressed: () {
                      operator = 1;
                    },
                    child: const Text("+")),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                    onPressed: () {
                      append(7);
                    },
                    child: const Text("7")),
                OutlinedButton(
                    onPressed: () {
                      append(8);
                    },
                    child: const Text("8")),
                OutlinedButton(
                    onPressed: () {
                      append(9);
                    },
                    child: const Text("9")),
                OutlinedButton(
                    onPressed: () {
                      operator = 2;
                    },
                    child: const Text("-")),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                    onPressed: () {
                      append(4);
                    },
                    child: const Text("4")),
                OutlinedButton(
                    onPressed: () {
                      append(5);
                    },
                    child: const Text("5")),
                OutlinedButton(
                    onPressed: () {
                      append(6);
                    },
                    child: const Text("6")),
                OutlinedButton(
                    onPressed: () {
                      operator = 3;
                    },
                    child: const Text("*")),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                    onPressed: () {
                      append(1);
                    },
                    child: const Text("1")),
                OutlinedButton(
                    onPressed: () {
                      append(2);
                    },
                    child: const Text("2")),
                OutlinedButton(
                    onPressed: () {
                      append(3);
                    },
                    child: const Text("3")),
                OutlinedButton(
                    onPressed: () {
                      operator = 1;
                    },
                    child: const Text("/")),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                    onPressed: () {
                      append(0);
                    },
                    child: const Text("0")),
                OutlinedButton(
                    onPressed: () {
                      // append(".");
                    },
                    child: const Text(".")),
                OutlinedButton(
                    onPressed: () {
                      if (operator == 0) {
                        if(num1<10){num1 = int.parse(num1
                            .toString()
                            .substring(0, num1.toString().length - 1));}
                      } else {
                        if(num2<10){num2 = int.parse(num2
                            .toString()
                            .substring(0, num2.toString().length - 1));}
                      }
                      // num = num.substring(0, num.length - 1);
                      setState(() {});
                    },
                    child: const Icon(Icons.backspace_outlined)),
                OutlinedButton(
                    onPressed: () {
                      eval();
                    },
                    child: const Text("=")),
              ],
            ),
          ],
        ));
  }
}
