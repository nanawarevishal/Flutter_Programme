
import 'package:flutter/material.dart';

class Assignment3 extends StatelessWidget{
  const Assignment3({super.key});

    @override
    Widget build(BuildContext context){
        return Scaffold(
            body: Center(
                child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                        border:  Border.all(
                                color: const Color.fromARGB(255, 46, 0, 249),
                                width: 3
                        
                        ),
                        borderRadius: const BorderRadius.only(topRight: Radius.circular(30)),
                        color: const Color.fromARGB(255, 147, 163, 248),
                    ),
                    child: const Center(child:  Text("Core2Web"),),
                ),

                
            ),
        );
    }
}