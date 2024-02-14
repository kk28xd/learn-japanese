import 'package:flutter/material.dart';



class pageOne extends StatefulWidget{
  @override
  State<pageOne> createState() => _pageOne();
  const pageOne ({super.key});
}

class _pageOne extends State<pageOne>{
  @override
  void initState() {
    print("========================pageOne");
    super.initState();
  }
  @override
  void dispose() {
    print("========================pageOne Bye Bye");
    super.dispose();
  }
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("page One"),
          ],
        ),
        shadowColor: Colors.red,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Container(
              height: 300,width: 300,
              decoration: BoxDecoration(
                border:Border.all(width: 5,color: Colors.blue),
                borderRadius:const BorderRadius.all(Radius.circular(500)),
                boxShadow: [
                  BoxShadow(color: Colors.black,offset: Offset.fromDirection(10,10)),
                  BoxShadow(color: Colors.black,offset: Offset.fromDirection(10,-10)),
                ],
                color: Colors.red,
              ),
              child: const Center(child: Text("page One",style: TextStyle(
                  fontSize: 40,
                  color: Colors.white
              ),)),
            ),
          ),
          Container(
            child: Column(
              children: [
                MaterialButton(onPressed: (){
                  Navigator.of(context).pushNamed("pageTwo");
                },color: Colors.cyan,
                  minWidth: 100,
                  child: const Text("page two",style: TextStyle(
                    color: Colors.white,
                  ),),
                ),
                MaterialButton(onPressed: (){
                  Navigator.of(context).pushNamedAndRemoveUntil("home", (route) => false);
                },color: Colors.cyan,
                  child: const Text("Home Page",style: TextStyle(
                    color: Colors.white,
                  ),),)
              ],
            ),
          )
        ],
      ),
    );
  }
}