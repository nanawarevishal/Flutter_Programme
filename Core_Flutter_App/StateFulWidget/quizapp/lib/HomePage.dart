import 'package:flutter/material.dart';
import 'package:quizapp/LeaderBoardPage.dart';

import 'Quiz.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 238, 238, 238),
        body: SingleChildScrollView(
          child: Container(
              margin: const EdgeInsets.only(
                  top: 60, left: 15, right: 15, bottom: 60),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // color: Colors.amber,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "hi John",
                                style: TextStyle(
                                    fontSize: 32, fontWeight: FontWeight.bold),
                              ),
                              Text("Let's make this day productive"),
                            ],
                          ),
                          const SizedBox(
                            width: 82,
                          ),
                          Image.network(
                            "https://icon2.cleanpng.com/20180920/att/kisspng-user-logo-information-service-design-5ba34f886b6700.1362345615374293844399.jpg",
                            width: 60,
                            height: 55,
                            alignment: Alignment.topLeft,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            height: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              // color: Colors.amber
                            ),
                            child: Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const LearderBoardPage()),
                                  );
                                },
                                  child: Image.network(
                                      "https://t4.ftcdn.net/jpg/01/39/31/79/240_F_139317922_FAWtQJMMVOVvDeM2OVg0ofiwIvBUrrux.jpg"),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Column(
                                  children: [
                                    Text(
                                      "Ranking",
                                      style: TextStyle(color: Colors.red),
                                    ),
                                    Text(
                                      "348",
                                      style: TextStyle(color: Colors.blue),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            height: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              // color: Colors.amber
                            ),
                            child: Row(
                              children: [
                                Image.network(
                                  "https://static.vecteezy.com/system/resources/previews/005/276/070/original/dollar-coin-clipart-free-vector.jpg",
                                  filterQuality: FilterQuality.high,
                                ),
                                Container(
                                  width: 10,
                                ),
                                const Column(
                                  children: [
                                    Text(
                                      "Points",
                                      style: TextStyle(color: Colors.red),
                                    ),
                                    Text(
                                      "1809",
                                      style: TextStyle(color: Colors.blue),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Let's Play",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Container(
                              // margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                              ),
                              padding: const EdgeInsets.all(10),
                              height: 150,
                              width: 150,
                              // color: Colors.amber,
                              child: Column(
                                children: [
                                  Image.network(
                                    "https://img.freepik.com/free-vector/basketball-ball-isolated_1284-42545.jpg",
                                    height: 80,
                                    width: 80,
                                  ),
                                  const Text(
                                    "Sports",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  const Text("50 Questions")
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              // margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                              ),
                              padding: const EdgeInsets.all(10),
                              height: 200,
                              width: 150,
                              // color: Colors.amber,
                              child: Column(
                                children: [
                                  Image.network(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRL3L3gD3p-UnMpg3oReJ1oYizPnBW9Azfqjg&usqp=CAU",
                                    height: 130,
                                    width: 80,
                                  ),
                                  const Text(
                                    "Maths",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  const Text("95 Questions")
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              // margin: EdgeInsets.all(5),

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                              ),
                              padding: const EdgeInsets.all(20),
                              height: 170,
                              width: 150,
                              // color: Colors.amber,
                              child: Column(
                                children: [
                                  Image.network(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCSquOn48Pil2O5-oZs-YfBDcIAPWA04jD7_WrGlIj0SZuAKudXlEJfqe0O-FaTNdHwQA&usqp=CAU",
                                    height: 80,
                                    width: 100,
                                  ),
                                  const Text(
                                    "Biology",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  const Text("130 Questions")
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Column(
                          children: [
                            Container(
                              // margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                              ),
                              padding: const EdgeInsets.all(10),
                              height: 150,
                              width: 150,
                              // color: Colors.amber,
                              child: Column(
                                children: [
                                  Image.network(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHEInwIFvolcjNtUIcvLADBjOcGkNdf9IBBUrMCl3Mx3lxlaECPtwzNF4HRzICzlXK4HE&usqp=CAU",
                                    height: 80,
                                    width: 80,
                                  ),
                                  const Text(
                                    "Chemistry",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  const Text("30 Questions")
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Card(
                              child: InkWell(
                                splashColor: Colors.blue.withAlpha(30),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Quiz()),
                                  );
                                },
                                child: Container(
                                  // margin: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                  ),
                                  padding: const EdgeInsets.all(10),
                                  height: 150,
                                  width: 150,
                                  // color: Colors.amber,
                                  child: Column(
                                    children: [
                                      Image.network(
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBMvkCcYoTnot53XhZX3VS0x8UuVbsgb4t4VQW-nBa-qiukyRvd2VwVs4MNHtO9aesKZg&usqp=CAU",
                                        height: 80,
                                        width: 80,
                                      ),
                                      const Text(
                                        "History",
                                        style:
                                            TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      const Text("128 Questions")
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Card(
                              clipBehavior: Clip.hardEdge,
                              child: InkWell(
                                splashColor: const Color.fromRGBO(33, 150, 243, 1).withAlpha(30),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Quiz()),
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                  ),
                                  padding: const EdgeInsets.all(10),
                                  height: 150,
                                  width: 150,
                                  // color: Colors.amber,
                                  child: Column(
                                    children: [
                                      Image.network(
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXVugN3eh78idSVmH1mcGExN08uOZYV2XKIA&usqp=CAU",
                                        height: 80,
                                        width: 80,
                                      ),
                                      const Text(
                                        "Geography",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const Text("70 Questions")
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ])),
        ));
  }
}
