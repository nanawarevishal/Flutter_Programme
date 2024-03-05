

/*
    1.Create a Container in the Center of the screen, now In the background of
        the Container display an Image (the image can be an asset or network
        image ). Also, display text in the center of the Container.

*/



import 'package:flutter/material.dart';

class Assignment2 extends StatelessWidget{
  const Assignment2({super.key});

  @override
    Widget build(BuildContext context) {
        return Scaffold(
                body: Center(
                child: Container(
                    alignment: Alignment.center,
                    width: 300,
                    height: 300,
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.red
                        ),
                        image: const DecorationImage(
                            image: AssetImage("assets/img.jpg"),
                            fit: BoxFit.cover)
                    ),
                    child: const Text("Core2Web",
                            style: TextStyle(
                                color: Colors.green
                            ),
                    )
                ),
            ),
        );
    } 
}