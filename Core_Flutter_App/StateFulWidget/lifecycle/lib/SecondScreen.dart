

import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget{

    State createState()=>_SecondScreenState();
}

class _SecondScreenState extends State{

    
    Widget build(BuildContext context){
        return Scaffold(
            appBar: AppBar(
                title: const Text("Second Screen"),
            ),
        );
    }
}