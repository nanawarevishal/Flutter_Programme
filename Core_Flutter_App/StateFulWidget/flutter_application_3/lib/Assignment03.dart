

import 'package:flutter/material.dart';

class Assignment03 extends StatefulWidget{
  const Assignment03({super.key});

    
    @override
    State<StatefulWidget> createState()=>Assignment03State();

}

class Assignment03State extends State<Assignment03>{

    int? selectedIndex = 0;

    final List<String>imageList = [
        
        "https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072823_1280.jpg",
        "https://cdn.pixabay.com/photo/2020/11/08/16/57/road-5724397_1280.jpg",
        "https://cdn.pixabay.com/photo/2014/04/14/20/11/pink-324175_1280.jpg",
        "https://cdn.pixabay.com/photo/2016/08/11/23/48/mountains-1587287_1280.jpg",
        "https://cdn.pixabay.com/photo/2017/04/09/09/56/avenue-2215317_1280.jpg"
    ];

    void _showNextImage(){
        setState(() {
            if(selectedIndex!+1 == imageList.length){
                selectedIndex = 0;
            }
            else{

             selectedIndex = selectedIndex! + 1;
            }
        });
    }

  @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar:  AppBar(
                title: const Text("Display Images"),
            ),

            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        Image.network(
                            
                            imageList[selectedIndex!],
                            width: 300,
                            height: 300,
                            
                        ),

                        const SizedBox(
                            height: 20,
                        ),

                        ElevatedButton(
                            onPressed: _showNextImage, 
                            child: const Text("Next")
                        ),

                        const SizedBox(
                            height: 20,
                        ),

                        ElevatedButton(
                            onPressed: (){
                                setState(() {
                                  selectedIndex = 0;
                                });
                            }, 
                            child: const Text("Reset")
                        )
                    ],
                ),
            ),
        );
    }

}