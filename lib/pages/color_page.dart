import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class color_page extends StatelessWidget {
  const color_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff533D34),
        title: Text("Colors", style: TextStyle(color: Colors.white)),
      ),
      body: ListView.builder(
        itemCount: j.length,
        itemBuilder: (context, i) {
          return Container(
            height: 95,
            color: Color(0xff7D40A2),
            child: Row(
              children: [
                Container(
                  height: 95,
                  width: 95,
                  color: Color(0xffFFF3DE),
                  child: CircleAvatar(
                    backgroundColor: Color(0xffFFF3DE),
                    backgroundImage: AssetImage(j[i]['lead']),
                  )
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
    'lead': 'assets/images/colors/color_black.png',
    'title': 'black',
    'sub': 'black',
    'sound' : 'sounds/colors/black.wav'
  },
  {
    'lead': 'assets/images/colors/color_brown.png',
    'title': 'chairo',
    'sub': 'brown',
    'sound' : 'sounds/colors/brown.wav'
  },
  {
    'lead': 'assets/images/colors/color_dusty_yellow.png',
    'title': 'hokori ppoi kiiro',
    'sub': 'dusty_yellow',
    'sound' : 'sounds/colors/dusty yellow.wav'
  },
  {
    'lead': 'assets/images/colors/color_gray.png',
    'title': 'gre',
    'sub': 'gray',
    'sound' : 'sounds/colors/gray.wav'
  },
  {
    'lead': 'assets/images/colors/color_green.png',
    'title': 'midori',
    'sub': 'green',
    'sound' : 'sounds/colors/green.wav'
  },
  {
    'lead': 'assets/images/colors/color_red.png',
    'title': 'aka',
    'sub': 'red',
    'sound' : 'sounds/colors/red.wav'
  },
  {
    'lead': 'assets/images/colors/color_white.png',
    'title': 'shiroi',
    'sub': 'white',
    'sound' : 'sounds/colors/white.wav'
  },
  {
    'lead': 'assets/images/colors/yellow.png',
    'title': 'kiiro',
    'sub': 'yellow',
    'sound' : 'sounds/colors/yellow.wav'
  },
];
