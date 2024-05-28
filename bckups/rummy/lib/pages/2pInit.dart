import 'package:flutter/material.dart';

class Two extends StatefulWidget {
  const Two({super.key});

  @override
  State<Two> createState() => _TwoState();
}

class _TwoState extends State<Two> {
  String p1Name = "";
  String p2Name = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Rummy"),),
      body: Column(
      children: [
        
        const Padding(
          padding: EdgeInsets.fromLTRB(12,8,8,8),
          child: Text("Enter Player 1 Name ",style: TextStyle(fontSize: 23),),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
          child: TextField(decoration: InputDecoration(hintText: "Player 1",contentPadding: const EdgeInsets.all(20),border: OutlineInputBorder(borderRadius: BorderRadius.circular(99))),
            onChanged: (value) => p1Name=value,
          ),
        ),
        const Padding(padding: EdgeInsets.all(10))
        ,
        const Padding(
          padding: EdgeInsets.fromLTRB(20,8,8,8),
          child: Text("Enter Player 2 Name ",style: TextStyle(fontSize: 23),),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
          child: TextField(decoration: InputDecoration(hintText: "Player 2",contentPadding: const EdgeInsets.all(20),border: OutlineInputBorder(borderRadius: BorderRadius.circular(99))),
            onChanged: (value) => p2Name=value,
          ),
        ),
      const Padding(padding: EdgeInsets.fromLTRB(0, 300, 0, 0)),
            ElevatedButton(onPressed: () => {Navigator.popAndPushNamed(context, "/2p",arguments: {
              "p1Name":p1Name,
              "p2Name":p2Name,
              })}, child: const Padding(
          padding: EdgeInsets.fromLTRB(8, 16, 8, 16),
              child: Text("Start",style:TextStyle(fontSize: 22) ,),
            ))

      ],
      
      ),
      
    );
  }
}
