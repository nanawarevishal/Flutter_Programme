
import 'package:flutter/material.dart';


class Assignment5 extends StatefulWidget{
  const Assignment5({super.key});

  @override
  State<StatefulWidget> createState() {
        return _Assignment5State();
  }
    
}

class _Assignment5State extends State{

    bool flag = false;
    @override
    Widget build(BuildContext context){
        return Scaffold(
            body: Center(
                child: GestureDetector(
                    onTap: (){
                        setState(() {
                            flag = !flag;
                        });
                    },
                  child: !flag? Container(
                      width: 200,
                      height: 200,
                      color: Colors.red,
                      child: const Center(child:  Text("Click Me")),
                  ):Container(
                      width: 200,
                      height: 200,
                      color: Colors.blue,
                      child: const Center(child:  Text("Container Tapped")),
                  ),
                ),  
            ),
        );
    }
}