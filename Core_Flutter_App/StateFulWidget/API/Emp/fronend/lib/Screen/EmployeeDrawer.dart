import 'package:flutter/material.dart';
import 'package:fronend/Screen/GetAllEmployee.dart';
import 'package:fronend/Screen/RegisterEmployee.dart';

class employeeDrawer extends StatefulWidget {
  const employeeDrawer({super.key});

  @override
  State<StatefulWidget> createState() {
    return employeeDrawerState();
  }
}

class employeeDrawerState extends State<employeeDrawer> {
  final minPadding = 5.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Employee Management"),
      ),
      body: const Center(
        child: Text("Welcome Spring x Flutter"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.only(top: minPadding, bottom: minPadding),
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text("Employee Management"),
            ),
            ListTile(
              title: const Text("Register Employee"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const RegisterEmployee()));
              },
            ),
            ListTile(
              title: const Text("Get Employee"),
              onTap: () { Navigator.push(context, MaterialPageRoute(builder: (context)=>const AllEmployee()));
            },
            ),
          ],
        ),
      ),
    );
  }
}
