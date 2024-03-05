
/*
    Add a container in the center of the screen with a size(width: 200,
    height: 200). Give a red border to the container. Now when the user taps
    the container change the color of the border to green.
*/



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
    Widget build(BuildContext context) {
        return Scaffold(
                body: Center(
                child: GestureDetector(
                    onTap: (){
                        setState(() {
                          flag =!flag;
                        });
                    },
                  child: Container(
                      alignment: Alignment.center,
                      width: 300,
                      height: 300,
                      padding: const EdgeInsets.all(30),
                      decoration: BoxDecoration(
                          border: Border.all(
                                width: 5,
                              color: !flag ?Colors.red : Colors.green
                          ),
                    ),
                  ),
                ),
            ),
        );
    } 
}