/* import 'package:flutter/material.dart';
import 'package:my_app/pages/2p.dart';
import 'package:my_app/pages/3p.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/2p",
    routes: {
      "/2p": (context) => const Two(),
      "/3p": (context) => const Three(),
      
    },
  ));
}
 */
import 'package:flutter/material.dart';
import 'package:dart_eval/dart_eval.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    routes: {
      "history": (context) => const History(),
    },
    color: Colors.amber,
  ));
}

// ignore: use_key_in_widget_constructors
class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

List history = [];

class _HomeState extends State<Home> {
  // int num = 0;

  String num = "";
  void ac() {
    num = "";
    setState(() {});
  }

  void append(String c) {
    if (!((c == "-") & (num == "")) &
        (c.startsWith(RegExp(r"[ + \- * / ]")) | (c == "/100"))) {
      eq();
      num += " $c ";
    } else {
      num += c;
    }
    setState(() {});
  }

  void eq() {
    String T = "";
    // history.add(num);
    T = num;
    var temp = eval(num);
    if (temp == temp.truncate()) {
      num = temp.toInt().toString();
    } else {
      num = temp.toString();
    }
    if (T.contains(RegExp(r"[+ \- * /]"))) {
    T += " = $num";
    history.add(T);
    }
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
          // centerTitle: true,
          actions: [
            ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, "history"),
                child:const Icon(Icons.history_sharp))
          ],
          title: const Text("Calculator"),
          backgroundColor: Colors.lightBlue,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              num,
              style: const TextStyle(fontSize: 30, fontFamily: "ubuntu"),
            ),
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
                      if (num[num.length-1]==" ") {
                      num = num.substring(0, num.length - 2);
                      }
                      num = num.substring(0, num.length - 1);
                      setState(() {});
                    },
                    child: const Icon(Icons.backspace_outlined)),
                OutlinedButton(
                    onLongPress: () {
                      Navigator.pushNamed(context, "history");
                      print(history);
                    },
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

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            ElevatedButton(
                onPressed: () {
                  history.clear();
                  setState(() {});
                },
                child:const Icon(Icons.clear))
          ],
          // centerTitle: true,
          title: const Text("History"),
          backgroundColor: Colors.lightBlue,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: history
                .map((i) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Text(
                          i,
                          style:const TextStyle(fontSize: 20),
                        ),
                      ),
                    ))
                .toList()
                .reversed
                .toList(),
          ),
        ));
  }
}
