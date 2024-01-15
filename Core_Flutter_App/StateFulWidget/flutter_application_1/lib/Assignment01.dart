

import 'package:flutter/material.dart';

class Assignment01 extends StatefulWidget{

    const Assignment01({super.key});

    @override
    State<Assignment01> createState() {
        
        return _Assignment1State();
    }
}

class _Assignment1State extends State<Assignment01>{

    int? _count = 0;

    void _printTableValue(){
        setState(() {
          _count = _count! + 2;
        });
    }

    @override
    Widget build(BuildContext context) {
        
        return Scaffold(
            appBar: AppBar(
                title: const Text("Table of 2"),
            ),

            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        const Text("Click button to print table"),

                        const SizedBox(
                            height: 20,
                        ),
                        Text(
                            "$_count"
                        ),
                        const SizedBox(
                            height: 20,
                        ),
                        ElevatedButton(
                            onPressed: _printTableValue, 
                            child: const Text("Print")
                        )
                    ],
                ),
            ),
        );
    }

}