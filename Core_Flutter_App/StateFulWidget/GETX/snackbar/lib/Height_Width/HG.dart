

import 'package:flutter/material.dart';

class HeightAndWidth extends StatefulWidget{

    State<HeightAndWidth> createState()=>_HeightWidthState();
}

class _HeightWidthState extends State<HeightAndWidth>{

    Widget build(BuildContext context){
        return Scaffold(
            body: 
                    Container(
                        height: MediaQuery.of(context).size.height*.1,
                        color: Colors.red,
                        child: Center(
                            child: Text("Center")),
                    ),
        );
    }
}