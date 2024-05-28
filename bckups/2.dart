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
      body: Center(
        child: Image(
          image: NetworkImage(
              "https://images.unsplash.com/photo-1713169358680-ebf92684fb0b?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mjd8fHxlbnwwfHx8fHw%3D"),
        ),
        // image:Image.asset(name)
        // image:Image.network(src)
      ),
      backgroundColor: Colors.black,
    );
  }
}
