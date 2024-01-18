import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          appBar: AppBar(
            title: const Text("NETFLIX"),
            backgroundColor: Colors.red,
          ),
          // body: Stack(
          //   alignment:
          //       Alignment.bottomRight, // Adjust the alignment as needed
          //   children: [
          //     Image.network(
          //       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUU6nfJ_d8qrqV8-xmWjSVhXlDI73zFT5Dqg&usqp=CAU",
          //       // width: double.infinity,
          //       // height: double.infinity,
          //       fit: BoxFit.cover,
          //     ),
          //     Container(
          //       padding: const EdgeInsets.all(8.0),
          //       margin: const EdgeInsets.all(16.0),
          //       decoration: BoxDecoration(
          //         color: Colors.blue,
          //         borderRadius: BorderRadius.circular(8.0),
          //       ),
          //       child: const Text(
          //         'Free',
          //         style: TextStyle(
          //           color: Colors.white,
          //           fontWeight: FontWeight.bold,
          //         ),
          //       ),
          //     ),
          //   ],
          // )
          body: ListView(
            scrollDirection: Axis.vertical,
            // child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  "MOVIES",
                  style: TextStyle(color: Colors.white, fontSize: 20,fontWeight:FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Stack(
                     alignment:
                      Alignment.topRight, // Adjust the alignment as needed
                      children: [
                       
                        Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ92X2-KO1xCylOhv-UFoP7ixdBiVQ0cY1Uqg&usqp=CAU",
                           width: 175,
                           height: 250,
                        ),
                        Container(
                          // constraints: BoxConstraints.tightFor(width: 150.0, height: 150.0),
                          padding: const EdgeInsets.all(8.0),
                          margin: const EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 47, 161, 255),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: const Text(
                            'Free',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
            
                    Image.network(
                      "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                      width: 175,
                      height: 250,
                    ),
                    Image.network(
                      "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                      width: 175,
                      height: 250,
                    ),
                    Image.network(
                      "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                      width: 175,
                      height: 250,
                    ),
                    Image.network(
                      "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                      width: 175,
                      height: 250,
                    ),
                    Image.network(
                      "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                      width: 175,
                      height: 250,
                    ),
                    Image.network(
                      "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                      width: 175,
                      height: 250,
                    ),
                    Image.network(
                      "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                      width: 175,
                      height: 250,
                    ),
                    Image.network(
                      "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                      width: 175,
                      height: 250,
                    ),
                    Image.network(
                      "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                      width: 175,
                      height: 250,
                    ),
                    Image.network(
                      "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                      width: 175,
                      height: 250,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  "WEB SERIES",
                  style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                       Stack(
                     alignment:
                      Alignment.topRight, // Adjust the alignment as needed
                      children: [
                        Image.network(
                          "https://assetscdn1.paytm.com/images/catalog/product/H/HO/HOMSHERLOCK-HOLHK-P63024784A1CC1B/1563111214645_0..jpg",
                           width: 190,
                           height: 280,
                        ),
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          margin: const EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 47, 161, 255),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: const Text(
                            'Free',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),

                    Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Image.network(
                          "https://dnm.nflximg.net/api/v6/2DuQlx0fM4wd1nzqm5BFBi6ILa8/AAAAQeIeKt7LlqIJPKrT4aQijclj7K43xRSU3dQXNESNdNbnnJbT6LLWVRT9srUUbHbOo-iOH-8v3o16pUDMQ6tCgNGlkvfwvDOprROIZpQ2rgHtop9rHvbYlvzavMmUSGBCXjynJ80dn4nqZzZmzIUJMQpS.jpg?r=943",
                          width: 190,
                          height: 280,
                        ),
                        Container(
                          padding:const EdgeInsets.all(8),
                          margin: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.blue
                          ),
                          child: const Text(
                            'Comming Soon',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,

                            ),
                          ),
                        )
                      ],
                    ),
            
                    const SizedBox(
                      width: 7,
                    ),
                    Image.network(
                      "https://www.tallengestore.com/cdn/shop/products/PeakyBlinders-NetflixTVShow-ArtPoster_125897c4-6348-41e8-b195-d203700ebcca.jpg?v=1619864555",
                      width: 175,
                      height: 250,
                    ),
                    Image.network(
                      "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                      width: 175,
                      height: 250,
                    ),
                    Image.network(
                      "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                      width: 175,
                      height: 250,
                    ),
                    Image.network(
                      "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                      width: 175,
                      height: 250,
                    ),
                    Image.network(
                      "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                      width: 175,
                      height: 250,
                    ),
                    Image.network(
                      "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                      width: 175,
                      height: 250,
                    ),
                    Image.network(
                      "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                      width: 175,
                      height: 250,
                    ),
                    Image.network(
                      "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                      width: 175,
                      height: 250,
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  "MOST POPULAR",
                  style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Image.network(
                      "https://assetscdn1.paytm.com/images/catalog/product/H/HO/HOMSHERLOCK-HOLHK-P63024784A1CC1B/1563111214645_0..jpg",
                      width: 175,
                      height: 250,
                    ),
                    Image.network(
                      "https://dnm.nflximg.net/api/v6/2DuQlx0fM4wd1nzqm5BFBi6ILa8/AAAAQeIeKt7LlqIJPKrT4aQijclj7K43xRSU3dQXNESNdNbnnJbT6LLWVRT9srUUbHbOo-iOH-8v3o16pUDMQ6tCgNGlkvfwvDOprROIZpQ2rgHtop9rHvbYlvzavMmUSGBCXjynJ80dn4nqZzZmzIUJMQpS.jpg?r=943",
                      width: 190,
                      height: 280,
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    Image.network(
                      "https://www.tallengestore.com/cdn/shop/products/PeakyBlinders-NetflixTVShow-ArtPoster_125897c4-6348-41e8-b195-d203700ebcca.jpg?v=1619864555",
                      width: 175,
                      height: 250,
                    ),
                    Image.network(
                      "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                      width: 175,
                      height: 250,
                    ),
                    Image.network(
                      "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                      width: 175,
                      height: 250,
                    ),
                    Image.network(
                      "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                      width: 175,
                      height: 250,
                    ),
                    Image.network(
                      "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                      width: 175,
                      height: 250,
                    ),
                    Image.network(
                      "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                      width: 175,
                      height: 250,
                    ),
                    Image.network(
                      "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                      width: 175,
                      height: 250,
                    ),
                    Image.network(
                      "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                      width: 175,
                      height: 250,
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
