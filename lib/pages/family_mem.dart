import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class family_mem extends StatelessWidget {
  const family_mem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff533D34),
        title: Text("Family Members", style: TextStyle(color: Colors.white)),
      ),
      body: ListView.builder(
        itemCount: j.length,
        itemBuilder: (context, i) {
          return Container(
            height: 95,
            color: Color(0xff528032),
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
    'lead': 'assets/images/family_members/family_father.png',
    'title': 'chichioya',
    'sub': 'father',
    'sound' : 'sounds/family_members/father.wav'
  },
  {
    'lead': 'assets/images/family_members/family_daughter.png',
    'title': 'musume',
    'sub': 'daughter',
    'sound' : 'sounds/family_members/daughter.wav'
  },
  {
    'lead': 'assets/images/family_members/family_grandfather.png',
    'title': 'ojiisan',
    'sub': 'grandfather',
    'sound' : 'sounds/family_members/grand father.wav'
  },
  {
    'lead': 'assets/images/family_members/family_mother.png',
    'title': 'hahaoya',
    'sub': 'mother',
    'sound' : 'sounds/family_members/mother.wav'
  },
  {
    'lead': 'assets/images/family_members/family_grandmother.png',
    'title': 'sobo',
    'sub': 'grandmother',
    'sound' : 'sounds/family_members/grand mother.wav'
  },
  {
    'lead': 'assets/images/family_members/family_older_brother.png',
    'title': 'nīsan',
    'sub': 'older_brother',
    'sound' : 'sounds/family_members/older bother.wav'
  },
  {
    'lead': 'assets/images/family_members/family_older_sister.png',
    'title': 'Ane',
    'sub': 'older_sister',
    'sound' : 'sounds/family_members/older sister.wav'
  },
  {
    'lead': 'assets/images/family_members/family_son.png',
    'title': 'Musuko',
    'sub': 'son',
    'sound' : 'sounds/family_members/son.wav'
  },
  {
    'lead': 'assets/images/family_members/family_younger_brother.png',
    'title': 'Otooto',
    'sub': 'younger_brother',
    'sound' : 'sounds/family_members/younger brohter.wav'
  },
  {
    'lead': 'assets/images/family_members/family_younger_sister.png',
    'title': 'Imooto',
    'sub': 'younger_sister',
    'sound' : 'sounds/family_members/younger sister.wav'
  },
];
