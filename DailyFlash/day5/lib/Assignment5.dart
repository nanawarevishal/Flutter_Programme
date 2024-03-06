

/*
    5. Create a Screen that displays 3 widgets in a Column. The image must be the
        first widget, the next widget must be a Container of color red and the 3rd
        widget must be a Container of color blue. Place all the 3 widgets in a
        Column.
        The Image must be placed at the top center and the other 2 widgets must
        be placed at the bottom center of the screen.
*/


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Assignment5 extends StatelessWidget{
  const Assignment5({super.key});

  @override
  Widget build(BuildContext context) {
        return Scaffold(
            body: Center(
                child: Column(
                    children: [
                        SizedBox(
                            height: 200,
                            width: 200,
                            child: Image.asset(
                                "assets/images/user.jpg",fit: BoxFit.fill,)
                        ),
                        const Spacer(),
                        Container(
                            height: 200,
                            width: 200,
                            
                            decoration: const BoxDecoration(
                               color: Colors.red
                            ),
                        ),
                        Container(
                            height: 200,
                            width: 200,
                            decoration: const BoxDecoration(
                               color: Colors.blue
                            ),
                        ),
                    ],
                ),
            ),
        );
   }  
}