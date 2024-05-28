import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int I = 0;
  void updateI() {
    I += 1;
    print("$I");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Hello World"),
        backgroundColor: Colors.lightBlue,
      ),
      body: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // TextField(
            //   ,
            // )
            const Text(
              "I'm Sans!!",
              style: TextStyle(
                  fontSize: 30.0, fontFamily: "sansss", color: Colors.green),
            ),
            const Text(
              "I'm Default!!",
              style: TextStyle(
                  fontSize: 30.0,
                  // fontFamily: "sansss",
                  color: Colors.green),
            ),
            const Text(
              "I'm Ubuntu!!",
              style: TextStyle(
                  fontSize: 30.0, fontFamily: "ubuntu", color: Colors.green),
            ),
            Text(
              "I'm the Counter : $I",
              style: const TextStyle(color: Colors.green),
            ),
            // TextSpan("$i")
            // Test()
          ],
        )
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(updateI);
        },
        shape: const OvalBorder(),
      ),
      backgroundColor: Colors.black,
    );
  }
}

// class Test extends StatefulWidget {
//   const Test({super.key});

//   @override
//   State<Test> createState() => _TestState();
// }

// class _TestState extends State<Test> {
//   @override
//   Widget build(BuildContext context) {
//     return Text("$I",style: TextStyle(color: Colors.blueGrey[50]),);
//   }
// }

// class Test extends StatelessWidget {
//   const Test({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Text("$I");
//   }
// }
