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
        body: Center(
  
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: 360,
                  height: 360,
                  color: Colors.black,
              ),
             const SizedBox(
              width: 20,
             ),
              Container(
                  width: 360,
                  height: 360,
                  color: Colors.black,
              ),
            ],
          ),


        ),
      ),
    );
  }
}
