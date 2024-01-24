import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(title:const  Text("App-Bar Assignment 07"),),
        body: Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                    Image.network(
                      "https://cdn.pixabay.com/photo/2016/08/11/23/55/trees-1587301_1280.jpg",
                      width: 150,
                      height: 300,
                    ),
            
                    const SizedBox(
                      width: 20,
                    ),
                    Image.network(
                      "https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072823_1280.jpg",
                      width: 150,
                      height: 300,
                    ),
            
                    const SizedBox(
                      width: 20,
                    ),
                    Image.network(
                      "https://cdn.pixabay.com/photo/2020/11/03/16/13/road-5710320_1280.jpg",
                      width: 150,
                      height: 300,
                    ),
            
                    const SizedBox(
                      width: 20,
                    ),
                    Image.network(
                      "https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072821_1280.jpg",
                      width: 150,
                      height: 300,
                    ),
            
                    const SizedBox(
                      width: 20,
                    ),
                    Image.network(
                      "https://cdn.pixabay.com/photo/2020/11/01/15/26/road-5704083_1280.jpg",
                      width: 150,
                      height: 300,
                    ),
            
                    const SizedBox(
                      width: 20,
                    ),
                    Image.network(
                      "https://cdn.pixabay.com/photo/2020/11/02/15/39/road-5707070_1280.jpg",
                      width: 150,
                      height: 300,
                    ),
            
                    const SizedBox(
                      width: 20,
                    ),
                    Image.network(
                      "https://cdn.pixabay.com/photo/2021/10/27/03/37/road-6745746_1280.jpg",
                      width: 150,
                      height: 300,
                    ),
            
                    const SizedBox(
                      width: 20,
                    ),
                ],
              ),
            ),
        ),
      ),
    );
  }
}
