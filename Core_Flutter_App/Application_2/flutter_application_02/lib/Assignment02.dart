

import 'package:flutter/material.dart';

class Assignment extends StatelessWidget{
  final bool _isHovered = false;

  const Assignment({super.key});

  Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text("Assignment 03"),
            ),

            body: SizedBox(
                height: double.infinity,

                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                                Container(
                                    height: 200,
                                    width: 200,
                                    color: Colors.pink,
                                ),

                                const SizedBox(
                                    height: 20,
                                ),

                                ElevatedButton(onPressed: (){}, child: const Text("Button -1"),)
                            ],

                            
                        ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                                Container(
                                    height: 200,
                                    width: 200,
                                    color: Color.fromARGB(255, 83, 192, 100),
                                    
                                ),
                                const SizedBox(
                                    height: 20,
                                ),
                                ElevatedButton(
                                    onPressed: (){},
                                    child:const Text("Button-2"),
                                    style: ElevatedButton.styleFrom(
                                    backgroundColor: _isHovered ? Colors.blue : Colors.green,
                                    ),
                                ),

                            ],
                        ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                                Container(
                                    
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: const Color.fromARGB(255, 239, 239, 239)
                                    ),
                                    height: 200,
                                    width: 200,

                                    child: const Text(
                                        "This is text inside the box",
                                        style: TextStyle(color: Colors.green),
                                        textAlign: TextAlign.center,
                                        overflow: TextOverflow.ellipsis,
                                        
                                    ),
                                   
                                ),

                                const SizedBox(
                                    height: 20,
                                ),

                                ElevatedButton(onPressed: (){},child:const Text("Button-3"), )
                            ],
                        )
                    ],
                ),
            )
        );
  }
  
}