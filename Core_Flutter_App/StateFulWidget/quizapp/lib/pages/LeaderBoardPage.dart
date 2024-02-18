import 'package:flutter/material.dart';

class LearderBoardPage extends StatefulWidget {
  const LearderBoardPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _LeaderBoardPage();
  }
}

class CurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..lineTo(0, size.height) // Move to bottom-left
      ..quadraticBezierTo(
        size.width / 2,
        size.height - 50,
        size.width,
        size.height, // Quad curve to bottom-right
      )
      ..lineTo(size.width, 0); // Line to top-right

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class _LeaderBoardPage extends State<LearderBoardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: const Color.fromARGB(255, 255, 119, 119),
      //   foregroundColor: const Color.fromARGB(255, 255, 119, 119),
      //     // title: const Text("data"),
      // ),
      backgroundColor: Color.fromARGB(255, 225, 224, 224),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              ClipPath(
                clipper: CurveClipper(),
                child: Container(
                  height: 350.0,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    color: Color.fromARGB(255, 255, 94, 82),
                  ),
                  child: Column(
                    children: [
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 60),
                              child: const Text(
                                "LeaderBoard",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 50,
                                  width: 300,
                                  margin: const EdgeInsets.only(top: 20),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 88,
                                        padding: const EdgeInsets.all(7),
                                        margin: const EdgeInsets.only(left: 7),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(4),
                                            color: Colors.redAccent),
                                        child: const Text(
                                          "All Time",
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        height: 40,
                                        width: 95,
                                        
                                          // padding: const EdgeInsets.all(7),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(4),
                                          color: Colors.redAccent
                                        ),
                                        child:  ElevatedButton(
                                          
                                          style:const ButtonStyle(
                                            
                                            // minimumSize: MaterialStatePropertyAll(Size(40,88)),
                                            elevation: MaterialStatePropertyAll(0),
                                              backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 252, 3, 3))
                                          ),
                                          onPressed: () {},
                                          child:const Text(
                                            "This Week",
                                            
                                            style: TextStyle(fontSize: 15,color: Colors.black),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        height: 40,
                                        width: 88,
                                        padding: const EdgeInsets.all(7),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(4),
                                          // color: Colors.redAccent
                                        ),
                                        child: const Text(
                                          "Month",
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 135,
                            width: 85,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadiusDirectional.vertical(
                                    top: Radius.elliptical(
                                        MediaQuery.of(context).size.width, 165),
                                    bottom: const Radius.elliptical(400, 200)),
                                color:
                                    const Color.fromARGB(255, 252, 134, 124)),
                            child: const Column(
                              children: [
                                CircleAvatar(
                                  maxRadius: 30,
                                  foregroundImage: NetworkImage(
                                      "https://img.freepik.com/premium-vector/young-man-face-avater-vector-illustration-design_968209-13.jpg"),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  "Alex Warner",
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  "1523 Points",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 150,
                            width: 85,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadiusDirectional.vertical(
                                    top: Radius.elliptical(
                                        MediaQuery.of(context).size.width, 150),
                                    bottom: const Radius.elliptical(400, 200)),
                                color:
                                    const Color.fromARGB(255, 252, 134, 124)),
                            child: const Column(
                              children: [
                                CircleAvatar(
                                  maxRadius: 30,
                                  foregroundImage: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHDHiJHyJ7y9lpOHQewoKqdq7LYZjSDgC6g5HnlqZW6fjiQeEaqAGq4Qe-CvXtbsCaFqg&usqp=CAU"),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  "John Devoe",
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  "1890 Points",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 136,
                            width: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadiusDirectional.vertical(
                                    top: Radius.elliptical(
                                        MediaQuery.of(context).size.width, 150),
                                    bottom: const Radius.elliptical(400, 200)),
                                color:
                                    const Color.fromARGB(255, 252, 134, 124)),
                            child: const Column(
                              children: [
                                CircleAvatar(
                                  maxRadius: 30,
                                  foregroundImage: NetworkImage(
                                      "https://i.pinimg.com/originals/a9/a2/15/a9a215cadc81daa174607b3930e40858.png"),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  "Nisha Kayh",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  "1634 Points",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 60,
                width: 450,
                padding: const EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: const Row(
                  children: [
                    Text("4"),
                    SizedBox(
                      width: 20,
                    ),
                    CircleAvatar(
                      maxRadius: 20,
                      foregroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2j0_vnbTEYnELVY8tlXWYTqSjv91hZap8Naeq58C4wEJSUmodyaaMRhGqvkuyumO7T3g&usqp=CAU"),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Smith Carrol",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      "1520",
                      style:
                          TextStyle(color: Color.fromARGB(255, 252, 134, 124)),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 60,
                width: 450,
                padding: const EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: const Row(
                  children: [
                    Text("5"),
                    SizedBox(
                      width: 20,
                    ),
                    CircleAvatar(
                      maxRadius: 20,
                      foregroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxbVQ_c2ebN1PcdbQtKJ3E4PeXu35mtTV0Rw&usqp=CAU"),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Gabriel Soares",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      "1497",
                      style:
                          TextStyle(color: Color.fromARGB(255, 252, 134, 124)),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 60,
                width: 450,
                padding: const EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: const Row(
                  children: [
                    Text("6"),
                    SizedBox(
                      width: 20,
                    ),
                    CircleAvatar(
                      maxRadius: 20,
                      foregroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxpAau9O4-hzzbl0Ed3Mi-o4X9s6BCUdUObg&usqp=CAU"),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Yahiro yuhuko",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      "1478",
                      style:
                          TextStyle(color: Color.fromARGB(255, 252, 134, 124)),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 60,
                width: 450,
                padding: const EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: const Row(
                  children: [
                    Text("7"),
                    SizedBox(
                      width: 20,
                    ),
                    CircleAvatar(
                      maxRadius: 20,
                      foregroundImage: NetworkImage(
                          "https://st2.depositphotos.com/8230070/12408/v/950/depositphotos_124084928-stock-illustration-cartoon-illustration-of-a-handsome.jpg"),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Joe Swares",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      "1465",
                      style:
                          TextStyle(color: Color.fromARGB(255, 252, 134, 124)),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 60,
                width: 450,
                padding: const EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: const Row(
                  children: [
                    Text("8"),
                    SizedBox(
                      width: 20,
                    ),
                    CircleAvatar(
                      maxRadius: 20,
                      foregroundImage: NetworkImage(
                          "https://thumbs.dreamstime.com/z/student-avatar-illustration-user-profile-icon-youth-avatar-student-avatar-illustration-simple-cartoon-user-portrait-user-profile-276214170.jpg"),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Ben Ducket",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      "1458",
                      style:
                          TextStyle(color: Color.fromARGB(255, 252, 134, 124)),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 60,
                width: 450,
                padding: const EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: const Row(
                  children: [
                    Text("9"),
                    SizedBox(
                      width: 20,
                    ),
                    CircleAvatar(
                      maxRadius: 20,
                      foregroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxbVQ_c2ebN1PcdbQtKJ3E4PeXu35mtTV0Rw&usqp=CAU"),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Gabriel Sommon",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      "1447",
                      style:
                          TextStyle(color: Color.fromARGB(255, 252, 134, 124)),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 60,
                width: 450,
                padding: const EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: const Row(
                  children: [
                    Text("10"),
                    SizedBox(
                      width: 20,
                    ),
                    CircleAvatar(
                      maxRadius: 20,
                      foregroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxbVQ_c2ebN1PcdbQtKJ3E4PeXu35mtTV0Rw&usqp=CAU"),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Arohi Sharma",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      "1446",
                      style:
                          TextStyle(color: Color.fromARGB(255, 252, 134, 124)),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 60,
                width: 450,
                padding: const EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: const Row(
                  children: [
                    Text("11"),
                    SizedBox(
                      width: 20,
                    ),
                    CircleAvatar(
                      maxRadius: 20,
                      foregroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxbVQ_c2ebN1PcdbQtKJ3E4PeXu35mtTV0Rw&usqp=CAU"),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Gabriel Soares",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      "1497",
                      style:
                          TextStyle(color: Color.fromARGB(255, 252, 134, 124)),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
