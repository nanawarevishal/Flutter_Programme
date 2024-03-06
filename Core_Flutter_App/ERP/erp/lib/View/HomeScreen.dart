import 'package:erp/View/Academics.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  State createState() => _HomeScreenState();
}

class _HomeScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(130.0),
        child: Material(
          elevation: 8,
          child: Column(
            children: [
              Container(
                height: 70,
                color: const Color.fromARGB(255, 107, 185, 249),
                child: Row(
                  children: [
                    Image.network(
                        "https://vierp-test.s3.ap-south-1.amazonaws.com/logo/ZEAL.png"),
                    const SizedBox(
                      width: 30,
                    ),
                    const Text(
                      "Zeal College of Engineering Pune",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.home)),
                    const SizedBox(
                      width: 20,
                    ),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.dashboard)),
                    const SizedBox(
                      width: 20,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.query_builder)),
                    const SizedBox(
                      width: 20,
                    ),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.help)),
                    const SizedBox(
                      width: 20,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.notification_add)),
                    const SizedBox(
                      width: 20,
                    ),
                    const CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: Text("VN"),
                    )
                  ],
                ),
              ),
              Container(
                height: 60,
                color: Colors.white,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 150,
                    ),
                    CircleAvatar(
                      child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpbF9MRc872DyqrFDJJ3MRq68r08IaEKCNGzAqYNpeSK38HOao_E2_50CtB2V4TGM_5ag&usqp=CAU"),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text(
                      "Rakesh Sharma",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 90,
                      height: 30,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 207, 241, 208),
                          borderRadius: BorderRadius.circular(16)),
                      child: const Row(
                        children: [
                          SizedBox(
                            width: 8,
                          ),
                          CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.green,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Active",
                            style: TextStyle(color: Colors.green),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 180,
                    ),
                    const Text(
                      "Registration No.120E10181",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      width: 180,
                    ),
                    const Text(
                      "Computer Engineering",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(
              top: 100, left: 180, right: 180, bottom: 40),
          // color: Colors.amber,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(Academic());
                    },
                    child: Card(
                      shadowColor: Colors.grey,
                      elevation: 8,
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 160,
                                height: 180,
                                color: Colors.white,
                                child: const Stack(
                                  children: [
                                    Positioned(
                                        top: -30,
                                        left: -30,
                                        right: -30,
                                        child: tCircularContainer(
                                            backgroundColor: Color.fromARGB(
                                                175, 183, 208, 248))),
                                    Positioned(
                                      top: 80,
                                      left: 40,
                                      right: 40,
                                      bottom: 40,
                                      child: CircleAvatar(
                                        backgroundImage: NetworkImage(
                                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT90eMdZW5RxXQvQT_PzFm3PuTsqNw5rnTbfwINmiiyb7RrZwAdVEQfOamj1FTs8Ijjrz4&usqp=CAU"),
                                      ),
                                    ),
                                    Positioned(
                                      top: 30,
                                      left: 40,
                                      child: Text(
                                        "Academic",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w800),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Card(
                    shadowColor: Colors.grey,
                    elevation: 8,
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 160,
                              height: 180,
                              // color: Colors.blue,
                              color: Colors.white,
                              child: const Stack(
                                children: [
                                  Positioned(
                                      top: -30,
                                      left: -30,
                                      right: -30,
                                      child: tCircularContainer(
                                          backgroundColor: Color.fromARGB(
                                              175, 183, 208, 248))),
                                  Positioned(
                                    top: 80,
                                    left: 40,
                                    right: 40,
                                    bottom: 40,
                                    child: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          "https://media.freshbooks.com/wp-content/uploads/2022/02/chart-of-accounts.jpg"),
                                    ),
                                  ),
                                  Positioned(
                                    top: 30,
                                    left: 40,
                                    child: Text(
                                      "Accounts",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Card(
                    shadowColor: Colors.grey,
                    elevation: 8,
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 160,
                              height: 180,
                              // color: Colors.blue,
                              color: Colors.white,
                              child: const Stack(
                                children: [
                                  Positioned(
                                      top: -30,
                                      left: -30,
                                      right: -30,
                                      child: tCircularContainer(
                                          backgroundColor: Color.fromARGB(
                                              175, 183, 208, 248))),
                                  Positioned(
                                    top: 80,
                                    left: 40,
                                    right: 40,
                                    bottom: 40,
                                    child: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          "https://img.freepik.com/free-vector/book-pen-cartoon-icon-illustration-education-object-icon-concept-isolated-flat-cartoon-style_138676-2145.jpg?size=338&ext=jpg&ga=GA1.1.1448711260.1707004800&semt=ais"),
                                    ),
                                  ),
                                  Positioned(
                                    top: 30,
                                    left: 40,
                                    child: Text(
                                      "Assignmnets",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Card(
                    shadowColor: Colors.grey,
                    elevation: 8,
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 160,
                              height: 180,
                              // color: Colors.blue,
                              color: Colors.white,
                              child: const Stack(
                                children: [
                                  Positioned(
                                      top: -30,
                                      left: -30,
                                      right: -30,
                                      child: tCircularContainer(
                                          backgroundColor: Color.fromARGB(
                                              175, 183, 208, 248))),
                                  Positioned(
                                    top: 80,
                                    left: 40,
                                    right: 40,
                                    bottom: 40,
                                    child: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          "https://www.shutterstock.com/image-vector/business-development-plan-improvement-teamwork-260nw-2142028755.jpg"),
                                    ),
                                  ),
                                  Positioned(
                                    top: 30,
                                    left: 40,
                                    child: Text(
                                      "Career",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Card(
                    shadowColor: Colors.grey,
                    elevation: 8,
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 160,
                              height: 180,
                              // color: Colors.blue,
                              color: Colors.white,
                              child: const Stack(
                                children: [
                                  Positioned(
                                      top: -30,
                                      left: -30,
                                      right: -30,
                                      child: tCircularContainer(
                                          backgroundColor: Color.fromARGB(
                                              175, 183, 208, 248))),
                                  Positioned(
                                    top: 80,
                                    left: 40,
                                    right: 40,
                                    bottom: 40,
                                    child: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          "https://w7.pngwing.com/pngs/128/808/png-transparent-public-key-certificate-gnome-certificate-authority-gnome-text-cartoon-material-thumbnail.png"),
                                    ),
                                  ),
                                  Positioned(
                                    top: 30,
                                    left: 40,
                                    child: Text(
                                      "Certificate",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Card(
                    shadowColor: Colors.grey,
                    elevation: 8,
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 160,
                              height: 180,
                              // color: Colors.blue,
                              color: Colors.white,
                              child: const Stack(
                                children: [
                                  Positioned(
                                      top: -30,
                                      left: -30,
                                      right: -30,
                                      child: tCircularContainer(
                                          backgroundColor: Color.fromARGB(
                                              175, 183, 208, 248))),
                                  Positioned(
                                    top: 80,
                                    left: 40,
                                    right: 40,
                                    bottom: 40,
                                    child: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          "https://i.pinimg.com/736x/31/63/4b/31634b90c78a6ce64118c7ae904019b5.jpg"),
                                    ),
                                  ),
                                  Positioned(
                                    top: 30,
                                    left: 40,
                                    child: Text(
                                      "Examination",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    shadowColor: Colors.grey,
                    elevation: 8,
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 160,
                              height: 180,
                              // color: Colors.blue,
                              color: Colors.white,
                              child: const Stack(
                                children: [
                                  Positioned(
                                      top: -30,
                                      left: -30,
                                      right: -30,
                                      child: tCircularContainer(
                                          backgroundColor: Color.fromARGB(
                                              175, 183, 208, 248))),
                                  Positioned(
                                    top: 80,
                                    left: 40,
                                    right: 40,
                                    bottom: 40,
                                    child: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          "https://thumbs.dreamstime.com/z/vector-illustration-feedback-evaluation-form-flat-style-web-isolated-white-background-63327246.jpg"),
                                    ),
                                  ),
                                  Positioned(
                                    top: 30,
                                    left: 40,
                                    child: Text(
                                      "FeedBack",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Card(
                    shadowColor: Colors.grey,
                    elevation: 8,
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 160,
                              height: 180,
                              // color: Colors.blue,
                              color: Colors.white,
                              child: const Stack(
                                children: [
                                  Positioned(
                                      top: -30,
                                      left: -30,
                                      right: -30,
                                      child: tCircularContainer(
                                          backgroundColor: Color.fromARGB(
                                              175, 183, 208, 248))),
                                  Positioned(
                                    top: 80,
                                    left: 40,
                                    right: 40,
                                    bottom: 40,
                                    child: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          "https://cdn0.iconfinder.com/data/icons/miscellaneous-322-color-shadow/128/complaint_grievance_accusation_criticism_feedback_comment_bubble-512.png"),
                                    ),
                                  ),
                                  Positioned(
                                    top: 30,
                                    left: 40,
                                    child: Text(
                                      "Gravience",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Card(
                    shadowColor: Colors.grey,
                    elevation: 8,
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 160,
                              height: 180,
                              // color: Colors.blue,
                              color: Colors.white,
                              child: const Stack(
                                children: [
                                  Positioned(
                                      top: -30,
                                      left: -30,
                                      right: -30,
                                      child: tCircularContainer(
                                          backgroundColor: Color.fromARGB(
                                              175, 183, 208, 248))),
                                  Positioned(
                                    top: 80,
                                    left: 40,
                                    right: 40,
                                    bottom: 40,
                                    child: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                        "https://st2.depositphotos.com/47577860/48028/v/600/depositphotos_480287424-stock-illustration-building-business-contour-icon.jpg",
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 30,
                                    left: 40,
                                    child: Text(
                                      "Hostel",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Card(
                    shadowColor: Colors.grey,
                    elevation: 8,
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 160,
                              height: 180,
                              // color: Colors.blue,
                              color: Colors.white,
                              child: const Stack(
                                children: [
                                  Positioned(
                                      top: -30,
                                      left: -30,
                                      right: -30,
                                      child: tCircularContainer(
                                          backgroundColor: Color.fromARGB(
                                              175, 183, 208, 248))),
                                  Positioned(
                                    top: 80,
                                    left: 40,
                                    right: 40,
                                    bottom: 40,
                                    child: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRin3feS7jtjRcJJ2btizacqh8fOUgLJlIqlJSG7VkaOQ&s"),
                                    ),
                                  ),
                                  Positioned(
                                    top: 30,
                                    left: 40,
                                    child: Text(
                                      "My Guardian",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Card(
                    shadowColor: Colors.grey,
                    elevation: 8,
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 160,
                              height: 180,
                              // color: Colors.blue,
                              color: Colors.white,
                              child: const Stack(
                                children: [
                                  Positioned(
                                      top: -30,
                                      left: -30,
                                      right: -30,
                                      child: tCircularContainer(
                                          backgroundColor: Color.fromARGB(
                                              175, 183, 208, 248))),
                                  Positioned(
                                    top: 80,
                                    left: 40,
                                    right: 40,
                                    bottom: 40,
                                    child: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          "https://erpstudentmobileapp.s3.ap-south-1.amazonaws.com/Profileicon/mytimetable.webp"),
                                    ),
                                  ),
                                  Positioned(
                                    top: 30,
                                    left: 40,
                                    child: Text(
                                      "My TimeTable",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Card(
                    shadowColor: Colors.grey,
                    elevation: 8,
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 160,
                              height: 180,
                              // color: Colors.blue,
                              color: Colors.white,
                              child: const Stack(
                                children: [
                                  Positioned(
                                      top: -30,
                                      left: -30,
                                      right: -30,
                                      child: tCircularContainer(
                                          backgroundColor: Color.fromARGB(
                                              175, 183, 208, 248))),
                                  Positioned(
                                    top: 80,
                                    left: 40,
                                    right: 40,
                                    bottom: 40,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      //   backgroundImage: NetworkImage(""),
                                    ),
                                  ),
                                  Positioned(
                                    top: 30,
                                    left: 40,
                                    child: Text(
                                      "PTG",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    shadowColor: Colors.grey,
                    elevation: 8,
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 160,
                              height: 180,
                              // color: Colors.blue,
                              color: Colors.white,
                              child: const Stack(
                                children: [
                                  Positioned(
                                      top: -30,
                                      left: -30,
                                      right: -30,
                                      child: tCircularContainer(
                                          backgroundColor: Color.fromARGB(
                                              175, 183, 208, 248))),
                                  Positioned(
                                    top: 80,
                                    left: 40,
                                    right: 40,
                                    bottom: 40,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      //   backgroundImage: NetworkImage(""),
                                    ),
                                  ),
                                  Positioned(
                                    top: 30,
                                    left: 3,
                                    child: Text(
                                      "Project Monitoring",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Card(
                    shadowColor: Colors.grey,
                    elevation: 8,
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 160,
                              height: 180,
                              // color: Colors.blue,
                              color: Colors.white,
                              child: const Stack(
                                children: [
                                  Positioned(
                                      top: -30,
                                      left: -30,
                                      right: -30,
                                      child: tCircularContainer(
                                          backgroundColor: Color.fromARGB(
                                              175, 183, 208, 248))),
                                  Positioned(
                                    top: 80,
                                    left: 40,
                                    right: 40,
                                    bottom: 40,
                                    child: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          "https://cdn.vectorstock.com/i/1000x1000/83/58/quiz-logo-with-speech-bubble-symbols-concept-vector-28768358.webp"),
                                    ),
                                  ),
                                  Positioned(
                                    top: 30,
                                    left: 40,
                                    child: Text(
                                      "Quiz",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Card(
                    shadowColor: Colors.grey,
                    elevation: 8,
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 160,
                              height: 180,
                              // color: Colors.blue,
                              color: Colors.white,
                              child: const Stack(
                                children: [
                                  Positioned(
                                      top: -30,
                                      left: -30,
                                      right: -30,
                                      child: tCircularContainer(
                                          backgroundColor: Color.fromARGB(
                                              175, 183, 208, 248))),
                                  Positioned(
                                    top: 80,
                                    left: 40,
                                    right: 40,
                                    bottom: 40,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      //   backgroundImage: NetworkImage(""),
                                    ),
                                  ),
                                  Positioned(
                                    top: 30,
                                    left: 4,
                                    child: Text(
                                      "Resource Sharing",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Card(
                    shadowColor: Colors.grey,
                    elevation: 8,
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 170,
                              height: 180,
                              // color: Colors.blue,
                              color: Colors.white,
                              child: const Stack(
                                children: [
                                  Positioned(
                                      top: -30,
                                      left: -30,
                                      right: -30,
                                      child: tCircularContainer(
                                          backgroundColor: Color.fromARGB(
                                              175, 183, 208, 248))),
                                  Positioned(
                                    top: 80,
                                    left: 40,
                                    right: 40,
                                    bottom: 40,
                                    child: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          "https://cdn2.iconfinder.com/data/icons/digital-and-internet-marketing-3-1/50/144-512.png"),
                                    ),
                                  ),
                                  Positioned(
                                    top: 30,
                                    child: Text(
                                      "Subject Registration",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class tCircularContainer extends StatelessWidget {
  const tCircularContainer({
    super.key,
    this.width = 180,
    this.heigth = 150,
    this.radius = 190,
    this.padding = 0,
    this.child,
    required this.backgroundColor,
  });

  final double? width;
  final double? heigth;
  final double? radius;
  final double? padding;
  final Widget? child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomRight,
      width: width,
      height: heigth,
      padding: EdgeInsets.all(padding!),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(210), color: backgroundColor),
    );
  }
}
