
import 'package:flutter/material.dart';

class MyTable extends StatefulWidget{
    const MyTable({super.key});

    @override
    State<StatefulWidget> createState() => _Assignment();

}

class _Assignment extends State<MyTable>{

    int? _count=0;
    void _printTableValue(){
        setState(() {
            _count = _count! + 2;
        });
    }
    
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text("Table of the 2"),
                backgroundColor: Colors.black,
            ),

            body: Column(
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
            )
        );
    }

}