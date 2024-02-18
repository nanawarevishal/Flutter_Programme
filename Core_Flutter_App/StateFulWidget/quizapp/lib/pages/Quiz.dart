import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:quizapp/Controller/QuizController.dart';
import 'package:quizapp/Models/QuizModel.dart';
import 'package:quizapp/Service/QuizService.dart';
import 'package:quizapp/main.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuizQuestions();
  }
}

class _QuizQuestions extends State<Quiz> {
  QuizController quizController = Get.put(QuizController());

  List<QuizModel> quizList = [];

  @override
  void initState() {
    super.initState();
    initQuizService();
     StartTime();
  }

  void StartTime() {

    Timer.periodic(const Duration(seconds: 1), (timer) {
    setState(() {
        quizController.decrementCounter();
    });
      
    });
  }

  Future<void> initQuizService() async {
    try {
      List<QuizModel> quiz = await QuizService.getQuestions(
          quizId: MainApp.storage.read("quizId"));
      setState(() {
        quizList = quiz;
      });
    } catch (e) {
      // print("Error initializing user data: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    if (quizList.isEmpty) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
    else{
        MainApp.storage.write("quizLisLength", quizList.length);
    return Scaffold(
        
      backgroundColor: const Color.fromARGB(255, 238, 238, 238),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 50, left: 20, right: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 35),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Obx(() {
                        return LinearPercentIndicator(
                          width: 236,
                          animation: true,
                          lineHeight: 20.0,
                          animationDuration: 2500,
                          percent:
                              (quizController.currentQuestionIndex.value + 1) /
                                  quizList.length,
                          center: Obx(
                            () => Text(
                                "${(((quizController.currentQuestionIndex.value + 1) / quizList.length) * 100).toStringAsFixed(2)}%"),
                          ),
                          progressColor: Colors.green,
                          barRadius: const Radius.circular(10),
                        );
                      }),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Stack(alignment: Alignment.topCenter, children: [
                Container(
                    padding: const EdgeInsets.only(
                        top: 75, left: 25, right: 25, bottom: 25),
                    width: 300,
                    height: 230,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 165, 237, 254),
                        borderRadius: BorderRadius.circular(20)),
                    child: Obx(() {
                      int currentIndex =
                          quizController.currentQuestionIndex.value;
                      return Text(
                        quizList[currentIndex].content,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      );
                    })),
                    Obx(() => 
                CircularPercentIndicator(
                  radius: 30.0,
                  lineWidth: 8.0,
                  animation: true,
                  percent: quizController.counter.value/30,
                  center:
                      Obx(() => Text(quizController.counter.value.toString())),
                  circularStrokeCap: CircularStrokeCap.round,
                  progressColor: Colors.red,
                ),
                )
              ]),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.only(
                    top: 10, left: 20, bottom: 10, right: 20),
                width: 300,
                // height: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(20)),
                child: Obx(
                  () => Text(
                    quizList[quizController.currentQuestionIndex.value]
                        .answers["1"]!,
                    // quizList[currentQuestionIndex].answers["1"]!,
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.only(
                    top: 10, left: 20, bottom: 10, right: 20),
                width: 300,
                // height: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(20)),
                child: Obx(
                  () => Text(
                    quizList[quizController.currentQuestionIndex.value]
                        .answers["2"]!,
                    // quizList[currentQuestionIndex].answers["1"]!,
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.only(
                    top: 10, left: 20, bottom: 10, right: 20),
                width: 300,
                // height: 50,

                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(20)),
                child: Obx(
                  () => Text(
                    quizList[quizController.currentQuestionIndex.value]
                        .answers["3"]!,
                    // quizList[currentQuestionIndex].answers["1"]!,
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.only(
                    top: 10, left: 20, bottom: 10, right: 20),
                width: 300,
                // height: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(20)),
                child: Obx(
                  () => Text(
                    quizList[quizController.currentQuestionIndex.value]
                        .answers["4"]!,
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.center,
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 1, 113, 141),
                ),
                child: Obx(() {
                  return quizController.currentQuestionIndex.value + 1 <
                          quizList.length
                      ? ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 1, 113, 141),
                            ),
                          ),
                          onPressed: () {
                            Future.microtask(() {
                              quizController.gotoNextQuestion(quizList.length);
                            });
                          },
                          child: const Text(
                            "Next",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        )
                      : ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 1, 113, 141),
                            ),
                          ),
                          onPressed: () {
                            
                          },
                          child: const Text(
                            "Submit",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        );
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
  }
}
