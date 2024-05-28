import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GameTwo extends StatefulWidget {
  const GameTwo({super.key});

  @override
  State<GameTwo> createState() => _GameTwoState();
}

List history = [];
String p1Name = "", p2Name = "", t1 = "", t2 = "", dealer = "";

class _GameTwoState extends State<GameTwo> {
  final f1 = TextEditingController();

  int p1Score = 0, p2Score = 0, round = 1;
  Map dict = {};

  @override
  Widget build(BuildContext context) {
    dict = ModalRoute.of(context)!.settings.arguments as Map;
    p1Name = dict["p1Name"];
    p2Name = dict["p2Name"];
    dealer = p1Name;
    return Scaffold(
      appBar: AppBar(
                  actions: [
            ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, "history",arguments: history),
                child:const Icon(Icons.history_sharp))
          ],
        title: const Text("2 Player Game"),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 8, 8, 8),
          child: Center(
            child: Text(
              "Round $round",
              style: const TextStyle(fontSize: 25),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 8, 8, 8),
          child: Text(
            "Dealer : $dealer",
            style: const TextStyle(fontSize: 23),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 8, 8, 4),
          child: Text(
            p1Name,
            style: const TextStyle(fontSize: 23),
          ),
        ),

        Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
          child: TextField(
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            decoration: InputDecoration(
                hintText: "Player 1",
                contentPadding: const EdgeInsets.all(20),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(99))),
            onChanged: (value) => t1 = value,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 8, 8, 4),
          child: Text(
            p2Name,
            style: const TextStyle(fontSize: 23),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
          child: TextField(
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            decoration: InputDecoration(
                hintText: "Player 2",
                contentPadding: const EdgeInsets.all(20),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(99))),
            onChanged: (value) => t2 = value,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 10, 16, 0),
          child: Card.filled(
            child: Container(
              height: 200,
              width: 450,
              margin: const EdgeInsets.all(20),
              child: Center(
                  child: Text(
                      "Dealer : $dealer\n\n$p1Name : $p1Score\n$p2Name : $p2Score",style: const TextStyle(fontSize: 18),)),
            ),
          ),
        ),
        Padding(
            padding: const EdgeInsets.fromLTRB(105, 35, 0, 0),
            child: ElevatedButton(
                onPressed: () {
                  p1Score += int.parse(t1);
                  p2Score += int.parse(t2);
                  dealer=(round%2==1)?p1Name:p2Name;
                  history.add(
                      "Round $round => $p1Name : $p1Score , $p2Name : $p2Score\n");
                  round++;
                  setState(() {});
                  if (p1Score >= 320) {
                    Navigator.popAndPushNamed(context, "win",
                        arguments: p2Name);
                  }
                  if (p2Score >= 320) {
                    Navigator.popAndPushNamed(context, "win",
                        arguments: p1Name);
                  }
                },
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(8, 12, 8, 12),
                  child: Text(
                    "Round Over",
                    style: TextStyle(fontSize: 22),
                  ),
                ))),
      ]),
    );
  }
}
