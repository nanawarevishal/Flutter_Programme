
import 'package:flutter/material.dart';

class Assignment3 extends StatefulWidget{
    const Assignment3({super.key});

    @override
    State<StatefulWidget> createState() {
            return _Assignment3();
    }
    
}


class _Assignment3 extends State{

    bool flag = false;

    @override
    Widget build(BuildContext context){
        return  Scaffold(
            body: !flag? const Center(
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                       Text("Core2Web"),
                       Icon(Icons.timer)
                  ],
              ),
            ):Container(),

            floatingActionButton: FloatingActionButton(
                onPressed: (){
                    setState(() {
                      flag= !flag;
                    });
                },
            child: const Text("Show Data"),),
        );
    }
}