

import 'package:get/get.dart';

class CounterController extends GetxController{
    
    RxInt counter = 30.obs;

    incrementCounter(){
        counter.value++;
    }
}