
import 'package:flutter/material.dart';

class Assignment5 extends StatefulWidget{
    const Assignment5({super.key});

    @override
    State createState()=>_Assignment5State();
}


class _Assignment5State extends State{

    int selectedContainer = -1;
    Color changeColor(int containerIndex){
        if(containerIndex == selectedContainer){
            selectedContainer = -1;
            return Colors.red;
        }

        return Colors.transparent;
    }
    
    @override
    Widget build(BuildContext context){
        return Scaffold(
            body: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                    const Row(),
                    GestureDetector(
                        onTap: (){
                            if(selectedContainer==-1){
                                selectedContainer = 1;
                            }
                            setState(() {
                              
                            });
                        },
                      child: Container(
                          width: 200,
                          height: 100,
                          decoration: BoxDecoration(
                          color: changeColor(1),
                              border: Border.all(
                                  color: Colors.black
                              )
                          ),
                      ),
                    ),
                    GestureDetector(
                        onTap: (){
                             if(selectedContainer==-1){
                                selectedContainer = 2;
                            }
                            setState(() {
                              
                            });
                        },
                      child: Container(
                          width: 200,
                          height: 100,
                          decoration: BoxDecoration(
                          color: changeColor(2),
                              border: Border.all(
                                  color: Colors.black
                              )
                          ),
                      ),
                    ),
                     GestureDetector(
                        onTap: (){
                             if(selectedContainer==-1){
                                selectedContainer = 3;
                            }
                            setState(() {
                              
                            });
                        },
                      child: Container(
                          width: 200,
                          height: 100,
                          decoration: BoxDecoration(
                          color: changeColor(3),
                              border: Border.all(
                                  color: Colors.black
                              )
                          ),
                      ),
                    ),
                ],
            )
            
        );
    }
}