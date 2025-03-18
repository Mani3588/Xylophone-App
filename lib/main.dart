import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final player = AudioPlayer();

  void playSound(int audioNumber) async {
    await player.play(AssetSource('note$audioNumber.wav'));
  }

  Expanded package(int index, dynamic color) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(index);
        },
        child: Container(color: color),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'XYLOPHONE APP',
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Expanded(
                //   child: TextButton(
                //     onPressed: () {
                //       playSound(1);
                //     },
                //     child: Container(color: Colors.red),
                //   ),
                // ),
                // Expanded(
                //   child: TextButton(
                //     onPressed: () {
                //       playSound(2);
                //     },
                //     child: Container(color: Colors.orange),
                //   ),
                // ),
                // Expanded(
                //   child: TextButton(
                //     onPressed: () {
                //       playSound(3);
                //     },
                //     child: Container(color: Colors.yellow),
                //   ),
                // ),
                // Expanded(
                //   child: TextButton(
                //     onPressed: () {
                //       playSound(4);
                //     },
                //     child: Container(color: Colors.green),
                //   ),
                // ),
                // Expanded(
                //   child: TextButton(
                //     onPressed: () {
                //       playSound(5);
                //     },
                //     child: Container(color: Colors.teal),
                //   ),
                // ),
                // Expanded(
                //   child: TextButton(
                //     onPressed: () {
                //       playSound(6);
                //     },
                //     child: Container(color: Colors.blue),
                //   ),
                // ),
                // Expanded(
                //   child: TextButton(
                //     onPressed: () {
                //       playSound(7);
                //     },
                //     child: Container(color: Colors.purple),
                //   ),
                // ),
                package(1, Colors.red),
                package(2, Colors.orange),
                package(3, Colors.yellow),
                package(4, Colors.green),
                package(5, Colors.teal),
                package(6, Colors.blue),
                package(7, Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
