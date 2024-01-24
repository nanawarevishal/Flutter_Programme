import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title:const Center(
            child:  Text("Hello Core2Web")
          ) ,
        ),

        body: Center(
          child: Container(
            width: 360,
            height: 360,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
