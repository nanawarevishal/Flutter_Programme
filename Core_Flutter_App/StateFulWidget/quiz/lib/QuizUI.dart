import 'package:flutter/material.dart';

class QuizUI extends StatefulWidget {
  const QuizUI({super.key});

  @override
  State<QuizUI> createState() => _QuizUIState();
}

class SingleQuestionModel {
  final String? question;
  final List? options;
  final int? answerIndex;

  const SingleQuestionModel({this.question, this.options, this.answerIndex});
}

class _QuizUIState extends State<QuizUI> {
  List<SingleQuestionModel> questionList = [
    const SingleQuestionModel(
        question: "who is founder of Microsoft ?",
        options: ["Steve Jobs", "Elon Musk", "Bill Gates", "Mark ZukerBurg"],
        answerIndex: 2
        ),
    const SingleQuestionModel(
        question: "Who is the founder of Apple?",
        options: ["Steve Jobs", "Jeff Bezos", "Bill Gates", "Elon Musk"],
        answerIndex: 0
    ),
    const SingleQuestionModel(
        question: "Who is the founder of Amazon?",
        options: ["Steve Jobs", "Jeff Bezos", "Bill Gates", "Elon Musk"],
        answerIndex: 1
    ),
    const SingleQuestionModel(
        question: "Who is the founder of Tesla?",
        options: ["Steve Jobs", "Jeff Bezos", "Bill Gates", "Elon Musk"],
        answerIndex: 3
    ),
    const SingleQuestionModel(
        question: "Who is the founder of Google?",
        options: ["Steve Jobs", "Lary page", "JBill Gates", "Mark ZukerBurg"],
        answerIndex: 1
    ),
  ];

  bool questionScreen = true;
  int questionIndex = 0;
  int selectedAnswerIndex = -1;
  int noCorrectAnswer = 0;

  MaterialStateProperty<Color?> setColor(int buttonIndex) {
    if (selectedAnswerIndex != -1) {
      if (buttonIndex == questionList[questionIndex].answerIndex) {
        return const MaterialStatePropertyAll(Colors.green);
      }
      if (buttonIndex == selectedAnswerIndex) {
        return const MaterialStatePropertyAll(Colors.red);
      }

      return const MaterialStatePropertyAll(null);
    }

    return const MaterialStatePropertyAll(null);
  }

  void validateCurrentPage() {
    if (selectedAnswerIndex == -1) {
      return;
    }

    if (questionIndex + 1 == questionList.length) {
      questionScreen = false;
      setState(() {});
    }


    if (selectedAnswerIndex == questionList[questionIndex].answerIndex) {
        noCorrectAnswer++;
    }
    questionIndex++;
    selectedAnswerIndex = -1;
  }

    String getResultScreen(){
      print(noCorrectAnswer);
      if(noCorrectAnswer >=3){
          return "https://t3.ftcdn.net/jpg/06/23/56/90/360_F_623569090_sIwfbSjZkml1ff2i9gxyBb7IiCOdf9bV.jpg";
      }
      else{
        return "https://ih1.redbubble.net/image.2946949853.1802/st,small,507x507-pad,600x600,f8f8f8.jpg";
      }
  }

  Scaffold isQuestionScreen() {
    if (questionScreen) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Quiz App"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Questions"),
                Text("${questionIndex + 1}/${questionList.length}"),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text("${questionList[questionIndex].question}"),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
                style: ButtonStyle(
                    
                    minimumSize: const MaterialStatePropertyAll(Size(80,45)),
                    backgroundColor: setColor(0)),
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    selectedAnswerIndex = 0;
                    setState(() {});
                  }
                },
                child: Text("${questionList[questionIndex].options![0]}")),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ButtonStyle(backgroundColor: setColor(1)),
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    selectedAnswerIndex = 1;
                    setState(() {});
                  }
                },
                child: Text("${questionList[questionIndex].options![1]}")),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ButtonStyle(backgroundColor: setColor(2)),
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    selectedAnswerIndex = 2;
                    setState(() {});
                  }
                },
                child: Text("${questionList[questionIndex].options![2]}")),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ButtonStyle(
                    // maximumSize: const MaterialStatePropertyAll(Size(20, 10)),
                    backgroundColor: setColor(3)),
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    selectedAnswerIndex = 3;
                    setState(() {});
                  }
                },
                child: Text("${questionList[questionIndex].options![3]}")),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            validateCurrentPage();
            setState(() {});
          },
          child: const Icon(Icons.arrow_forward),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Quiz App"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Image.network(
             getResultScreen(),
              height: 400,
              width: 340,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text("Congratulations!!! "),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "You have completed quiz.",
            ),
            Text("$noCorrectAnswer/${questionList.length}"),
            ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.green)),
                onPressed: () {
                  questionIndex = 0;
                  selectedAnswerIndex = -1;
                  questionScreen = true;
                  noCorrectAnswer = 0;
                  setState(() {});
                },
                child: const Text(
                  "Reset",
                ))
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return isQuestionScreen();
  }
}
