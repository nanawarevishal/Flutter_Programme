

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:fronend/Model/Employee.dart';
import 'package:fronend/Screen/EmployeeDrawer.dart';

class AllEmployee extends StatefulWidget{
  const AllEmployee({super.key});

  @override
  State<StatefulWidget> createState() {
   return _AllEmployeeState();
  }

}

class _AllEmployeeState extends State<AllEmployee>{

    // var employess = List<EmployeeModel>.generate(200, (index) => null);

    Future<List<EmployeeModel>> getEmployees() async {
        var data = await http.get('http://localhost:8080/getallemployees' as Uri);
        var jsonData = json.decode(data.body);

        List<EmployeeModel> employee = [];
        for (var e in jsonData) {
        EmployeeModel employees = EmployeeModel(id: e['id'], firstName:e[ 'firstName'], lastName: e['lastName']);
        employee.add(employees);
        }
        return employee;
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text("All Employees data"),
                leading: IconButton(
                    onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const employeeDrawer()));
                    }, icon: const Icon(
                    Icons.arrow_back
                )),
                
                
            ),

            body: Container(
                child: FutureBuilder(
                    future: getEmployees(), 
                    builder: (BuildContext context,AsyncSnapshot snapshot){
                        if(snapshot.data == null){
                            return Container(
                                child: const Center(
                                    child: Icon(Icons.error),
                                ),
                            );
                        }
                        return ListView.builder(
                            itemCount: snapshot.data.length,
                            itemBuilder: (BuildContext context,int index){
                                return ListTile(
                                    title: const Text('ID'+" "+"First Name"+" "+"Last Name"),
                                    subtitle: Text(
                                        "${snapshot.data[index].id}"+
                                        "${snapshot.data[index].firstName}"+
                                        "${snapshot.data[index].lastName}"
                                    ),
                                    onTap: (){
                                        Navigator.push(context,  MaterialPageRoute(
                                        builder: (context) =>
                                        DetailPage(snapshot.data[index])));
                                    },
                                );
                            },
                        );
                    }),
            ),
           
        );
    }

}


class DetailPage extends StatelessWidget {
  EmployeeModel employee;

  DetailPage(this.employee);

  deleteEmployee1(EmployeeModel employee) async {
    final url = Uri.parse('http://localhost:8080/deleteemployee');
    final request = http.Request("DELETE", url);
    request.headers
        .addAll(<String, String>{"Content-type": "application/json"});
    request.body = jsonEncode(employee);
    final response = await request.send();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(employee.firstName),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.edit,
                color: Colors.white,
              ),
              onPressed: () {
               
              })
        ],
      ),
      body: Container(
        child: Text('FirstName' +
            ' ' +
            employee.firstName +
            ' ' +
            'LastName' +
            employee.lastName),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          deleteEmployee1(employee);
        //   Navigator.push(context,
        //       MaterialPageRoute(builder: (context) => deleteEmployee()));
        },
        child: Icon(Icons.delete),
        backgroundColor: Colors.pink,
      ),
    );
  }
}

