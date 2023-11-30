import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

void sounded(int A) {
  final player = AudioPlayer();
  player.play(AssetSource('note$A.wav'));
}

Expanded key(int A, backgroundColor) {
  return Expanded(
    child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape:
                const BeveledRectangleBorder(borderRadius: BorderRadius.zero)),
        onPressed: () {
          sounded(A);
        },
        child: Container()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          key(1, Colors.deepPurpleAccent),
          key(2, Colors.lightBlueAccent),
          key(3, Colors.lightGreenAccent),
          key(4, Colors.deepOrangeAccent),
          key(5, Colors.yellowAccent),
          key(6, Colors.redAccent),
          key(7, Colors.brown)
        ],
      )),
    ));
  }
}
