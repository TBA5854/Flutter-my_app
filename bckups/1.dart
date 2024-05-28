import 'package:flutter/material.dart';

int I = 0;
void updateI() {
  I += 1;
  print("$I");
}

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
      body: const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // TextField(
            //   ,
            // )
            Text(
              "I'm Sans!!",
              style: TextStyle(
                  fontSize: 30.0, fontFamily: "sansss", color: Colors.green),
            ),
            Text(
              "I'm Default!!",
              style: TextStyle(
                  fontSize: 30.0,
                  // fontFamily: "sansss",
                  color: Colors.green),
            ),
            Text(
              "I'm Ubuntu!!",
              style: TextStyle(
                  fontSize: 30.0, fontFamily: "ubuntu", color: Colors.green),
            ),
            Text(
              "Finally",
              style: TextStyle(color: Colors.green),
            ),
            // TextSpan("$i")
            // Test()
          ],
        )
      ]),
      floatingActionButton: const FloatingActionButton(
        onPressed: updateI,
        shape: OvalBorder(),
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
