
import 'package:flutter/material.dart';

class Assignment1 extends StatelessWidget{
  const Assignment1({super.key});

    @override
    Widget build(BuildContext context){
        return Scaffold(
            body: Center(
                child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    color: Colors.red,
                    ),
                    child: const Center(child:  Text("Core2Web"),),
                ),
            ),
        );
    }
}