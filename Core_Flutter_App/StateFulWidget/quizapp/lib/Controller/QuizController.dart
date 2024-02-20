

import 'package:get/get.dart';
import 'package:quizapp/main.dart';
import 'package:quizapp/pages/CongratulationsPage.dart';

class QuizController extends GetxController{

    RxInt currentQuestionIndex = 0.obs;
    RxInt counter = 30.obs;


    void decrementCounter(){
        counter.value--;
        if(counter.value ==0){
            gotoNextQuestion(MainApp.storage.read("quizLisLength"));
        }
    }

    void incrementQueCounter(){
        currentQuestionIndex.value = currentQuestionIndex.value + 1;
    }

    void gotoNextQuestion(int queListLength){
        if(currentQuestionIndex.value + 1 < queListLength){
            incrementQueCounter();
            resetCounter();
        }
        else if(currentQuestionIndex.value +1 == queListLength){
            Get.to(()=>const CongratulationsPage());
        }
    }

    void resetCounter(){
        counter = 31.obs;
        decrementCounter();
    }

}