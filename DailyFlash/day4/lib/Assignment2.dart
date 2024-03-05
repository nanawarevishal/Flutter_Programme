
import 'package:flutter/material.dart';


class Assignment2 extends StatelessWidget{
  const Assignment2({super.key});


    @override
    Widget build(BuildContext context){
        return Scaffold(
            body: Center(
                child: ElevatedButton(
                    style: const ButtonStyle(
                        shape: MaterialStatePropertyAll(
                            CircleBorder()
                        ),
                        fixedSize: MaterialStatePropertyAll(Size(200,200)),
                        side: MaterialStatePropertyAll(BorderSide(
                            color: Colors.red
                        ))
                       

                    ),  
                    onPressed: (){}, 
                    child: const Text("Submit")
                ),
            ),
        );
    }
}