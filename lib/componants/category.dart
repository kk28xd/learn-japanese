import 'package:flutter/material.dart';

class Cat extends StatelessWidget {
  const Cat({super.key, required this.color, required this.c, required this.onTap});

  final Color color;
  final String c;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left: 20),
        height: 60,
        width: double.infinity,
        color: color,
        child: Text(c, style: TextStyle(color: Colors.white, fontSize: 20)),
      ),
    );
  }
}