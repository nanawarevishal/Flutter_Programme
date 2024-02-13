

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:mvc/res/Colors/AppColor.dart';

class Utils{

    static void fieldFocusChange(BuildContext context,FocusNode current,FocusNode nextFocus){
        current.unfocus();

        FocusScope.of(context).requestFocus(nextFocus);
    }

    static toastMessage(String msg){
        Fluttertoast.showToast(
            msg: msg,
            backgroundColor: AppColor.blackColor,
            textColor: AppColor.whileColor,
            gravity: ToastGravity.BOTTOM
        );
    }

    static SnackBar(String title,String msg){
        Get.snackbar(
            title, 
            msg,
        );
    }
}