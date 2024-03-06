import 'package:educourse/Pages/HomePage.dart';
import 'package:educourse/Utils/Uitls.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoursePage extends StatefulWidget {
  const CoursePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CoursePageState();
  }
}

class _CoursePageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topRight, colors: [
          Utils.courseBackGroundColor[0][0],
          Utils.courseBackGroundColor[0][1],
        ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: const EdgeInsets.only(top: 30),
              child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => const HomePage()));
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30, bottom: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "UI/UX designer from Scratch.",
                    style: GoogleFonts.jost(
                      textStyle: const TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                      "Basic guideline & tips & tricks for how to become a UX designer easily.",
                      style: GoogleFonts.jost(
                        textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/person.png",
                        width: 34,
                        height: 34,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "Author:",
                        style: TextStyle(
                            color: Color.fromRGBO(190, 154, 197, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      const Text(
                        "Jenny",
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      const Spacer(),
                      const Text(
                        "4.8",
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      const Icon(
                        Icons.star,
                        color: Color.fromRGBO(255, 146, 0, 1),
                      ),
                      const Text(
                        "(20 review)",
                        style: TextStyle(
                            color: Color.fromRGBO(190, 154, 197, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
                child: Container(
              padding: const EdgeInsets.only(left: 15, right: 15),
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(235, 234, 234, 1),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(38),
                      topRight: Radius.circular(38))),
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                        itemCount: 10,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            margin: const EdgeInsets.only(bottom: 15),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 10),
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 60,
                                  width: 46,
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                  decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(12)),
                                      color: Color.fromRGBO(230, 239, 239, 1)),
                                  child: Image.asset(
                                    "assets/images/youtube.png",
                                    height: 24,
                                    width: 24,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Introduction",
                                        style: GoogleFonts.jost(
                                          textStyle: const TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w500),
                                        )),
                                    Text(
                                        "Lorem Ipsum is simply dummy text ... ",
                                        style: GoogleFonts.jost(
                                          textStyle: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400),
                                        ))
                                  ],
                                )
                              ],
                            ),
                          );
                        }),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
