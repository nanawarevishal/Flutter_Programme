import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body:Center(
          child:Container(
              width: 200,
              height:200,
              decoration:  BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  width: 4.0
                ),
                color: const Color.fromARGB(255, 4, 121, 8),
                shape: BoxShape.circle,
                boxShadow:  const [
                  BoxShadow(
                    color: Color.fromARGB(255, 254, 84, 84),
                    offset: Offset(20, 40),
                    blurRadius: 40
                  )
                ]
              )
  
          )
        )
      ),
    );
  }
}
