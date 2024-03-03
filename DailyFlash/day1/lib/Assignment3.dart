

import 'package:flutter/material.dart';

class Assignment3 extends StatelessWidget{
  const Assignment3({super.key});

  @override
  Widget build(BuildContext context) {
        return Scaffold(
            appBar: PreferredSize(preferredSize: Size(MediaQuery.of(context).size.width, 50),
                 child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    decoration:  const BoxDecoration(
                        color: Colors.red,
                       borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50),
                        )
                    ),
                 )),
            
        );
  }
    
}