import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:dart_eval/dart_eval.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String num = "1+2+3";
  void ac() {
    // num = "";
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

  double oval = 0, txt = 0, pad = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(onPressed: () {}, child: Text("child",style: TextStyle(
                        fontSize: 30,
                      ),)),
              IconButton(onPressed: () {}, icon: Icon(Icons.menu_rounded))
            ],
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16,0,16,0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    num,
                    style: const TextStyle(
                      fontSize: 65,
                    ),
                    textAlign: TextAlign.right,
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Text(
                      "data",
                      style: TextStyle(
                        fontSize: 45,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 580,
              child: Column(
                children: [
                  ExpansionTile(
                    onExpansionChanged: (value) {
                      if (value) {
                        oval = 2;
                        txt = 7;
                        pad = 2.5;
                        setState(() {});
                      } else {
                        oval = -1;
                        txt = -1;
                        pad = -1;
                        setState(() {});
                      }
                    },
                    childrenPadding: const EdgeInsets.fromLTRB(16, 0, 60, 0),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                                style: TextStyle(fontSize: 30), "√")),
                        TextButton(
                            onPressed: () {
                              setState(() {});
                            },
                            child: const Text(
                                style: TextStyle(fontSize: 30), "π")),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                                style: TextStyle(fontSize: 30), "^")),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                                style: TextStyle(fontSize: 30), "!")),
                        const Text(" "),
                      ],
                    ),
                    children: [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                      style: TextStyle(fontSize: 30), "RAD")),
                              TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                      style: TextStyle(fontSize: 30), "sin")),
                              TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                      style: TextStyle(fontSize: 30), "cos")),
                              TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                      style: TextStyle(fontSize: 30), "tan")),
                              const Text(" "),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                      style: TextStyle(fontSize: 30), "INV")),
                              TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                      style: TextStyle(fontSize: 30), "e")),
                              TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                      style: TextStyle(fontSize: 30), "ln")),
                              TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                      style: TextStyle(fontSize: 30), "log")),
                              const Text(" "),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(8, 8 - pad, 8, 8 - pad),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              MaterialButton(
                                  onPressed: () {},
                                  padding: EdgeInsets.fromLTRB(
                                      16, 16 - oval, 16, 16 - oval),
                                  color:
                                      Theme.of(context).unselectedWidgetColor,
                                  shape: const CircleBorder(),
                                  child: Text(
                                      style: TextStyle(
                                        fontSize: 30 - txt,
                                      ),
                                      "AC")),
                              MaterialButton(
                                  onPressed: () {},
                                  padding: EdgeInsets.fromLTRB(
                                      16, 16 - oval, 16, 16 - oval),
                                  color: Theme.of(context).secondaryHeaderColor,
                                  shape: const CircleBorder(),
                                  child: Text(
                                      style: TextStyle(
                                          fontSize: 30 - txt,
                                          color:
                                              Theme.of(context).indicatorColor),
                                      "( )")),
                              MaterialButton(
                                  onPressed: () {},
                                  padding: EdgeInsets.fromLTRB(
                                      16, 16 - oval, 16, 16 - oval),
                                  color: Theme.of(context).secondaryHeaderColor,
                                  shape: const CircleBorder(),
                                  child: Text(
                                      style: TextStyle(
                                          fontSize: 30 - txt,
                                          color:
                                              Theme.of(context).indicatorColor),
                                      "%")),
                              MaterialButton(
                                  onPressed: () {},
                                  padding: EdgeInsets.fromLTRB(
                                      16, 16 - oval, 16, 16 - oval),
                                  color: Theme.of(context).secondaryHeaderColor,
                                  shape: const CircleBorder(),
                                  child: Text(
                                      style: TextStyle(
                                          fontSize: 30 - txt,
                                          color:
                                              Theme.of(context).indicatorColor),
                                      "÷")),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(8, 8 - pad, 8, 8 - pad),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              MaterialButton(
                                  onPressed: () {},
                                  padding: EdgeInsets.fromLTRB(
                                      16, 16 - oval, 16, 16 - oval),
                                  color: Theme.of(context).highlightColor,
                                  shape: const CircleBorder(),
                                  child: Text(
                                      style: TextStyle(fontSize: 30 - txt),
                                      "7")),
                              MaterialButton(
                                  onPressed: () {},
                                  padding: EdgeInsets.fromLTRB(
                                      16, 16 - oval, 16, 16 - oval),
                                  color: Theme.of(context).highlightColor,
                                  shape: const CircleBorder(),
                                  child: Text(
                                      style: TextStyle(fontSize: 30 - txt),
                                      "8")),
                              MaterialButton(
                                  onPressed: () {},
                                  padding: EdgeInsets.fromLTRB(
                                      16, 16 - oval, 16, 16 - oval),
                                  color: Theme.of(context).highlightColor,
                                  shape: const CircleBorder(),
                                  child: Text(
                                      style: TextStyle(fontSize: 30 - txt),
                                      "9")),
                              MaterialButton(
                                  onPressed: () {},
                                  padding: EdgeInsets.fromLTRB(
                                      16, 16 - oval, 16, 16 - oval),
                                  color: Theme.of(context).secondaryHeaderColor,
                                  shape: const CircleBorder(),
                                  child: Text(
                                      style: TextStyle(fontSize: 30 - txt),
                                      "×")),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(8, 8 - pad, 8, 8 - pad),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              MaterialButton(
                                  onPressed: () {},
                                  padding: EdgeInsets.fromLTRB(
                                      16, 16 - oval, 16, 16 - oval),
                                  color: Theme.of(context).highlightColor,
                                  shape: const CircleBorder(),
                                  child: Text(
                                      style: TextStyle(fontSize: 30 - txt),
                                      "4")),
                              MaterialButton(
                                  onPressed: () {},
                                  padding: EdgeInsets.fromLTRB(
                                      16, 16 - oval, 16, 16 - oval),
                                  color: Theme.of(context).highlightColor,
                                  shape: const CircleBorder(),
                                  child: Text(
                                      style: TextStyle(fontSize: 30 - txt),
                                      "5")),
                              MaterialButton(
                                  onPressed: () {},
                                  padding: EdgeInsets.fromLTRB(
                                      16, 16 - oval, 16, 16 - oval),
                                  color: Theme.of(context).highlightColor,
                                  shape: const CircleBorder(),
                                  child: Text(
                                      style: TextStyle(fontSize: 30 - txt),
                                      "6")),
                              MaterialButton(
                                  onPressed: () {},
                                  padding: EdgeInsets.fromLTRB(
                                      16, 16 - oval, 16, 16 - oval),
                                  color: Theme.of(context).secondaryHeaderColor,
                                  shape: const CircleBorder(),
                                  child: Text(
                                      style: TextStyle(fontSize: 30 - txt),
                                      "-")),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(8, 8 - pad, 8, 8 - pad),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              MaterialButton(
                                  onPressed: () {},
                                  padding: EdgeInsets.fromLTRB(
                                      16, 16 - oval, 16, 16 - oval),
                                  color: Theme.of(context).highlightColor,
                                  shape: const CircleBorder(),
                                  child: Text(
                                      style: TextStyle(fontSize: 30 - txt),
                                      "1")),
                              MaterialButton(
                                  onPressed: () {},
                                  padding: EdgeInsets.fromLTRB(
                                      16, 16 - oval, 16, 16 - oval),
                                  color: Theme.of(context).highlightColor,
                                  shape: const CircleBorder(),
                                  child: Text(
                                      style: TextStyle(fontSize: 30 - txt),
                                      "2")),
                              MaterialButton(
                                  onPressed: () {},
                                  padding: EdgeInsets.fromLTRB(
                                      16, 16 - oval, 16, 16 - oval),
                                  color: Theme.of(context).highlightColor,
                                  shape: const CircleBorder(),
                                  child: Text(
                                      style: TextStyle(fontSize: 30 - txt),
                                      "3")),
                              MaterialButton(
                                  onPressed: () {},
                                  padding: EdgeInsets.fromLTRB(
                                      16, 16 - oval, 16, 16 - oval),
                                  color: Theme.of(context).secondaryHeaderColor,
                                  shape: const CircleBorder(),
                                  child: Text(
                                      style: TextStyle(fontSize: 30 - txt),
                                      "+")),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(8, 8 - pad, 8, 8 - pad),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              MaterialButton(
                                  onPressed: () {},
                                  padding: EdgeInsets.fromLTRB(
                                      16, 16 - oval, 16, 16 - oval),
                                  color: Theme.of(context).highlightColor,
                                  shape: const CircleBorder(),
                                  child: Text(
                                      style: TextStyle(fontSize: 30 - txt),
                                      "0")),
                              MaterialButton(
                                  onPressed: () {},
                                  padding: EdgeInsets.fromLTRB(
                                      16, 16 - oval, 16, 16 - oval),
                                  color: Theme.of(context).highlightColor,
                                  shape: const CircleBorder(),
                                  child: Text(
                                      style: TextStyle(fontSize: 30 - txt),
                                      ".")),
                              MaterialButton(
                                  onPressed: () {},
                                  padding: EdgeInsets.fromLTRB(
                                      16, 16 - oval, 16, 16 - oval),
                                  color: Theme.of(context).highlightColor,
                                  shape: const CircleBorder(),
                                  child: Icon(
                                    Icons.backspace_rounded,
                                    size: 43 - txt*1.4,
                                  )),
                              MaterialButton(
                                  onPressed: () {},
                                  padding: EdgeInsets.fromLTRB(
                                      16, 16 - oval, 16, 16 - oval),
                                  color: Theme.of(context).hintColor,
                                  shape: const CircleBorder(),
                                  child: Text(
                                      style: TextStyle(fontSize: 30 - txt ),
                                      "=")),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
            // GridView.count(crossAxisCount: 4,children: List.generate(4, (index) => Center(child: (Text("$index")))),)
          ],
        ));
  }
}
