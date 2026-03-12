import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class XylophoneApp extends StatefulWidget {
  const XylophoneApp({super.key});

  @override
  State<XylophoneApp> createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  void play_drone(int number) {
    final drone = AudioPlayer();
    drone.play(AssetSource('note$number.wav'));
  }

  Widget Custom_Button(var height, var width, int number, Color color) {
    return GestureDetector(
      onTap: () {
        play_drone(number);
      },
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(color: color),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 0.133;
    var width = MediaQuery.of(context).size.width * 0.5;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(child: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                Custom_Button(height, width, 1, Colors.yellow),
                Custom_Button(height, width, 2, Colors.red),
              ],
            ),
            Row(
              children: [
                Custom_Button(height, width, 3, Colors.white),
                Custom_Button(height, width, 4, Colors.purple),
              ],
            ),
            Row(
              children: [
                Custom_Button(height, width, 5, Colors.pink),
                Custom_Button(height, width, 6, Colors.green),
              ],
            ),
            Row(
              children: [
                Custom_Button(height, width, 7, Colors.purple),
                Custom_Button(height, width, 1, Colors.white),
              ],
            ),
            Row(
              children: [
                Custom_Button(height, width, 2, Colors.greenAccent),
                Custom_Button(height, width, 3, Colors.orange),
              ],
            ),
            Row(
              children: [
                Custom_Button(height, width, 4, Colors.brown),
                Custom_Button(height, width, 5, Colors.yellow),
              ],
            ),
            Row(
              children: [
                Custom_Button(height, width, 6, Colors.green),
                Custom_Button(height, width, 7, Colors.pink),
              ],
            ),
          ],
        ),
      ))
    );
  }
}