

/*
    4. Create a Screen in which we will display 3 Containers of Size 100,100 in a
        Row. Give color to the containers. The containers must divide the free
        space in the main axis evenly among each other.

*/


import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Assignment4 extends StatelessWidget{
  const Assignment4({super.key});

  @override
  Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text("Profile Information",style: TextStyle(color: Colors.white),),
                backgroundColor: Colors.black,
            ),

            body: Center(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                        Container(
                            height: 250,
                            width: 250,
                            padding: const EdgeInsets.all(8),
                            decoration: const BoxDecoration(
                               color: Colors.red
                            ),
                        ),
                        Container(
                            height: 250,
                            width: 250,
                            padding: const EdgeInsets.all(8),
                            decoration: const BoxDecoration(
                               color: Colors.green
                            ),
                        ),
                        Container(
                            height: 250,
                            width: 250,
                            padding: const EdgeInsets.all(8),
                            decoration: const BoxDecoration(
                               color: Colors.blue
                            ),
                        ),
                    ],
                ),
            ),
        );
   }  
}