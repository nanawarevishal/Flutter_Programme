import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor:const  Color.fromARGB(179, 7, 255, 15),
            title: const Text("Flag"),
            centerTitle: true,
          ),
          body: Container(
            height: double.infinity,
            margin: const EdgeInsets.only(top: 100, bottom: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      width: 10,
                      height: 500,
                      color: const Color.fromARGB(255, 199, 175, 103),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 200,
                      height: 50,
                      color: Colors.orange,
                    ),
                    Stack(
                      alignment: Alignment.center, 
                      
                      children: [
                      Container(
                        width: 200,
                        height: 50,
                        color: Colors.white,
                      ),
                      Image.network(
                        "https://www.shutterstock.com/image-vector/wheel-spokes-vector-iconmodern-ashok-600nw-2334393665.jpg",
                        width: 60,
                        height: 60,
                      )
                    ]),
                    Container(
                      width: 200,
                      height: 50,
                      color: Colors.green,
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
