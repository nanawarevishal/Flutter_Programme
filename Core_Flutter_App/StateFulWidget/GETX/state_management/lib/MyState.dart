

import 'dart:async';

import 'package:flutter/material.dart';

class MyState extends StatefulWidget{

    State createState()=>_MyState();
}

class _MyState extends State{
    int x = 0;

    void initState(){
        super.initState();

        Timer.periodic(Duration(seconds: 1), (timer) {
            x++;
            setState(() {
              
            });
         });
    }

    Widget build(BuildContext context){
        print("rebuild");
        return Scaffold(
            
            body: Center(
                child: Text(x.toString(),style: TextStyle(fontWeight: FontWeight.w800),),
            ),
        );
    }
}