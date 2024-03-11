
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:todoapp/Model/TodoListModel.dart';

class DatabaseService{

    static dynamic database;

    static  createDatabase()async{
        database = openDatabase(
            join(await getDatabasesPath(),"todoDB.db"),
            version: 1,
            onCreate: (db,version)async{
                await db.execute(''' CREATE TABLE Task(id INT PRIMARY KEY,title TEXT,description TEXT,date TEXT)''');
            }
        );
    }

    static Future insertData(ToDoModelClass obj)async{
        final localDB = await database;
        await localDB.insert(
            "Task",
            obj.todoMap(),
            conflictAlgorithm: ConflictAlgorithm.replace,
        );
    }

    static Future<List<ToDoModelClass>> getTaskData()async{

        List<ToDoModelClass>modelObj = [];
        final localDB = await database;

        List<Map<String,dynamic>>todoEntries =  await localDB.query("Task");

        for(int i=0;i<todoEntries.length;i++){
            modelObj.add(ToDoModelClass(
                id: todoEntries[i]['id'],
                title: todoEntries[i]['title'], 
                description: todoEntries[i]['description'], 
                date: todoEntries[i]['date'])
            );
        }

        return modelObj;
    }

    static Future deleteTask(ToDoModelClass obj)async{
        final localDB = await database;

        await localDB.delete(
            "Task",
            where:"id = ?",
            whereArgs:[obj.id]
        );
    }

    static Future updateTask(ToDoModelClass obj)async{
        final localDB = await database;
        await localDB.update(
            "Task",
            obj.todoMap(),
            where:"id = ?",
            whereArgs:[obj.id]
        );
    }

    static Future<int> nextId() async {
        List<ToDoModelClass>ls = await getTaskData();

        if(ls.isEmpty){
            return 1;
        }

        int id = ls[ls.length-1].id;

        return id+1;
    }
}