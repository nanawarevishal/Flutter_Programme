import 'package:educourse/Pages/CousePage.dart';
import 'package:educourse/Utils/Uitls.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State createState() => _HomePageState();
}

class _HomePageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(230, 239, 239, 1),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.horizontal_split_sharp)),
                    const Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.notifications_none_sharp))
                  ],
                ),
                 Text(
                  "Welcome to new",
                  style: GoogleFonts.jost(textStyle: const TextStyle(fontSize: 26, fontWeight: FontWeight.w300)),
                ),
                 Text(
                  "Educourse",
                  style: GoogleFonts.jost(textStyle: const TextStyle(fontSize: 37, fontWeight: FontWeight.w700)),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter your Keyword",
                      filled: true,
                      fillColor: const Color.fromRGBO(255, 255, 255, 1),
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.all(Radius.circular(28))),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.all(Radius.circular(28))),
                      suffixIcon: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.search))),
                )
              ]),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(38),
                      topRight: Radius.circular(38))),
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(),
                     Text(
                      "Course For You",
                      style:GoogleFonts.jost(textStyle:
                          const TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 242,
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                                onTap: (){
                                    Navigator.push(context, MaterialPageRoute(
                                      builder: (BuildContext context){
                                        return const CoursePage();
                                      }
                                    )
                                  );
                                },
                              child: Container(
                                width: 190,
                                padding: const EdgeInsets.only(
                                    top: 20, left: 15, right: 15),
                                margin: const EdgeInsets.only(right: 10),
                                decoration:  BoxDecoration(
                                    borderRadius:
                                        const BorderRadius.all(Radius.circular(14)),
                                    gradient: LinearGradient(
                                        begin: Alignment.topRight,
                                        end: Alignment.bottomLeft,
                                        colors: [
                                          Utils.courseBackGroundColor[index % Utils.courseBackGroundColor.length][0],
                                          Utils.courseBackGroundColor[index % Utils.courseBackGroundColor.length][1]
                                        ])),
                                child: Column(
                                  children: [
                                     Text(
                                      "Ux designer from scrach",
                                      style: GoogleFonts.jost(textStyle: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500)),
                                    ),
                                    SizedBox(
                                        width: 160,
                                        height: 160,
                                        child:
                                            Image.asset(Utils.imgString[index % Utils.imgString.length]),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                     Text(
                      "Course By Category",
                      style: GoogleFonts.jost(textStyle:
                          const TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            height: 36,
                            width: 36,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(8)),
                                color: Color.fromRGBO(25, 0, 56, 1)),
                            child: Image.asset(
                              "assets/images/image1.png",
                              height: 20,
                              width: 20,
                            ),
                          ),
                            const SizedBox(height: 8,),
                          const Text("UI/UX",style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                          ),),
                        ]),
                        Column(
                          children: [
                            Container(
                              height: 36,
                              width: 36,
                              padding: const EdgeInsets.all(8),
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(8)),
                                  color: Color.fromRGBO(25, 0, 56, 1)),
                              child: Image.asset(
                                "assets/images/image2.png",
                                height: 20,
                                width: 20,
                              ),
                            ),
                            const SizedBox(height: 8,),
                            const Text("VISUAL",style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                          ),),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 36,
                              width: 36,
                              padding: const EdgeInsets.all(8),
                              decoration: const BoxDecoration(
                                     borderRadius: BorderRadius.all(Radius.circular(8)),
                                  color: Color.fromRGBO(25, 0, 56, 1)),
                              child: Image.asset(
                                "assets/images/image3.png",
                                height: 20,
                                width: 20,
                              ),
                            ),
                            const SizedBox(height: 8,),
                            const Text("ILLUSTRATION",style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                          ),),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 36,
                              width: 36,
                              padding: const EdgeInsets.all(8),
                              decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(8)),
                                  color: Color.fromRGBO(25, 0, 56, 1)),
                              child: Image.asset(
                                "assets/images/image4.png",
                                height: 20,
                                width: 20,
                              ),
                            ),
                            const SizedBox(height: 8,),
                            const Text("PHOTO",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400
                                ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
