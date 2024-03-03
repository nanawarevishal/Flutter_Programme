
import 'package:flutter/material.dart';

class Assignment4 extends StatelessWidget{
  const Assignment4({super.key});

    @override
    Widget build(BuildContext context){
        return Scaffold(
            body: Center(
                child: Container(
                    width: 200,
                    height: 200,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        border:  Border.all(
                                color: const Color.fromARGB(255, 249, 0, 207),
                                width: 3
                        ),
                        borderRadius: const BorderRadius.only(bottomRight: Radius.circular(30),topLeft: Radius.circular(30)),
                        color: const Color.fromARGB(255, 236, 147, 248),
                    ),
                    child: const Text("Core2Web")
                ),  
            ),
        );
    }
}