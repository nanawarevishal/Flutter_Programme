

import 'package:get/get.dart';

class SliderController extends GetxController{

    RxDouble opacity = .1.obs;

    setOpacity(double value){
        this.opacity = value.obs;
    }
}