import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Hello World"),
        backgroundColor: Colors.lightBlue,
      ),
      body:Row(
        children:[Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          
        children: [OutlinedButton(
          child: const Icon(
            Icons.abc,
            color: Colors.orange,
            size: 75,),
            onPressed: () => print("1"),),
            OutlinedButton(
          child: const Icon(
            Icons.abc,
            color: Colors.white70,
            size: 75,),
            onPressed: () => print("2"),),
            OutlinedButton(
          child: const Icon(
            Icons.abc,
            color: Colors.teal,
            size: 75,),
            onPressed: () => print("3"),),
            ],
      ),
      Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          
        children: [TextButton(
          child: const Icon(
            Icons.abc,
            color: Colors.orange,
            size: 75,),
            onPressed: () => print("1"),),
            TextButton(
          child: const Icon(
            Icons.abc,
            color: Colors.white70,
            size: 75,),
            onPressed: () => print("2"),),
            TextButton(
          child: const Icon(
            Icons.abc,
            color: Colors.teal,
            size: 75,),
            onPressed: () => print("3"),),
            ],
      ),
      Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          
        children: [ElevatedButton(
          child: const Icon(
            Icons.abc,
            color: Colors.orange,
            size: 75,),
            onPressed: () => print("1"),),
            ElevatedButton(
          child: const Icon(
            Icons.abc,
            color: Colors.white70,
            size: 75,),
            onPressed: () => print("2"),),
            ElevatedButton(
          child: const Icon(
            Icons.abc,
            color: Colors.teal,
            size: 75,),
            onPressed: () => print("3"),),
            ],
      ),
      ]
      ),
      // body: Center(
      //   child: ElevatedButton(
      //     child: const Icon(
      //       Icons.mobile_friendly,
      //       size: 80,
      //     ),
      //     onPressed: () => print("pressed"),
      //   )
      // ),
      backgroundColor: Color.fromARGB(160, 61, 61, 61),
    );
  }
}
