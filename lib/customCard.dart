import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String name ;final String date;final String email;
  final String imaName;
  const CustomListTile ({super.key,required this.imaName,required this.name,required this.email,required this.date});

  @override
  Widget build (BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: BorderDirectional(bottom: BorderSide(color: Colors.blue)),
      ),
      padding: const EdgeInsetsDirectional.all(10),
      child: Row(
        children: [
          Container(
            decoration: const BoxDecoration(
              //border:Border.all(),
            ),
            height: 60,
            width: 60,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(60),
              child: Image.asset(imaName,fit: BoxFit.cover),
            ),
          ),
          Expanded(
              child:Container(
                // decoration: BoxDecoration(
                //   border: Border.all(color: Colors.red),
                // ),
                child: ListTile(
                  title: Text(name,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                  subtitle: Text(email,style: const TextStyle(fontSize: 14),),
                  trailing: Text(date,style: const TextStyle(fontSize: 14),),
                ),
              )
          )
        ],
      ),
    );
  }
}