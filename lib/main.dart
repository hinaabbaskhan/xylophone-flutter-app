import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Future<void> playAudio(int number) async {
    final player = AudioPlayer();
    await player.play(AssetSource('note$number.wav')); //note2.wav
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Xylophone'),
        ),
        body: SafeArea(
          child: Column(
            children: [
              //Note 1
              InkWell(
                onTap: () async {
                  playAudio(1);
                },
                child: Container(
                  height: 100,
                  color: Colors.red,
                ),
              ),

              //Note 2
              InkWell(
                onTap: () async {
                  playAudio(2);
                },
                child: Container(
                  height: 100,
                  color: Colors.orange,
                ),
              ),

              //Note 3
              InkWell(
                onTap: () async {
                  playAudio(3);
                },
                child: Container(
                  height: 100,
                  color: Colors.yellow,
                ),
              ),

              //Note 4
              InkWell(
                onTap: () async {
                  playAudio(4);
                },
                child: Container(
                  height: 100,
                  color: Colors.greenAccent,
                ),
              ),

              //Note 5
              InkWell(
                onTap: () async {
                  playAudio(5);
                },
                child: Container(
                  height: 100,
                  color: Colors.teal,
                ),
              ),

              //Note 6
              InkWell(
                onTap: () async {
                  playAudio(6);
                },
                child: Container(
                  height: 100,
                  color: Colors.blue,
                ),
              ),

              //Note 7
              TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                onPressed: () async {
                  playAudio(7);
                },
                child: Container(
                  height: 100,
                  color: Colors.purple,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
