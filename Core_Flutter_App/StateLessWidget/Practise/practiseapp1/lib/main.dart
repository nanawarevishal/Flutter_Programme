import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {

  const MainApp({super.key});  
  
  @override
  State<StatefulWidget> createState() {
      return Assignmetnt();
  }
}

class Assignmetnt extends State<MainApp>{
  bool _box1Color = false;
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Basic App",style: TextStyle(color: Colors.red),),
          backgroundColor: const Color.fromARGB(255, 26, 25, 25),
        ),
        body: SizedBox(
          // height: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: _box1Color ? Colors.red : const Color.fromARGB(255, 244, 248, 3)
                    ),
                    width: 200,
                    height: 200,
                  
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white
                    ),
                    onPressed: (){
                     setState(() {
                       
                       _box1Color = !_box1Color;
                     });
                    },
                   child: const Text("Box 1"))
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.green

                    ),
                    width: 200,
                    height: 200,
                   
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white
                    ),
                    onPressed: (){},
                   child: const Text("Box 2")
                   )
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.black
                    ),
                    width: 200,
                    height: 200,
                  ),

                  const SizedBox(
                    height: 20,
                  ),
                  
                  ElevatedButton(
                    clipBehavior: Clip.antiAlias,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 153, 151, 151),
                      foregroundColor: Colors.white,
                      
                    ),
                    onPressed: (){
                      
                    },
                    child: const Text("Click Here"),
                  )
                ],
              ),
            ],
          ),
        )
      ),
    );
  }
  }

