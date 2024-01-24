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
        appBar: AppBar(
          title: const Text("Container Assignment 10"),
          centerTitle: true,
        ),
        body: Container(
          // height: double.infinity,
          // color: Colors.black,
          child: Row(
            children: [
              
              Container(
                margin:EdgeInsets.only(bottom: 400),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 85, 255, 7),
                  border: Border.all(color: Colors.red),
                  borderRadius: BorderRadius.circular(20)
                ),
                width: 300,
                height: 300,
              ),
              Container(
                alignment: Alignment.bottomRight,
              margin:const  EdgeInsets.only(
                  top: 400,
                  left: 935
                ),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 7, 7),
                  border: Border.all(color: const Color.fromARGB(255, 13, 252, 0)),
                  borderRadius: BorderRadius.circular(20)
                ),
                width: 300,
                height: 300,
              ),
            ],
          ),
        )
      ),
    );
  }
}
