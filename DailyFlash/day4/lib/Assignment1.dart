
import 'package:flutter/material.dart';

class Assignment1 extends StatelessWidget{
  const Assignment1({super.key});


    @override
    Widget build(BuildContext context){
        return Scaffold(
            body: Center(
                child: ElevatedButton(
                    style: const ButtonStyle(
                        shadowColor: MaterialStatePropertyAll(Colors.red)
                    ),
                    onPressed: (){}, 
                    child: const Text("Submit")
                ),
            ),
        );
    }
}