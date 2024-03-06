import 'package:flutter/material.dart';
import 'package:get/get.dart';
class SnackBarDemo extends StatelessWidget {
  const SnackBarDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Error();
          snack();
        },
        child: const Center(
          child: Text("Show SnackBar"),
        ),
      ),
    );
  }
}

void snack() {
  Get.snackbar(
    "",
    "",
    backgroundColor: Colors.transparent,
    overlayBlur: 5,
    titleText: Container(
     
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Row(
        children: [
          Icon(
            Icons.check_circle_rounded,
            color: Color.fromARGB(255, 0, 184, 95),
          ),
          SizedBox(width: 20),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Congratulations....!",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "You've achieved something great!",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
      
  );
}

void Error() {
  Get.snackbar(
    "",
    "",
    backgroundColor: Colors.transparent,
    overlayBlur: 5,
    titleText: Container(
     
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.red,
            child: Icon(
              Icons.close,
              color: Color.fromARGB(255, 248, 248, 248),
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Warning....!",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "You've achieved something great!",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
      
  );
}
