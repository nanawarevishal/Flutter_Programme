import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizapp/Controller/QuizController.dart';
import 'package:quizapp/pages/HomePage.dart';

class CongratulationsPage extends StatefulWidget {
  const CongratulationsPage({super.key});

  @override
  State createState() => _CongratulationsPageState();
}

class _CongratulationsPageState extends State {
  late ConfettiController _confettiController;

  QuizController quizController = Get.put(QuizController());

  var totalCorrectAns = 0;
  var totalIncorrectAns = 0;

  @override
  void initState() {
    super.initState();
    _confettiController =
        ConfettiController(duration: const Duration(seconds: 5));
    _confettiController.play();
    calculate();
    quizController.resetScore();
  }

  void calculate() {
    totalCorrectAns = quizController.score.value;
    totalIncorrectAns = quizController.quizList.length - totalCorrectAns;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: const Color.fromARGB(255, 90, 217, 255),
      child: Column(
        children: [
          ConfettiWidget(
            confettiController: _confettiController,
            colors: const [Colors.green, Colors.red, Colors.black, Colors.blue],
            shouldLoop: true,
            gravity: .2,
            blastDirection: -pi * 5.5,
            numberOfParticles: 20,
            blastDirectionality: BlastDirectionality.directional,
          ),
          Container(
            padding: const EdgeInsets.all(4),
            margin: const EdgeInsets.only(top: 95),
            width: MediaQuery.of(context).size.width * .90,
            height: MediaQuery.of(context).size.height * .75,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Image.network(
                  "https://www.pngimages.in/uploads/png-webp/2022/2022-September/Trophy_Png_Images_Free_Download.webp",
                  height: 200,
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  "Hi Admino",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 4,
                ),
                const Text(
                  "Congratulations!",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
                ),
                const SizedBox(
                  height: 2,
                ),
                const Text("You have got the 10th place in 254"),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.check,
                      color: Colors.green,
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Text("$totalCorrectAns Correct"),
                    const SizedBox(
                      width: 4,
                    ),
                    const Icon(
                      Icons.close,
                      color: Colors.red,
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Text("$totalIncorrectAns InCorrect")
                  ],
                ),
                const SizedBox(
                  height: 4,
                ),
                const Stack(children: [
                  Divider(
                    color: Colors.black,
                  ),
                ]),
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width * .80,
                  padding: const EdgeInsets.only(left: 5, right: 10),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 201, 200, 200),
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(left: 6),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                        ),
                        child: const Text("1"),
                      ),
                      const SizedBox(
                        width: 9,
                      ),
                      const Text("Admino"),
                      const Spacer(),
                      const Text("258"),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width * .80,
                  padding: const EdgeInsets.only(left: 5, right: 10),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 201, 200, 200),
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(left: 6),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                        ),
                        child: const Text("2"),
                      ),
                      const SizedBox(
                        width: 9,
                      ),
                      const Text("Goblin"),
                      const Spacer(),
                      const Text("240"),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width * .80,
                  padding: const EdgeInsets.only(left: 5, right: 10),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 201, 200, 200),
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(left: 6),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                        ),
                        child: const Text("3"),
                      ),
                      const SizedBox(
                        width: 9,
                      ),
                      const Text("CluchGod"),
                      const Spacer(),
                      const Text("234"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
              onPressed: () {
                Get.to(() => const HomePage());
              },
              child: const Text(
                "Home Page",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
              ))
        ],
      ),
    ));
  }
}
