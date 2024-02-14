import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_project/componants/category.dart';
import 'package:flutter_project/pages/HomePage.dart';
import 'package:flutter_project/pageOne.dart';
import 'package:flutter_project/pageTwo.dart';
import 'package:flutter_project/pages/color_page.dart';
import 'package:flutter_project/pages/family_mem.dart';
import 'package:flutter_project/pages/numbers_page.dart';
import 'package:flutter_project/pages/phrases_page.dart';
import 'package:geolocator/geolocator.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

bool t = false;
TextEditingController user = TextEditingController();
GlobalKey<FormState> formState = GlobalKey();
int u = 0;

List Use = [
  {"Name": "Ahmed", "Age": 30},
  {"Name": "Mahmoud", "Age": 27},
  {"Name": "Mohamed", "Age": 20},
];

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Future<Position> _determinePosition() async {
  //   bool serviceEnabled;
  //   LocationPermission permission;
  //
  //   serviceEnabled = await Geolocator.isLocationServiceEnabled();
  //   if (!serviceEnabled) {
  //     return Future.error('Location services are disabled.');
  //   }
  //
  //   permission = await Geolocator.checkPermission();
  //   if (permission == LocationPermission.denied) {
  //     permission = await Geolocator.requestPermission();
  //     if (permission == LocationPermission.denied) {
  //       return Future.error('Location permissions are denied');
  //     }
  //   }
  //
  //   if (permission == LocationPermission.deniedForever) {
  //     return Future.error(
  //         'Location permissions are permanently denied, we cannot request permissions.');
  //   }
  //   if (permission == LocationPermission.whileInUse){
  //     double distanceInMeters = Geolocator.distanceBetween(30.138001, 24.717278, 22.028874, 36.872529);
  //     print(distanceInMeters);
  //   }
  //   return await Geolocator.getCurrentPosition();
  // }

  @override
  void initState() {
    // _determinePosition();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: HomePage()
      ),
      debugShowCheckedModeBanner: false,
    );
}
}
