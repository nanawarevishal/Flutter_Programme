

import 'package:flutter/material.dart';
import 'package:lifecycle/SecondScreen.dart';

class WidgetLifeCycle extends StatefulWidget{

    const WidgetLifeCycle({super.key});

    @override
    State createState(){
        print("Create State Called");
        return _widgetLifeCycleState();
    }

}

class _widgetLifeCycleState extends State{

    final TextEditingController _emailController = TextEditingController();
    final FocusNode _emailNode = FocusNode();

    List<String>data = [];

    @override
    void initState(){
        print("InitState Called");
        super.initState();
    }

    @override
    void didChangeDependencies(){
      super.didChangeDependencies();
        print("Did change dependencies called");
    }

    @override
    void dispose(){
      super.dispose();
        print("Dispose called");
    }

    @override
    void deactivate(){
        super.deactivate();
        print("Deactivate called");
    }

    @override
    Widget build(BuildContext context){
        print("Build Called");
        return Scaffold(
            appBar:AppBar(
                title: const Text("Widget LifeCycle"),
            ),

            body: SizedBox(
                child: Column(
                    children: [
                        TextField(
                            controller: _emailController,
                            focusNode: _emailNode,
                        ),
                        ElevatedButton(
                            onPressed: (){
                                setState(() {
                                  print("Set State Called");
                                  Navigator.push(context, MaterialPageRoute(builder: ( context) {
                                    return SecondScreen();
                                  }));
                                });
                            }, child: const Text("Submit")
                        )
                    ],
                ),
            ),
        );
    }
}