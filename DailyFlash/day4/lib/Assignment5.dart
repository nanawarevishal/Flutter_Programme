
import 'package:flutter/material.dart';

class Assignment5 extends StatefulWidget{
    const Assignment5({super.key});

    @override
    State<StatefulWidget> createState() {
            return _Assignment5();
    }
    
}


class _Assignment5 extends State{

    Color? buttonColor = null;
    @override
    Widget build(BuildContext context){
        return  Scaffold(
            floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
            floatingActionButton: GestureDetector(
                onLongPress: (){
                    setState(() {
                        buttonColor = Colors.purple;
                    });
                },
              child: FloatingActionButton(
                  backgroundColor: buttonColor,
                  onPressed: (){
                    
                  },
              child: const Text("Hover"),),
            ),
        );
    }
}