

import 'package:flutter/material.dart';

class Assignment02 extends StatefulWidget{
  const Assignment02({super.key});

      @override
      State<StatefulWidget> createState()=>_Assignment02State();
}

class _Assignment02State extends State<Assignment02>{

    bool box1Color = false;
    bool box2Color = false;

    @override
    Widget build(BuildContext context) {
        
        return MaterialApp(
            home: Scaffold(
                appBar: AppBar(
                    title: const Text("Color Box"),
                    backgroundColor: Color.fromARGB(255, 15, 14, 14),
                ),

                body: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment:  CrossAxisAlignment.center,
                            children: [
                                Column(
                                    children: [
                                        Container(
                                            height: 100,
                                            width: 100,
                                            color: box1Color ? Colors.red : Colors.black,
                                        ),

                                        const SizedBox(
                                            height: 20,
                                        ),
                                        ElevatedButton(
                                            onPressed: (){
                                                setState(() {
                                                  box1Color = !box1Color;
                                
                                                });
                                            }, child: const Text("Color Box1"))

                                    ],
                                ),

                                const SizedBox(
                                    width:  20,
                                ),

                                Column(
                                    children: [
                                        Container(
                                            height: 100,
                                            width: 100,
                                            color: box2Color ? Colors.blue : Colors.black,
                                        ),

                                        const SizedBox(
                                            height: 20,
                                        ),

                                        ElevatedButton(
                                            onPressed: (){
                                                setState(() {
                                                  box2Color = !box2Color;
                                
                                                });
                                            }, child: const Text("Color Box2"))

                                    ],
                                ),

                               
                            ],
                        )
                    ],
                ),
            ),
        );
    }

}