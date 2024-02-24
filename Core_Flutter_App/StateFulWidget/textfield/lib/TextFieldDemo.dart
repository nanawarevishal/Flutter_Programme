import 'package:flutter/material.dart';

class TextFieldDemo extends StatefulWidget {
  const TextFieldDemo({super.key});

  @override
  State createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State {

  final TextEditingController _nameTextController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  final TextEditingController _emailTextController = TextEditingController();
  final FocusNode _emailfocusNode = FocusNode();
  final TextEditingController _companyTextController = TextEditingController();
  final FocusNode _companyfocusNode = FocusNode();

  List<String> nameList = [];

  List<List<String>>data = [];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text Field Demo"),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 300,
            child: Column(
              children: [
                TextField(
                  controller: _nameTextController,
                  focusNode: _focusNode,
                  decoration: InputDecoration(
                    hintText: "Enter name",
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: const BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Colors.pink,
                      ),
                    ),
                  ),
                  cursorColor: Colors.amber,
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value) {
                    
                  },
                  onSubmitted: (value) {
                   
                  },
                ),
                const SizedBox(height: 10,),
                TextField(
                  controller: _emailTextController,
                  focusNode: _emailfocusNode,
                  decoration: InputDecoration(
                    hintText: "Enter email",
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: const BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Colors.pink,
                      ),
                    ),
                  ),
                  cursorColor: Colors.amber,
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value) {
                    
                  },
                  onSubmitted: (value) {
                        
                  },
                ),
                const SizedBox(height: 10,),
                TextField(
                  controller: _companyTextController,
                  focusNode: _companyfocusNode,
                  decoration: InputDecoration(
                    hintText: "company name",
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: const BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Colors.pink,
                      ),
                    ),
                  ),
                  cursorColor: Colors.amber,
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value) {
                    
                  },
                  onSubmitted: (value) {
                   
                  },
                ),
                const SizedBox(
                  height: 10,
                ),

                ElevatedButton(
                  onPressed: (){
                    setState(() {
                        data.add([
                          _nameTextController.text,
                          _emailTextController.text,
                          _companyTextController.text,
                      ]);
                        _nameTextController.clear();
                        _emailTextController.clear();
                        _companyTextController.clear();
                    });
                  }, 
                child: const Text("Submit"))
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Divider(
            
          ),
          Expanded(
            child: ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return Card(
                      shadowColor: Colors.grey,
                      elevation: .8,
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        height: 80,
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: [
                              Text("Name: ${data[index][0]}"),
                              Text("Email: ${data[index][1]}"),
                              Text("Company: ${data[index][2]}"),
                          ],
                        ),
                      ),
                    );
                }),
          ),
		  
        ],
      ),
    
    );
  }
}
