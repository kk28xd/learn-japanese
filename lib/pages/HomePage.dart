import 'dart:convert';
import 'dart:io';
import 'package:drop_down_list/model/selected_list_item.dart';
import 'package:flutter_project/bngarb.dart';
import 'package:flutter_project/pages/color_page.dart';
import 'package:flutter_project/pages/family_mem.dart';
import 'package:flutter_project/pages/numbers_page.dart';
import 'package:flutter_project/pages/phrases_page.dart';
import 'package:http/http.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../componants/category.dart';

GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
int a = 0;
int b = 0;

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePage();

  const HomePage({super.key});
}

ScrollController scrollController = ScrollController();
List names = [
  {"Name": "Abdo Ayman"},
  {"Name": "Yousef Oregi"},
  {"Name": "Yousef Osama"},
  {"Name": "Mostafa Ewass"},
  {"Name": "Mohamed Deyaa"},
  {"Name": "Omar Elwan"},
  {"Name": "Mohamed Osama"},
  {"Name": "Ali Osama"},
  {"Name": "Mohamed Elsayed"},
  {"Name": "Ahmed Abdelazeem"},
  {"Name": "Adham Shrif"},
  {"Name": "Yousef Hamdy"},
];
List? filter;
TextEditingController textEditingController = TextEditingController();
// TextEditingController textEditingControllerA = TextEditingController();

class _HomePage extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      print(scrollController.offset);
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffFFF4D9),
        appBar: AppBar(
          backgroundColor: Color(0xff533D34),
          title: Text("Toku", style: TextStyle(color: Colors.white)),
        ),
        body: Column(
          children: [
            Cat(color: Color(0xffFF9F3B), c: "Numbers" , onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => num_page(),));
            }),
            Cat(color: Color(0xff528032), c: "Family Members", onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => family_mem(),));
            }),
            Cat(color: Color(0xff7D40A2), c: "Colors", onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => color_page(),));
            }),
            Cat(color: Color(0xff47A5CB), c: "Phrases", onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => phrases_page(),));
            }),
          ],
        ));
  }
}


