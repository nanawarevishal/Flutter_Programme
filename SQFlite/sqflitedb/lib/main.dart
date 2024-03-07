import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Player{

    final String name;
    final int jerNo;
    final int runs;
    final double avg;

    Player({required this.name,required this.jerNo,required this.runs, required this.avg});

    Map<String,dynamic>playerMap(){
        return {
                'name':name,
                'jerNo':jerNo,
                'runs':runs,
                'avg':avg
        };
    }

    @override
    String toString(){
        return "{Name:$name,JerNO:$jerNo,Runs:$runs,Avgerage:$avg}";
    }
}

Future insertPlayerData(Player obj)async{
    final localDB = await database;
    await localDB.insert(
        "Player",
        obj.playerMap(),
        conflictAlgorithm: ConflictAlgorithm.replace,
    );
}

Future fetchData()async{

    final localDB = await database;

    print(localDB);

    List<Map<String,dynamic>>playerList = await localDB.query("Player");

    return playerList;
}


dynamic database;

void main()async {
  runApp(const MainApp());

    database = openDatabase(
    join(await getDatabasesPath(), "PlayerDB.db"),
    version: 1,
    onCreate: (db, version) async {
      await db.execute('''CREATE TABLE Player(
        name TEXT,
        jerNo INTEGER PRIMARY KEY,
        runs INT,
        avg REAL) ''');
    },
  );

    Player player1 = Player(name: "Virat Kohli", jerNo:18, runs: 27000, avg: 56.86);
    await insertPlayerData(player1);

    Player player2 = Player(name: "Shubhman Gill", jerNo:77, runs: 3245, avg: 66.32);
    await insertPlayerData(player2);

    Player player3 = Player(name: "Rishbh Pant", jerNo:17, runs: 4500, avg: 56.86);
    await insertPlayerData(player3);

    print(await fetchData());
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
