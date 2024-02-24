import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State createState() => _ProfilePageState();
}

class _ProfilePageState extends State {

    final TextEditingController _nameController = TextEditingController();
    final FocusNode _nameFocusNode = FocusNode();


    final TextEditingController _phoneController = TextEditingController();
    final FocusNode _phoneFocusNode = FocusNode();


    final TextEditingController _emailController = TextEditingController();
    final FocusNode _emailFocusNode = FocusNode();


  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 219, 218, 218),
      body: SingleChildScrollView(
        child: Column(
          children: [
            PreferredSize(
              preferredSize: Size(width, 200),
              child: SizedBox(
                height: height / 3.6,
                child: Stack(children: [
                 
                  Container(
                    height: height / 6,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      colors: [
                        Color.fromARGB(255, 255, 98, 213),
                        Color.fromARGB(255, 126, 197, 255),
                        Color.fromARGB(255, 129, 226, 248)
                      ],
                    )),
                  ),
                  Positioned(
                      top: 80,
                      child: Image.asset("assets/images/ProfileRect.png")),
                  
                  Positioned(
                    top: 100,
                    left: 134,
                    child: Stack(children: [
                      Image.asset(
                        "assets/images/ProfilePolygon.png",
                        height: 100,
                      ),
                      Positioned(
                          top: 20,
                          left: 15,
                          child: Image.asset(
                            "assets/catImages/admin.png",
                            height: 70,
                          ))
                    ]),
                  ),
        
                  const Positioned(
                      top: 40,
                      left: 135,
                    child:  Text("Profile",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600), 
                    ),
                  ), 
                ]),
              ),
            ),
            const SizedBox(
                height: 10,
            ),

            Container(
                
              margin: const EdgeInsets.all(10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: Text(
                      "Admino",
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "India",
                        style:
                            TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                      ),
                      Icon(
                        Icons.location_on,
                        color: Color.fromARGB(255, 2, 187, 98),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: Text(
                        "Profile".toUpperCase(),
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      )
                  ),
                  const Divider(
                    thickness: 1,
                    color: Colors.black,
                  ),
        
                  const SizedBox(height: 10,),
        
                   Row(
                      children: [
                         const Icon(
                              Icons.person,
                              size: 40,
                          ),
        
                          const SizedBox(width: 20,),
        
                          Expanded(
                            child: SizedBox(
                                  height: 45,
                                child:  TextField(
                                    controller: _nameController,
                                    focusNode: _nameFocusNode,
                                  keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                      labelText: "NAME",
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20)
                                        )
                                    ),
                                ),
                            ),
                          )
                         
                      ],
                  ),
                  const SizedBox(height: 20,),
        
                   Row(
                      children: [
                         const Icon(
                              Icons.phone,
                              size: 40,
                          ),
        
                          const SizedBox(width: 20,),
        
                          Expanded(
                            child: SizedBox(
                                  height: 45,
                                child:  TextField(
                                      controller: _phoneController,
                                      focusNode: _phoneFocusNode,
                                      keyboardType: TextInputType.phone,
                                    decoration: InputDecoration(
                                      labelText: "PHONE",
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20)
                                        )
                                    ),
                                ),
                            ),
                          )
                         
                      ],
                  ),
        
                  const SizedBox(height: 20,),
        
                   Row(
                      children: [
                         const Icon(
                              Icons.email,
                              size: 40,
                          ),
        
                          const SizedBox(width: 20,),
        
                          Expanded(
                            child: SizedBox(
                                  height: 45,
                                child:  TextField(
                                    controller: _emailController,
                                    focusNode: _emailFocusNode,
                                      keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                      labelText: "EMAIL",
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20)
                                        )
                                    ),
                                ),
                            ),
                          )
                      ],
                  ),
        
                  const SizedBox(height: 20,),
        
                  Center(
                    child: ElevatedButton(
                        style: const ButtonStyle(
                          fixedSize: MaterialStatePropertyAll(Size(150, 50)),
                            backgroundColor: MaterialStatePropertyAll(Colors.black),
                            foregroundColor: MaterialStatePropertyAll(Colors.white)
                        ),
                        onPressed: (){
                            
                        }, 
                        child: const Text("Submit")
                    ),
                  ),

                   const SizedBox(
                    height: 20,
                  ),
                  Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: Text(
                        "Contact Me".toUpperCase(),
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      )
                  ),
                  const Divider(
                    thickness: 1,
                    color: Colors.black,
                  ),

                  Row(
                    children: [
                        const SizedBox(width: 20,),
                        IconButton(
                            onPressed: (){}, 
                            icon: const Icon(
                                FontAwesomeIcons.facebook,
                                color:  Color.fromARGB(255, 0, 107, 195),
                                size: 40,
                            )
                        ),
                        const SizedBox(width: 20,),
                        IconButton(
                            onPressed: (){}, 
                            icon: const Icon(
                                FontAwesomeIcons.squareInstagram,
                                color: Color.fromRGBO( 214,41,118,1),
                                size: 40,
                            )
                        ),
                        const SizedBox(width: 20,),
                        IconButton(
                            onPressed: (){}, 
                            icon: const Icon(
                                FontAwesomeIcons.twitter,
                                color: Color.fromARGB(255, 0, 107, 195),
                                size: 40,
                            )
                        ),
                        const SizedBox(width: 20,),
                        IconButton(
                            onPressed: (){}, 
                            icon: const Icon(
                                FontAwesomeIcons.squareWhatsapp,
                                color:  Colors.green,
                                size: 40,
                            )
                        ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
