
import 'package:flutter/material.dart';

class Assignment2 extends StatelessWidget{
  const Assignment2({super.key});

    @override
    Widget build(BuildContext context){
        return Scaffold(
            body: Center(
                child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                        border: const Border(
                            left: BorderSide(
                                color: Colors.black,
                                width: 5
                            )
                        ),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red,
                    ),
                    child: const Center(child:  Text("Core2Web"),),
                ),

                
            ),
        );
    }
}