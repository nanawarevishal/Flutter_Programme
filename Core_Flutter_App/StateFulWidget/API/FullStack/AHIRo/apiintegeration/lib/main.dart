import 'package:apiintegeration/HomePage.dart';
import 'package:flutter/material.dart';

void main()=>runApp(const MyApp());


class MyApp extends StatefulWidget{
    const MyApp({super.key});

    @override
    State<MyApp> createState()=>_RestAPIState();
}

class _RestAPIState extends State<MyApp>{

    Widget build(BuildContext context){
        
        return MaterialApp(
            home: Scaffold(
                appBar: AppBar(
                    title: const Text("API Testing"),
                ),
                body:  HomePage(),
            ),
        );
    }
}