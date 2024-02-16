import 'package:flutter/material.dart';

class TextFieldDemo extends StatefulWidget {
  const TextFieldDemo({super.key});

  @override
  State createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State {
  final TextEditingController _nameTextController = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  List<String> nameList = [];

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
              print("Value = $value");
            },
            onSubmitted: (value) {
              print("DATA SUBMITTED = $value");
            },
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
			child: ListView.builder(
				itemCount: nameList.length,
				itemBuilder: (context, index) {
				  return Card(
					shadowColor: Colors.grey,
					elevation: .8,
					child: Container(
						margin: const EdgeInsets.all(10),
						height: 30,
						width: MediaQuery.of(context).size.width,
						child: Text(nameList[index]),
					),
				  );
				}),
		  )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            nameList.add(_nameTextController.text);
          _nameTextController.clear();
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
