import 'package:flutter/material.dart';

class Init extends StatefulWidget {
  const Init({super.key});

  @override
  State<Init> createState() => _InitState();
}

class _InitState extends State<Init> {
  int noOfPlayers = 0;

  void nav(int n) {
    switch (n) {
      case 2:
        Navigator.pushNamed(context, "/2pInit");
        break;
      case 3:
        Navigator.pushNamed(context, "/3pInit");
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Select Number of Players"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            RadioListTile(
                selected: true,
                onFocusChange: (value) => setState(() {}),
                // toggleable: true,
                // autofocus: true,
                // dense: true,
                // visualDensity: ,
                // shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.elliptical(99999, 4))),
                // fillColor: MaterialStateColor.resolveWith((states) => Colors.red),
                // activeColor: Colors.lightBlue[700],
                // selectedTileColor: Colors.amber,
                title: const Text("2 Players"),
                value: 2,
                groupValue: noOfPlayers,
                onChanged: (value) => setState(() {
                      // print("$value");
                      noOfPlayers = value!;
                    })),
            RadioListTile(
                title: const Text("3 Players"),
                value: 3,
                groupValue: noOfPlayers,
                onChanged: (value) => setState(() {
                      // print("$value");
                      noOfPlayers = value!;
                    })),
            ElevatedButton(onPressed: () => nav(noOfPlayers), child: const Text("Next"))
          ],
        )
        //  ElevatedButton(child:const Text("2P"),
        // onPressed: () => Navigator.popAndPushNamed(context, "/3p"),),
        );
  }
}
