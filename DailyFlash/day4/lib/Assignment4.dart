
import 'package:flutter/material.dart';

class Assignment4 extends StatefulWidget{
    const Assignment4({super.key});

    @override
    State<StatefulWidget> createState() {
            return _Assignment4();
    }
    
}


class _Assignment4 extends State{

    @override
    Widget build(BuildContext context){
        return  Scaffold(
            floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterTop,
            floatingActionButton: FloatingActionButton(
                hoverColor: Colors.orange,
                onPressed: (){
                  
                },
            child: const Text("Hover"),),
        );
    }
}