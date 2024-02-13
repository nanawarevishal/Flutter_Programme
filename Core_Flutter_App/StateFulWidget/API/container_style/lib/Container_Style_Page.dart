

import 'package:flutter/material.dart';

class ContainerStyle extends StatefulWidget{
    const ContainerStyle({super.key});

    @override
    State createState()=>_ContainerSatyleState();
}

class _ContainerSatyleState extends State{

    @override
    Widget build(BuildContext context){
        return Scaffold(
            appBar: AppBar(
                title: const Text("Container Style"),
                centerTitle: true,
            ),
            body: SingleChildScrollView(
              child: Column(
                  children: [
                      const Row(),
                      const SizedBox(height: 40,),
              
                      Container(
                          height: 200,
                          width: 200,
                          color: Colors.red,
                      ),
              
                      const SizedBox(height:40),
              
                      const Text("Container Padding",style: TextStyle(
                          fontSize: 24
                      ),),
              
                      const SizedBox(height: 10,),
              
                      Container(
                          width: 200,
                          height: 200,
                          padding: const EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 10
                          ),
              
                          color: Colors.red,
                          child: Container(
                                width: 200,
                                height: 200,
                                color: Colors.green,
                          ),
                      ),
              
                      const SizedBox(height:40),
              
                      const Text("Container Margin ",style: TextStyle(
                          fontSize: 24
                      ),),
              
                      const SizedBox(height: 10,),
              
                      Container(
                        color: Colors.redAccent,
                        child: Container(
                            width: 200,
                            height: 200,
                            margin: const EdgeInsets.only(
                                left: 10,
                                right: 10,
                                top: 10,bottom: 10
                            ),
                                      
                            color: Colors.blue,
                        ),
                      ),
                      const SizedBox(height: 40,),
              
              
                      const Text("Container Decoration ",style: TextStyle(
                          fontSize: 24
                      ),),
              
                      const SizedBox(height: 10,),
              
                      Container(
                          width: 300,
                          height: 300,
                          decoration: const BoxDecoration(
                            border: Border(
                               left: BorderSide(
                                color: Colors.amber,
                                width: 5
                               )
                            ),

                        
                          ),
                          
                      ),
                      const SizedBox(height: 40,),


                      const Text("Container Border ",style: TextStyle(
                          fontSize: 24
                      ),),
              
                      const SizedBox(height: 10,),
              
                      Container(
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                                Radius.circular(20)
                            ),
                            border: Border.all(
                                color: Colors.yellow,
                                width: 5
                            )
                          ),
                          
                      ),
                      const SizedBox(height: 40,),

                      const Text("Container Color ",style: TextStyle(
                          fontSize: 24
                      ),),
              
                      const SizedBox(height: 10,),
              
                      Container(
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: const BorderRadius.all(
                                Radius.circular(20)
                            ),
                            border: Border.all(
                                color: Colors.yellow,
                                width: 5
                            )
                          ),
                          
                      ),
                      const SizedBox(height: 40,),

                      const Text("Container Shadow ",style: TextStyle(
                          fontSize: 24
                      ),),
              
                      const SizedBox(height: 10,),
              
                      Container(
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 197, 105, 240),
                            borderRadius: const BorderRadius.all(
                                Radius.circular(20)
                            ),
                            border: Border.all(
                                color: const Color.fromARGB(255, 255, 128, 59),
                                width: 5
                            ),

                            boxShadow: const [

                                BoxShadow(color: Colors.greenAccent,offset: Offset(30, 30),blurRadius: 8),
                                BoxShadow(color: Colors.red,offset: Offset(20, 20),blurRadius: 8),
                                BoxShadow(color: Color.fromARGB(255, 0, 0, 0),offset: Offset(10, 10),blurRadius: 8),
                            ]
                          ),
                          
                      ),
                      const SizedBox(height: 40,),

                      const Text("Container Color Gradient ",style: TextStyle(
                          fontSize: 24
                      ),),
              
                      const SizedBox(height: 10,),
              
                      Container(
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 197, 105, 240),
                            borderRadius: const BorderRadius.all(
                                Radius.circular(20)
                            ),
                            border: Border.all(
                                color: const Color.fromARGB(255, 255, 128, 59),
                                width: 5
                            ),

                            gradient: const LinearGradient(
                                 // stops: [.1,.4,.8],
                                colors: [Colors.orange,Colors.white,Colors.green]
                            )
                          ),
                          
                      ),
                      const SizedBox(height: 40,),
              
                  ],
              ),
            ),
        );
    }
}