import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class phrases_page extends StatelessWidget {
  const phrases_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff533D34),
        title: Text("Phrases", style: TextStyle(color: Colors.white)),
      ),
      body: ListView.builder(
        itemCount: j.length,
        itemBuilder: (context, i) {
          return Container(
            height: 95,
            color: Color(0xff47A5CB),
            child: Expanded(
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
          );
        },
      ),
    );
  }
}

List j = [
  {
    'title': 'koudoku suru koto wa wasure nai de kudasai',
    'sub': "Don't forget to subscribe",
    'sound' : 'sounds/phrases/dont_forget_to_subscribe.wav'
  },
  {
    'title': 'ki masu ka',
    'sub': 'Will you come?',
    'sound' : 'sounds/phrases/are_you_coming.wav'
  },
  {
    'title': 'go kibun wa ikaga desu ka',
    'sub': 'How are you feeling?',
    'sound' : 'sounds/phrases/how_are_you_feeling.wav'
  },
  {
    'title': 'watashi wa anime ga daisuk desu',
    'sub': 'I love anime',
    'sound' : 'sounds/phrases/i_love_anime.wav'
  },
  {
    'title': 'watashi wa programming ga daisuk desu',
    'sub': 'I love programming',
    'sound' : 'sounds/phrases/i_love_programming.wav'
  },
  {
    'title': 'programming wa kantan desu',
    'sub': 'Programming is easy',
    'sound' : 'sounds/phrases/programming_is_easy.wav'
  },
  {
    'title': 'namae wa nani desu ka',
    'sub': 'What is your name?',
    'sound' : 'sounds/phrases/what_is_your_name.wav'
  },
  {
    'title': 'doko ni iku no',
    'sub': 'Where are you going?',
    'sound' : 'sounds/phrases/where_are_you_going.wav'
  },
  {
    'title': 'hai watashi wa rai te iya masu',
    'sub': "Yes I'm coming",
    'sound' : 'sounds/phrases/yes_im_coming.wav'
  },
];
