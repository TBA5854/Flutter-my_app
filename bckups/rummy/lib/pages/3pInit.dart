import 'package:flutter/material.dart';

class Three extends StatefulWidget {
  const Three({super.key});

  @override
  State<Three> createState() => _ThreeState();
}

class _ThreeState extends State<Three> {
  String p1Name = "";
  String p2Name = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: const Text("3 Players"),),
      body: ElevatedButton(child:const Text("3P"),
      onPressed: () => Navigator.popAndPushNamed(context, "/2p"),),
    );
  }
}
