import 'package:flutter/material.dart';

class InstaAssignment extends StatefulWidget {
  const InstaAssignment({super.key});

  @override
  State<StatefulWidget> createState() => _AssignmentState();
}

class _AssignmentState extends State<InstaAssignment> {

    bool _likeButton = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 245, 245, 245),
          title: const Text(
            "Instagram",
            style: TextStyle(
                fontStyle: FontStyle.italic, color: Colors.black, fontSize: 30),
          ),
          actions: const [
            Icon(
              Icons.favorite_rounded,
              color: Colors.red,
            )
          ],
        ),

    //     body: ListView(
    //         children:[
    //                   Column(
    //             mainAxisAlignment: MainAxisAlignment.start,
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               Container(
    //                   color: const Color.fromARGB(255, 226, 243, 33),
    //                   child: Image.network(
    //                     "https://images.pexels.com/photos/414612/pexels-photo-414612.jpeg?cs=srgb&",
    //                     width: double.infinity,
    //                     height: 200,
    //                     // width: 300,
    //                     // height: 300,
    //                   )),
    //               Row(
    //                 children: [
    //                   IconButton(
    //                     onPressed: () {},
    //                     icon: const Icon(Icons.favorite_outline_outlined),
    //                   ),
    //                   IconButton(
    //                     onPressed: () {},
    //                     icon: const Icon(Icons.comment_outlined),
    //                   ),
    //                   IconButton(onPressed: () {}, icon: const Icon(Icons.send))
    //                 ],
    //               )
    //             ],
    //           ),
    //           Column(
    //             mainAxisAlignment: MainAxisAlignment.start,
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               Container(
    //                   color: const Color.fromARGB(255, 226, 243, 33),
    //                   child: Image.network(
    //                     "https://images.pexels.com/photos/414612/pexels-photo-414612.jpeg?cs=srgb&",
    //                     width: double.infinity,
    //                     height: 200,
    //                     // width: 300,
    //                     // height: 300,
    //                   )),
    //               Row(
    //                 children: [
    //                   IconButton(
    //                     onPressed: () {},
    //                     icon: const Icon(Icons.favorite_outline_outlined),
    //                   ),
    //                   IconButton(
    //                     onPressed: () {},
    //                     icon: const Icon(Icons.comment_outlined),
    //                   ),
    //                   IconButton(onPressed: () {}, icon: const Icon(Icons.send))
    //                 ],
    //               )
    //             ],
    //           ),
    //           Column(
    //             mainAxisAlignment: MainAxisAlignment.start,
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               Container(
    //                   color: const Color.fromARGB(255, 226, 243, 33),
    //                   child: Image.network(
    //                     "https://images.pexels.com/photos/414612/pexels-photo-414612.jpeg?cs=srgb&",
    //                     width: double.infinity,
    //                     height: 200,
    //                     // width: 300,
    //                     // height: 300,
    //                   )),
    //               Row(
    //                 children: [
    //                   IconButton(
    //                     onPressed: () {},
    //                     icon: const Icon(Icons.favorite_outline_outlined),
    //                   ),
    //                   IconButton(
    //                     onPressed: () {},
    //                     icon: const Icon(Icons.comment_outlined),
    //                   ),
    //                   IconButton(onPressed: () {}, icon: const Icon(Icons.send))
    //                 ],
    //               )
    //             ],
    //           ),
    //           Column(
    //             mainAxisAlignment: MainAxisAlignment.start,
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               Container(
    //                   color: const Color.fromARGB(255, 226, 243, 33),
    //                   child: Image.network(
    //                     "https://images.pexels.com/photos/414612/pexels-photo-414612.jpeg?cs=srgb&",
    //                     width: double.infinity,
    //                     height: 200,
    //                     // width: 300,
    //                     // height: 300,
    //                   )),
    //               Row(
    //                 children: [
    //                   IconButton(
    //                     onPressed: () {},
    //                     icon: const Icon(Icons.favorite_outline_outlined),
    //                   ),
    //                   IconButton(
    //                     onPressed: () {},
    //                     icon: const Icon(Icons.comment_outlined),
    //                   ),
    //                   IconButton(onPressed: () {}, icon: const Icon(Icons.send))
    //                 ],
    //               )
    //             ],
    //           )
    //         ]
    //     )
    // );

  
                                                                                                                                                                                                                                                                                                      
        // ),
        body: SingleChildScrollView(
            
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      color: const Color.fromARGB(255, 226, 243, 33),
                      child: Image.network(
                        "https://images.pexels.com/photos/414612/pexels-photo-414612.jpeg?cs=srgb&",
                        width: double.infinity,
                        height: 200,
                        // width: 300,
                        // height: 300,
                      )),
                  Row(
                    
                    children: [
                    
                      IconButton(
                        
                        onPressed: () {
                            setState(() {
                              _likeButton = !_likeButton;
                            });
                        },

                        icon: _likeButton ?
                        const Icon(
                            
                            Icons.favorite_rounded,
                            color: Colors.red,
                        )
                        :const Icon(
                            Icons.favorite_outline_rounded,
                           
                        ),
                        
                        // icon: Icon(Icons.favorite_rounded,color: _likeButton ? Colors.red: Colors.black,),
                        
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.comment_outlined),
                      ),
                      IconButton(
                        onPressed: () {}, 
                        icon: const Icon(Icons.send)
                      ),
                      const Spacer(
                            
                      ),
                      IconButton(onPressed: (){},
                       icon: const Icon(
                        Icons.bookmark
                       ))
                    ],
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      color: const Color.fromARGB(255, 226, 243, 33),
                      child: Image.network(
                        "https://images.pexels.com/photos/414612/pexels-photo-414612.jpeg?cs=srgb&",
                        width: double.infinity,
                        height: 200,
                        // width: 300,
                        // height: 300,
                      )),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_outline_outlined),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.comment_outlined),
                      ),
                      IconButton(
                        onPressed: () {}, 
                        icon: const Icon(Icons.send)),

                        const SizedBox(
                            width: 1300,
                        ),
                        
                        IconButton(onPressed: (){},
                       icon: const Icon(
                        Icons.bookmark
                       ))
                    ],
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      color: const Color.fromARGB(255, 226, 243, 33),
                      child: Image.network(
                        "https://images.pexels.com/photos/414612/pexels-photo-414612.jpeg?cs=srgb&",
                        width: double.infinity,
                        height: 200,
                        // width: 300,
                        // height: 300,
                      )),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_outline_outlined),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.comment_outlined),
                      ),
                      IconButton(onPressed: () {}, icon: const Icon(Icons.send))
                    ],
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      color: const Color.fromARGB(255, 226, 243, 33),
                      child: Image.network(
                        "https://images.pexels.com/photos/414612/pexels-photo-414612.jpeg?cs=srgb&",
                        width: double.infinity,
                        height: 200,
                        // width: 300,
                        // height: 300,
                      )),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_outline_outlined),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.comment_outlined),
                      ),
                      IconButton(onPressed: () {}, icon: const Icon(Icons.send))
                    ],
                  )
                ],
              )
            ],
          ),
        ));
    
  }
}
