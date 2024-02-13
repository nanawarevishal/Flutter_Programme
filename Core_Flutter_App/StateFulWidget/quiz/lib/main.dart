import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz/QuizUI.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: QuizUI(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});
  @override
  State createState() => _QuizAppState();
}

class _QuizAppState extends State {
  List<Map> allQuestions = [
    {
      "question": "Who is the founder of Microsoft?",
      "options": ["Steve Jobs", "Jeff Bezos", "Bill Gates", "Elon Musk"],
      "answerIndex": 2,
    },
    {
      "question": "Who is the founder of Apple?",
      "options": ["Steve Jobs", "Jeff Bezos", "Bill Gates", "Elon Musk"],
      "answerIndex": 0,
    },
    {
      "question": "Who is the founder of Amazon?",
      "options": ["Steve Jobs", "Jeff Bezos", "Bill Gates", "Elon Musk"],
      "answerIndex": 1,
    },
    {
      "question": "Who is the founder of Tesla?",
      "options": ["Steve Jobs", "Jeff Bezos", "Bill Gates", "Elon Musk"],
      "answerIndex": 3,
    },
    {
      "question": "Who is the founder of Google?",
      "options": ["Steve Jobs", "Lary Page", "Bill Gates", "Elon Musk"],
      "answerIndex": 1,
    },
  ];

  bool questionScreen = true;
  int questionIndex = 0;
  int selectedAnswerIndex = -1;
  int noCorrectAnwer = 0;

  MaterialStateProperty<Color?> checkAnswer(int buttonIndex){

      if(selectedAnswerIndex == -1){
        return const MaterialStatePropertyAll(null);
      }

      else{

          if(buttonIndex == allQuestions[questionIndex]['answerIndex']){
              return const MaterialStatePropertyAll(Colors.green);
          }

          else if(buttonIndex == selectedAnswerIndex){
            return const MaterialStatePropertyAll(Colors.red);
          }

          return const MaterialStatePropertyAll(null);
      }
  }

  void validatePage(){

      if(selectedAnswerIndex == allQuestions[questionIndex]['answerIndex']){
        noCorrectAnwer++;
      }

      if(selectedAnswerIndex !=-1){
          questionIndex++;
          if(questionIndex < allQuestions.length){
              setState(() {
                selectedAnswerIndex= -1;
              });
          }

          else{
            setState(() {
              questionScreen = false;
            });
          }
      }
  }

  Scaffold isQuestionScreen() {
    if (questionScreen == true) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "QuizApp",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        ),
        body: Column(
          children: [
            
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center, 
              children: [
              
              const Text(
                "Questions : ",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "${questionIndex + 1}/${allQuestions.length}",
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ]),
            const SizedBox(
              height: 50,
            ),

            Container(
              width: 380,
              height: 50,
              margin: const EdgeInsets.only(left: 10),
              child: Text(
                allQuestions[questionIndex]["question"],
                style: const TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: checkAnswer(0)
              ),
              onPressed: (){
              setState(() {

                if(selectedAnswerIndex == -1){
                    selectedAnswerIndex = 0;
                }
              });
            },
            child: Text("A.${allQuestions[questionIndex]['options'][0]}",
             style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
              ),
            )),
            const SizedBox(
              height: 20,
            ),
            
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: checkAnswer(1)
              ),
              onPressed: (){
              setState(() {

                if(selectedAnswerIndex == -1){
                    selectedAnswerIndex = 1;
                }
              });
            },
            child: Text("B .${allQuestions[questionIndex]['options'][1]}",
             style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
              ),
            )),
            const SizedBox(
              height: 20,
            ),
           ElevatedButton(
              style: ButtonStyle(
                backgroundColor: checkAnswer(2)
              ),
              onPressed: (){
              setState(() {

                if(selectedAnswerIndex == -1){
                    selectedAnswerIndex = 2;
                }
              });
            },
            child: Text("C .${allQuestions[questionIndex]['options'][2]}",
             style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
              ),
            )),
            const SizedBox(
              height: 20,
            ),
            
           ElevatedButton(
              style: ButtonStyle(
                backgroundColor: checkAnswer(3)
              ),
              onPressed: (){
              setState(() {

                if(selectedAnswerIndex == -1){
                    selectedAnswerIndex = 3;
                }
              });
            },
            child: Text("D .${allQuestions[questionIndex]['options'][3]}",
             style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
              ),
            )),
            const SizedBox(
              height: 20,
            ),
          
          ],
        ),
        floatingActionButton: FloatingActionButton(
           onPressed: () {
                if(selectedAnswerIndex == -1) {
                  Get.snackbar(
                    "Warning....!", "Please Select option",
                      colorText:  Colors.red,
                      backgroundColor: Colors.white,
                      barBlur: 230,
                      dismissDirection: DismissDirection.horizontal
                    );
                  return;
                }
    
                validatePage();
              },
          backgroundColor: Colors.black,
          child: const Icon(
            Icons.forward,
            color: Colors.white,
          ),
        ),
      );
    } else {
      return  Scaffold(
        appBar: AppBar(
         title: const Text(
            "QuizApp",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              color: Colors.orange,
            ),
          ),
          centerTitle:  true,
        ),
        body: Column(

          children: [
            const Row(),
            const SizedBox(
              height: 30,
            ),

            Image.network("https://t3.ftcdn.net/jpg/06/23/56/90/360_F_623569090_sIwfbSjZkml1ff2i9gxyBb7IiCOdf9bV.jpg",
            height: 400,
            width: 340,),
            
            const SizedBox(height: 30,),
            const Text("Congratulations!!! ",style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.w500
            ),),
            const SizedBox(height: 20,),
            const Text("You have completed quiz.",style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.w500
            ),),
            Text("$noCorrectAnwer/${allQuestions.length}"),

            ElevatedButton(
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.green)
              ),
              onPressed: (){
              questionIndex = 0;
              selectedAnswerIndex = -1;
              questionScreen = true;
              setState(() {
              });

            }, child: const Text("Reset",style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 31, 30, 30)
            ),))
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
