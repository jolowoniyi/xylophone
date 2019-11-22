import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playMusic(int wavnumber) {
    final player = AudioCache();
    player.play('note$wavnumber.wav');
  }

  Expanded buildKey({ Color color, int wavnumber}){
   return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
         // print("I got clicked");
          playMusic(wavnumber);
        },
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.yellow, wavnumber: 1),
              buildKey(color: Colors.red, wavnumber: 2),
           buildKey(color: Colors.blue, wavnumber: 3),
             buildKey(color: Colors.green, wavnumber: 4),
          buildKey(color: Colors.deepOrange, wavnumber: 5),
          buildKey(color: Colors.pink, wavnumber: 6),
          buildKey(color: Colors.deepPurpleAccent, wavnumber: 7),



//              Expanded(
//                child: FlatButton(
//                  onPressed: () {
//                    print("I got clicked");
//                    playMusic(1);
//                  },
//                  color: Colors.yellow,
//                ),
//              ),
//              Expanded(
//                child: FlatButton(
//                  onPressed: () {
//                    playMusic(2);
//                  },
//                  color: Colors.red,
//                ),
//              ),
//              Expanded(
//                child: FlatButton(
//                  onPressed: () {
//                    playMusic(3);
//                  },
//                  color: Colors.blue,
//                ),
//              ),
//              Expanded(
//                child: FlatButton(
//                  onPressed: () {
//                    playMusic(4);
//                  },
//                  color: Colors.green,
//                ),
//              ),
//              Expanded(
//                child: FlatButton(
//                  onPressed: () {
//                    playMusic(5);
//                  },
//                  color: Colors.orange,
//                ),
//              ),
//              Expanded(
//                child: FlatButton(
//                  onPressed: () {
//                    playMusic(6);
//                  },
//                  color: Colors.pink,
//                ),
//              ),
//              Expanded(
//                child: FlatButton(
//                  onPressed: () {
//                    playMusic(7);
//                  },
//                  color: Colors.deepPurpleAccent,
 //               ),
   //           ),
            ],
          ),
        ),
      ),
    );
  }
}
