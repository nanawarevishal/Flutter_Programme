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
          title:const Text("AppBar Assignment 11"),
          centerTitle: true,
        ),
        body: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      color: const Color.fromARGB(255, 15, 6, 6),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.red,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: const Color.fromARGB(255, 54, 57, 244),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      color: Color.fromARGB(255, 218, 245, 12),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: const Color.fromARGB(255, 54, 244, 92),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Color.fromARGB(255, 244, 54, 184),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}
