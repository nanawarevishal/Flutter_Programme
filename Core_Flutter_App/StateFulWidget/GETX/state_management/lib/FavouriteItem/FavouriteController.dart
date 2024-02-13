

import 'package:get/get.dart';

class FavouriteController extends GetxController{

    RxList<String>fruitList = ["Orange","Apple","Mango","Banana","Guava","Cherry"].obs;

    RxList<dynamic>templs = [].obs;

    toggleFuit(String data){
        if(templs.contains(data)){
            templs.remove(data);
        }
        else{
            templs.add(data);
        }
    }
    
}