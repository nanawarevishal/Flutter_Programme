import 'package:flutter/material.dart';
import 'package:fronend/Screen/EmployeeDrawer.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget{
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
     title: "employee Management",
        theme: ThemeData(
          primarySwatch: Colors.blue
        ),
     home: employeeDrawer(),
    );
  }
}
