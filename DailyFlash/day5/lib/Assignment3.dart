

/*
    3. Create a Screen and add your image in the center of the screen below your
        image display your name in a container, give a shadow to the Container
        and give a border to the container the top left and top right corners must
        be circular, with a radius of 20. Add appropriate padding to the container.
*/

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Assignment3 extends StatelessWidget{
  const Assignment3({super.key});

  @override
  Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text("Profile Information",style: TextStyle(color: Colors.white),),
                backgroundColor: Colors.black,
            ),

            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                        const SizedBox(height: 40,),
                        Container(
                            height: 250,
                            width: 250,
                            padding: const EdgeInsets.all(8),
                            decoration:  BoxDecoration(
                                border: Border.all(
                                    color: Colors.red
                                ),
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20)
                                ),
                                boxShadow: const[
                                    BoxShadow(
                                        color: Colors.greenAccent,
                                        spreadRadius: 10,
                                        blurRadius: 20
                                    )
                                ]
                            ),
                            child: Image.asset(
                                "assets/images/user.jpg",fit: BoxFit.fill,)
                        ),

                        const SizedBox(height: 20,),

                        const Text("Name: Jennifer Smidth")
                    ],
                ),
            ),
        );
   }  
}