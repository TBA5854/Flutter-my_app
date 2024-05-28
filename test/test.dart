// import 'package:http/http.dart' as http;
// import 'package:fire';
// import 'package:dart_eval/dart_eval.dart';
// import 'dart:math';

import "dart:ui";

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:TBA5854.firstapp/firebase_options.dart';

// ...
void main() async {

await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  var db = FirebaseFirestore.instance;
  var t = <String, dynamic>{"user_name": "U1", "points": 45};
  await db.collection("TBA5854").add(t).then((value) => print(value));
  // List l = [1];
  // List k = [2, 3];
  // List m = l + k;
  // m.shuffle();
  // print(m);
  // var x = http.Client();
  // Map t = (await http.read(Uri.parse(r"https://opentdb.com/api.php?amount=10&category=18&type=multiple")));
  // List.generate(5, (index) => print(index));
  //
  // print(t["results"]);
}
