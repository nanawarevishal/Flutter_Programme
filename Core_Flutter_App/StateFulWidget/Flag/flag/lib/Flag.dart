

import 'package:flutter/material.dart';

class Flag extends StatefulWidget{
  const Flag({super.key});

  @override
  State<StatefulWidget> createState() {
    return _FlagState();
  }
}

class _FlagState extends State<Flag>{

 int? _counter = -1;
  @override
  Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(179, 7, 255, 15),
            title: const Text("Flag"),
            centerTitle: true,
          ),
          body: Container(
            height: double.infinity,
            margin: const EdgeInsets.only(
              top: 90, 
              bottom: 50
              ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    (_counter! >= 0)?
                    Container(
                      width: 10,
                      height: 500,
                      color: const Color.fromARGB(255, 199, 175, 103),
                    ) :
                    Container(

                    )
                  ],
                ),
                Column(
                  children: [
                    (_counter! >=1)?
                    Container(
                      width: 200,
                      height: 50,
                      color: Colors.orange,
                    ):
                    Container(),
                    Stack(
                      alignment: Alignment.center, 
                      children: [
                        (_counter! >=2)?
                      Container(
                        width: 200,
                        height: 50,
                        color: Colors.white,
                      ):Container(),

                      (_counter!>=3) ?
                      Image.network(
                        "https://www.shutterstock.com/image-vector/wheel-spokes-vector-iconmodern-ashok-600nw-2334393665.jpg",
                        width: 60,
                        height: 60,
                      ):
                      Container()
                    ]),

                    (_counter!>=4)?
                    Container(
                      width: 200,
                      height: 50,
                      color: Colors.green,
                    ):
                    Container(),
                  ],
                )
              ],
            ),
          ),

          floatingActionButton: FloatingActionButton(onPressed:(){
            _incrementCounter();
          },
          child: const Icon(Icons.add), ),
        );
  }

  void _incrementCounter(){
    setState(() {
        _counter = _counter!+1;
    });
  }
    
}