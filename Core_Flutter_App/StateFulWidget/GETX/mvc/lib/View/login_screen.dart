

import 'package:flutter/material.dart';

class Login_Screen extends StatefulWidget{
  const Login_Screen({super.key});


    State createState()=>_LoginScreenState();
}

class _LoginScreenState extends State{

    Widget build(BuildContext context){
        return Scaffold(
            appBar: AppBar(
                title: const Text("Login Screen"),
            ),
        );
    }
}