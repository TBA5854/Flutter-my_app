import 'package:flutter/material.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
  List history = ModalRoute.of(context)!.settings.arguments as List;
    return Scaffold(
        appBar: AppBar(
          actions: [
            ElevatedButton(
                onPressed: () {
                  history.clear();
                  setState(() {});
                },
                child: const Icon(Icons.clear))
          ],
          title: const Text("History"),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: history
                .map((i) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        i,
                        style: const TextStyle(fontSize: 20),
                      ),
                    ))
                .toList()
                .reversed
                .toList(),
          ),
        ));
  }
}
