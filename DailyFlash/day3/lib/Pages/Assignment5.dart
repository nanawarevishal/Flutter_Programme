

/*
    Create a Circular Container and give the Container 2 colors i.e. red and
    blue. 50 % of the container must contain red and the other 50 % must
    contain blue color.
    (Note: The transition from the Red color to blue must be sharp)

*/

import 'package:flutter/material.dart';


class Assignment5 extends StatefulWidget{
  const Assignment5({super.key});

  @override
    State<StatefulWidget> createState() {
        return _Assignment5();
    }
}

class _Assignment5 extends State{

    bool flag = false;
    @override
    Widget build(BuildContext context) {
        return Scaffold(
                body: Center(
                child: Container(
                    alignment: Alignment.center,
                    width: 300,
                    height: 300,
                    decoration:  BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: Colors.black,
                            width: 3
                        ),
                        gradient:  const LinearGradient( 
                            colors: [
                                Colors.red,
                                Colors.blue
                            ],
                            stops: [
                                0.5,.5
                            ],
                            
                        )
                    ),
                
            ),
        )
        );
    } 
}