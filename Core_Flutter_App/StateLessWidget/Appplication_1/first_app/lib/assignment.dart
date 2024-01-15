import 'package:flutter/material.dart';

class Assignment extends StatelessWidget {
  const Assignment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment-02"),
      ),
      body: SizedBox(
        height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [

            Container(
              alignment: Alignment.center,
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 171, 233, 56),
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Text("This is child text"),
            ),


            Container(
                alignment: Alignment.center,
                height: 200,
                width: 200,
                decoration:  BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(30)
                ),

                child: const Text("This is second box"),
             
            )
          ],
        ),
      ),
    );
  }
}
