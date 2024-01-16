

import 'package:flutter/material.dart';

class MyClass extends StatefulWidget{
    const MyClass({super.key});

    @override
    State<StatefulWidget> createState() {
        return _AssignmentState();
    }
}

class _AssignmentState extends State<MyClass>{

    int? _imgIndex = 0;

    List<String>imageList = [
        "https://cdn.pixabay.com/photo/2018/11/17/22/15/trees-3822149_1280.jpg",
        "https://cdn.pixabay.com/photo/2021/08/25/20/42/field-6574455_1280.jpg",
        "https://cdn.pixabay.com/photo/2017/02/01/22/02/mountain-landscape-2031539_1280.jpg",
        "https://cdn.pixabay.com/photo/2023/01/23/17/28/tree-7739243_1280.jpg"
    ];

    void _displayImages(){
        setState(() {
          if(_imgIndex!+1 == imageList.length){
            _imgIndex = 0;
          }

          else{
            _imgIndex = _imgIndex! +1;
          }
        });
    }

    @override
        Widget build(BuildContext context) {
                return Scaffold(
                    appBar: AppBar(
                        title: const Text("Image display"),
                        backgroundColor: const Color.fromARGB(255, 104, 196, 109),
                    ),

                    body: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        
                        children: [
                            Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                    DecoratedBox(decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(23),
                                        color: Colors.black
                                    )),
                                    Image.network(
                                        imageList[_imgIndex!],
                                    height: 200,
                                    width: 300,),

                                    const SizedBox(
                                        height: 20,
                                    ),

                                    ElevatedButton(
                                        
                                        onPressed: _displayImages, child:const Text("Next Img"),
                                        
                                    ),

                                    const SizedBox(
                                        height: 20,
                                    ),

                                    ElevatedButton(
                                       onPressed: (){
                                        setState(() {
                                            _imgIndex = 0;
                                        });
                                        }, 
                                        child: const Text("Reset")
                                    )

                                    

                                ],
                            )
                        ],
                    ),
                );
        }

}