

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizapp/main.dart';
import 'package:quizapp/pages/LeaderBoardPage.dart';
import 'package:quizapp/Models/SingleUserModel.dart';
import 'package:quizapp/Service/HomePageService.dart';
import 'package:quizapp/pages/CategoryQuizPage.dart';

import 'Quiz.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
	return _HomePage();
  }
}

class _HomePage extends State<HomePage> {

	User? user;

	@override
	void initState(){
		super.initState();
		initUserData();
	
	}

   Future<void> initUserData() async {
	try {
		final userData = await HomePageService.getUserData();
		setState(() {
		user = userData;
		});
	} catch (e) {
		
		// print("Error initializing user data: $e");
	}
}

  @override
  Widget build(BuildContext context) {

	if(user == null){
		return const Scaffold(
			body: Center(
			  child: CircularProgressIndicator()),
		);
	}
	return Scaffold(
		backgroundColor: const Color.fromARGB(255, 238, 238, 238),
		body: SingleChildScrollView(
		  child: Container(
			  margin: const EdgeInsets.only(
				  top: 60, left: 15, right: 15, bottom: 60),
			  child: Column(
				  mainAxisAlignment: MainAxisAlignment.start,
				  crossAxisAlignment: CrossAxisAlignment.start,
				  children: [
					Row(
					  crossAxisAlignment: CrossAxisAlignment.start,
					  children: [
						 Column(
						  crossAxisAlignment: CrossAxisAlignment.start,
						  children: [
							Text(
							  user!.firstName,
							  style: const TextStyle(
								  fontSize: 32, fontWeight: FontWeight.bold),
							),
						   const Text("Let's make this day productive"),
						  ],
						),
						const SizedBox(
						  width: 72,
						),
						Image.network(
						  "https://icon2.cleanpng.com/20180920/att/kisspng-user-logo-information-service-design-5ba34f886b6700.1362345615374293844399.jpg",
						  width: 60,
						  height: 55,
						  alignment: Alignment.topLeft,
						)
					  ],
					),
					const SizedBox(
					  height: 20,
					),
					Container(
					  padding: const EdgeInsets.all(5),
					  alignment: Alignment.center,
					  decoration: BoxDecoration(
						  borderRadius: BorderRadius.circular(20),
						  color: Colors.white),
					  child: Row(
						children: [
						  Container(
							padding: const EdgeInsets.all(5),
							height: 70,
							decoration: BoxDecoration(
							  borderRadius: BorderRadius.circular(30),
							  // color: Colors.amber
							),
							child: Row(
							  children: [
								InkWell(
								  onTap: () {
									Navigator.push(
									  context,
									  MaterialPageRoute(
										  builder: (context) =>
											  const LearderBoardPage()),
									);
								  },
								  child: Image.network(
									  "https://t4.ftcdn.net/jpg/01/39/31/79/240_F_139317922_FAWtQJMMVOVvDeM2OVg0ofiwIvBUrrux.jpg"),
								),
								const SizedBox(
								  width: 10,
								),
								const Column(
								  children: [
									Text(
									  "Ranking",
									  style: TextStyle(color: Colors.red),
									),
									Text(
									  "348",
									  style: TextStyle(color: Colors.blue),
									)
								  ],
								)
							  ],
							),
						  ),
						  const SizedBox(
							width: 10,
						  ),
						  Container(
							padding: const EdgeInsets.all(5),
							height: 70,
							decoration: BoxDecoration(
							  borderRadius: BorderRadius.circular(30),
							  // color: Colors.amber
							),
							child: Row(
							  children: [
								Image.network(
								  "https://static.vecteezy.com/system/resources/previews/005/276/070/original/dollar-coin-clipart-free-vector.jpg",
								  filterQuality: FilterQuality.high,
								),
								Container(
								  width: 10,
								),
								 Column(
								  children: [
									const Text(
									  "Points",
									  style: TextStyle(color: Colors.red),
									),
									Text(
									  user!.score.toString(),
									  style: const TextStyle(color: Colors.blue),
									)
								  ],
								)
							  ],
							),
						  )
						],
					  ),
					),
					const SizedBox(
					  height: 20,
					),
					const Text(
					  "Let's Play",
					  style:
						  TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
					),
					const SizedBox(
					  height: 20,
					),
					Row(
					  crossAxisAlignment: CrossAxisAlignment.start,
					  children: [
						Column(
						  children: [
							InkWell(
							  onTap: () {
								// HomePageService.getQuizCategory(categoryId: 1);
								MainApp.storage.remove("categoryId");
								MainApp.storage.write("categoryId",1);
								Get.to(()=>const CategoryQuiz());
							  },
							  child: Container(
								// margin: EdgeInsets.all(5),
								decoration: BoxDecoration(
								  borderRadius: BorderRadius.circular(20),
								  color: Colors.white,
								),
								padding: const EdgeInsets.all(10),
								height: 150,
								width: 150,
								// color: Colors.amber,
								child: Column(
								  children: [
									Image.network(
									  "https://m.media-amazon.com/images/I/71jRZ6H183L.png",
									  height: 80,
									  width: 100,
									  
									),
									const Text(
									  "Programming",
									  style: TextStyle(
										  fontWeight: FontWeight.bold),
									),
									const Text("50 Questions")
								  ],
								),
							  ),
							),
							const SizedBox(
							  height: 10,
							),
							InkWell(
							  onTap: () {
								Get.to(() => const Quiz());
							  },
							  child: Container(
								// margin: EdgeInsets.all(5),
								decoration: BoxDecoration(
								  borderRadius: BorderRadius.circular(20),
								  color: Colors.white,
								),
								padding: const EdgeInsets.all(10),
								height: 150,
								width: 150,
								child: Column(
								  children: [
									Image.network(
									  "https://img.freepik.com/free-vector/basketball-ball-isolated_1284-42545.jpg",
									  height: 80,
									  width: 80,
									),
									const Text(
									  "Sports",
									  style: TextStyle(
										  fontWeight: FontWeight.bold),
									),
									const Text("50 Questions")
								  ],
								),
							  ),
							),
							const SizedBox(
							  height: 10,
							),
							InkWell(
							  onTap: () {
								Get.to(() => const Quiz());
							  },
							  child: Container(
								decoration: BoxDecoration(
								  borderRadius: BorderRadius.circular(20),
								  color: Colors.white,
								),
								padding: const EdgeInsets.all(10),
								height: 150,
								width: 150,
								// color: Colors.amber,
								child: Column(
								  children: [
									Image.network(
									  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRL3L3gD3p-UnMpg3oReJ1oYizPnBW9Azfqjg&usqp=CAU",
									  height: 80,
									  width: 80,
									),
									const Text(
									  "Maths",
									  style: TextStyle(
										  fontWeight: FontWeight.bold),
									),
									const Text("95 Questions")
								  ],
								),
							  ),
							),
							const SizedBox(
							  height: 10,
							),
						  ],
						),
						const SizedBox(
						  width: 15,
						),
						Column(
						  children: [
							Card(
							  child: InkWell(
								onTap: () {
								  Get.to(() => const Quiz());
								},
								child: Container(
								  // margin: EdgeInsets.all(5),
								  decoration: BoxDecoration(
									borderRadius: BorderRadius.circular(20),
									color: Colors.white,
								  ),
								  padding: const EdgeInsets.all(10),
								  height: 150,
								  width: 150,
								  // color: Colors.amber,
								  child: Column(
									children: [
									  Image.network(
										"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHEInwIFvolcjNtUIcvLADBjOcGkNdf9IBBUrMCl3Mx3lxlaECPtwzNF4HRzICzlXK4HE&usqp=CAU",
										height: 80,
										width: 80,
									  ),
									  const Text(
										"Chemistry",
										style: TextStyle(
											fontWeight: FontWeight.bold),
									  ),
									  const Text("30 Questions")
									],
								  ),
								),
							  ),
							),
							const SizedBox(
							  height: 10,
							),
							Card(
							  child: InkWell(
								splashColor: Colors.blue.withAlpha(30),
								onTap: () {
								  Navigator.push(
									context,
									MaterialPageRoute(
										builder: (context) => const Quiz()),
								  );
								},
								child: Container(
								  // margin: EdgeInsets.all(5),
								  decoration: BoxDecoration(
									borderRadius: BorderRadius.circular(20),
									color: Colors.white,
								  ),
								  padding: const EdgeInsets.all(10),
								  height: 150,
								  width: 150,
								  // color: Colors.amber,
								  child: Column(
									children: [
									  Image.network(
										"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBMvkCcYoTnot53XhZX3VS0x8UuVbsgb4t4VQW-nBa-qiukyRvd2VwVs4MNHtO9aesKZg&usqp=CAU",
										height: 80,
										width: 80,
									  ),
									  const Text(
										"History",
										style: TextStyle(
											fontWeight: FontWeight.bold),
									  ),
									  const Text("128 Questions")
									],
								  ),
								),
							  ),
							),
							const SizedBox(
							  height: 10,
							),
							Card(
							  clipBehavior: Clip.hardEdge,
							  child: InkWell(
								splashColor:
									const Color.fromRGBO(33, 150, 243, 1)
										.withAlpha(30),
								onTap: () {
								  Navigator.push(
									context,
									MaterialPageRoute(
										builder: (context) => const Quiz()),
								  );
								},
								child: Container(
								  decoration: BoxDecoration(
									borderRadius: BorderRadius.circular(20),
									color: Colors.white,
								  ),
								  padding: const EdgeInsets.all(10),
								  height: 150,
								  width: 150,
								  // color: Colors.amber,
								  child: Column(
									children: [
									  Image.network(
										"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXVugN3eh78idSVmH1mcGExN08uOZYV2XKIA&usqp=CAU",
										height: 80,
										width: 80,
									  ),
									  const Text(
										"Geography",
										style: TextStyle(
											fontWeight: FontWeight.bold),
									  ),
									  const Text("70 Questions")
									],
								  ),
								),
							  ),
							),
						  ],
						)
					  ],
					)
				  ])),
		));
  }
}
