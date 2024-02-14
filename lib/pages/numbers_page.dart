import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class num_page extends StatelessWidget {
  const num_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff533D34),
        title: Text("Numbers", style: TextStyle(color: Colors.white)),
      ),
      body: ListView.builder(
        itemCount: j.length,
        itemBuilder: (context, i) {
          return Container(
            height: 95,
            color: Color(0xffFF9F3B),
            child: Row(
              children: [
                Container(
                  color: Color(0xffFFF3DE),
                  child: Image.asset(j[i]['lead']),
                ),
                Expanded(
                  child: ListTile(
                    title: Text(j[i]['title'],
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                    subtitle: Text("- ${j[i]['sub']}",
                        style: TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.bold)),
                    trailing: IconButton(
                      onPressed: () {
                        final player = AudioPlayer();
                        player.play(AssetSource(j[i]['sound']));
                      },
                      icon: Icon(Icons.play_arrow,size: 24,color: Colors.white),
                    )
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

List j = [
  {
    'lead': 'assets/images/numbers/number_one.png',
    'title': 'ichi',
    'sub': 'one',
    'sound' : 'sounds/numbers/number_one_sound.mp3'
  },
  {
    'lead': 'assets/images/numbers/number_two.png',
    'title': 'ni',
    'sub': 'two',
    'sound' : 'sounds/numbers/number_two_sound.mp3'
  },
  {
    'lead': 'assets/images/numbers/number_three.png',
    'title': 'san',
    'sub': 'three',
    'sound' : 'sounds/numbers/number_three_sound.mp3'
  },
  {
    'lead': 'assets/images/numbers/number_four.png',
    'title': 'shi',
    'sub': 'four',
    'sound' : 'sounds/numbers/number_four_sound.mp3'
  },
  {
    'lead': 'assets/images/numbers/number_five.png',
    'title': 'go',
    'sub': 'five',
    'sound' : 'sounds/numbers/go.mp3'
  },
  {
    'lead': 'assets/images/numbers/number_six.png',
    'title': 'roku',
    'sub': 'six',
    'sound' : 'sounds/numbers/number_six_sound.mp3'
  },
  {
    'lead': 'assets/images/numbers/number_seven.png',
    'title': 'shichi',
    'sub': 'seven',
    'sound' : 'sounds/numbers/shichi.mp3'
  },
  {
    'lead': 'assets/images/numbers/number_eight.png',
    'title': 'hachi',
    'sub': 'eight',
    'sound' : 'sounds/numbers/number_eight_sound.mp3'
  },
  {
    'lead': 'assets/images/numbers/number_nine.png',
    'title': 'ku',
    'sub': 'nine',
    'sound' : 'sounds/numbers/number_nine_sound.mp3'
  },
  {
    'lead': 'assets/images/numbers/number_ten.png',
    'title': 'juu',
    'sub': 'ten',
    'sound' : 'sounds/numbers/juu.mp3'
  },
];
