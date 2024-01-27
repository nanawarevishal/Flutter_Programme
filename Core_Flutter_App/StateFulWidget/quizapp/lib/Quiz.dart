import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:quizapp/HomePage.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuizQuestions();
  }
}

class _QuizQuestions extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 238, 238),
      body: Container(
        margin: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          children: [
            Row(
              children: [
                Card(
                    color: const Color.fromARGB(255, 238, 238, 238),
                  child: InkWell(
                    onTap: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MainPage()),
                        );
                    },
                    child: Container(
                      height: 32,
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black)),
                      child: const CircleAvatar(
                        backgroundColor: Colors.white,
                        foregroundImage: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSK84bcIqZsv7NQ_oTjn8fQ16QqhBO7Vt0bcU_EGtaL0wtIxRWH_l2MtiDqkiERUCHijp0&usqp=CAU"),
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: LinearPercentIndicator(
                      width: 236,
                      animation: true,
                      lineHeight: 20.0,
                      animationDuration: 2500,
                      percent: 0.8,
                      center: const Text("80.0%"),
                      progressColor: Colors.green,
                      barRadius: const Radius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Stack(
                alignment: Alignment.topCenter, children: [
              Container(
                  padding: const EdgeInsets.only(
                      top: 75, left: 25, right: 25, bottom: 25),
                  width: 300,
                  height: 230,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 165, 237, 254),
                      borderRadius: BorderRadius.circular(20)),
                  child: const Text(
                    "Which is most popular Sports throughout the world?",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
              CircularPercentIndicator(
                radius: 30.0,
                lineWidth: 8.0,
                animation: true,
                percent: 0.7,
                center: const Text(
                  "24",
                ),
                circularStrokeCap: CircularStrokeCap.round,
                progressColor: Colors.red,
              ),
            ]),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.only(
                top: 10,
                left: 20
              ),
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(20)
              ),
              child: const Text("VoleyBall",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.only(
                top: 10,
                left: 20
              ),
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(20)
              ),
              child: const Text("BasketBall",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.only(
                top: 10,
                left: 20
              ),
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(20)
              ),
              child: const Text("Cricket",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.only(
                top: 10,
                left: 20
              ),
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(20)
              ),
              child: const Text("FootBall",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            ),
             const SizedBox(
              height: 20,
            ),
            Container(
                alignment: Alignment.center,
             
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 1, 113, 141),
              ),
              child: const Text("Next",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}
