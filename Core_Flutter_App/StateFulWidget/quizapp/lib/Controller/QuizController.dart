

import 'dart:async';

import 'package:get/get.dart';
import 'package:quizapp/main.dart';
import 'package:quizapp/pages/CongratulationsPage.dart';

class QuizController extends GetxController{

    RxInt currentQuestionIndex = 0.obs;
    RxInt counter = 30.obs;
    RxInt secondsPassed = 30.obs;
    late Timer timer;

    void reset() {
        currentQuestionIndex.value = 0;
        resetTimer();
    }

    void decrementCounter(){
        secondsPassed.value--;
        if(secondsPassed.value ==0){
            gotoNextQuestion(MainApp.storage.read("quizLisLength"));
        }
    }

    void incrementQueCounter(){
        currentQuestionIndex.value = currentQuestionIndex.value + 1;
    }

    void gotoNextQuestion(int queListLength){
        if(currentQuestionIndex.value + 1 < queListLength){
            resetTimer();
            incrementQueCounter();
        }
        else if(currentQuestionIndex.value +1 == queListLength){
            stopTimer();
            currentQuestionIndex.value = 0;
            Get.to(()=>const CongratulationsPage());
        }
    }

    startTimer() {
        timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        decrementCounter();
        if(secondsPassed.value ==0){
            gotoNextQuestion(MainApp.storage.read("quizLisLength"));
        }
        });
    }

    stopTimer() {
        timer.cancel();
    }

    resetTimer() {
        secondsPassed.value = 30;
    }

}