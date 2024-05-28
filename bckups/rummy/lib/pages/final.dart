import 'package:flutter/material.dart';

class Win extends StatefulWidget {
  const Win({super.key});

  @override
  State<Win> createState() => _WinState();
}

class _WinState extends State<Win> {
  @override
  Widget build(BuildContext context) {
    String name = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Win"),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 155, 16, 0),
        child: Card.filled(
          child: Container(
            height: 250,
            width: 450,
            margin: const EdgeInsets.all(20),
            child: Center(
                child: Text(
              "The Winner is  $name",
              style: const TextStyle(fontSize: 18),
            )),
          ),
        ),
      ),
    );
  }
}
