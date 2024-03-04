

/*
    Create a Container with size(height:200, width:300) now give a shadow to
    the container but the shadow must only be at the top side of the container.

*/



import 'package:flutter/material.dart';


class Assignment4 extends StatefulWidget{
  const Assignment4({super.key});

  @override
    State<StatefulWidget> createState() {
        return _Assignment4();
    }
}

class _Assignment4 extends State{

    bool flag = false;
  @override
    Widget build(BuildContext context) {
        return Scaffold(
                body: Center(
                child: Container(
                    alignment: Alignment.center,
                    width: 300,
                    height: 200,
                    decoration: const BoxDecoration(
                        color: Colors.green,
                       boxShadow:[
                            BoxShadow(
                                color: Color.fromARGB(137, 244, 67, 54),
                                offset: Offset(0,-10),
                                blurRadius: 7
                            )
                        ]
                ),
                child:const Text("Center")),
            ),
        );
    } 
}