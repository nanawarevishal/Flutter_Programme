

/*
    3. Create a Screen with two horizontally aligned containers at the center of the
        screen. Apply a shadow to each container set individual colors and give a border
        to the Containers only the bottom edges of the container must be rounded.

*/


import 'package:flutter/material.dart';

class Assignment3 extends StatelessWidget{
  const Assignment3({super.key});

  @override
  Widget build(BuildContext context) {
        return Scaffold(
            body: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    const Column(),
                    Container(
                        height: 200,
                        width: 200,
                       padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            boxShadow: const[
                                BoxShadow(
                                    color: Colors.green,
                                    offset: Offset(10,10),
                                    blurRadius: 20,
                                    
                                )
                            ],
                            color: Colors.redAccent,
                            border: Border.all(
                                color: Colors.black
                            ),
                            borderRadius: BorderRadius.circular(10),
                        ),
                        
                    ),
                    Container(
                        height: 200,
                        width: 200,
                       padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 105, 114, 240),
                            border: Border.all(
                                color: Colors.black
                            ),
                            borderRadius: BorderRadius.circular(10),
                              boxShadow: const[
                                BoxShadow(
                                    color: Color.fromARGB(255, 250, 189, 46),
                                    offset: Offset(10,10),
                                    blurRadius: 10,
                                    
                                )
                            ],
                        ),
                        
                    ),
                ],
            ),
        );
  }
    
}