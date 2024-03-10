import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Employee {
  int id;
  String name;
  double sal;

  Employee({required this.id, required this.name, required this.sal});

  Map<String, dynamic> empMap() {
    return {
      'id': id,
      'name': name,
      'sal': sal,
    };
  }
}

dynamic database;

void main() async {
  runApp(const MainApp());

  database = await openDatabase(join(await getDatabasesPath(), "employeeDB.db"),
      version: 1, onCreate: (db, version) async {
    await db.execute(
        '''CREATE TABLE Employee(id INT PRIMARY KEY,name TEXT,sal REAL) ''');
  });

  print(await fetchData());

    Employee e1 = Employee(id: 1, name: "Virat", sal: 8.9);
    Employee e2 = Employee(id: 1, name: "Rhit", sal: 6.9);
    
    await insertData(e1);
    print(await fetchData());

    await insertData(e2);
    print(await fetchData());

    e2 = Employee(id: 2, name: "Shubhman", sal: 4.9);
     await insertData(e2);
    print(await fetchData());
    
}

Future<void> insertData(Employee emp) async {
  final localDB = await database;
  localDB.insert(
    'Employee',
    emp.empMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}


Future fetchData() async {
  final localDB = await database;
  List<Map<String, dynamic>> mapEntries = await localDB.query("Employee");
  return mapEntries;
}

Future deleteData(Employee obj) async {
  final localDB = await database;
  await localDB.delete("Employee", where: " id = ? ", whereArgs: [obj.id]);
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
