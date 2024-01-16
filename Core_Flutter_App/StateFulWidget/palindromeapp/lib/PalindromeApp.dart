
import 'dart:math';

import 'package:flutter/material.dart';

class Palindrome extends StatefulWidget{
  const Palindrome({super.key});

    
    @override
    State<StatefulWidget> createState()=>_PalindromeState();

}

class _PalindromeState extends State<Palindrome>{

    int _palindromeCount = 0;

    int _amstrongCount = 0;

    int _strongCount = 0;


    List<int>ls =[121,153,565,145,5,6,999,40585];

    void _isPalindrome(){
        setState(() {
            _palindromeCount = 0;
          for (var element in ls) {
            String str = element.toString();
            // print(str);
            int left = 0;
            int right = str.length-1;
            bool flag = true;
            while(left<right){
                if(str[left]!=str[right]){
                    flag = false;
                    break;
                }
                left++;
                right--;
            }

            if(flag){
                _palindromeCount++;
            }
          }
        });
    }

    void _amStrongNumber(){
        setState(() {
            _amstrongCount = 0;
            for (var element in ls) {
                String str = element.toString();
                num? sum = 0;
                num len = str.length;

                while(element!=0){
                    sum = sum! + pow(element%10,len);
                    element = element~/10;
                }

                if(sum == int.parse(str)){
                    _amstrongCount++;
                }

            }
        });
    }

    void _strongNumber(){
        setState(() {
          
          _strongCount = 0;

          for (var element in ls) {

                int n = element;
                num sum = 0;
                while(n!=0){
                    int digit = n % 10;
                    int fact  =1;
                    for(int i=1;i<=digit;i++){
                        fact = fact * i;
                    }
                    sum = sum +fact;
                    n = n~/10;
                }

                if(sum == element){
                    // print(sum);
                    _strongCount++;
                }
          }
        });
          
    }

    @override
    Widget build(BuildContext context) {
        
        return Scaffold(
            appBar: AppBar(
                title: const Text("Logic Builder"),
            ),

            //  body: Center(
            //     child: Column(
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: [
            //             const Text("Logic Building"),

            //             const SizedBox(
            //                 height: 20,
            //             ),
            //             Text(
                            
            //                 "$_palindromeCount"

            //             ),
            //             const SizedBox(
            //                 height: 20,
            //             ),
            //             ElevatedButton(
            //                 onPressed: _isPalindrome, 
            //                 child: const Text("Palindrome Number")
            //             ),
                        
            //             const SizedBox(
            //                 height: 20,
            //             ),

            //             Text(
            //                 "$_amstrongCount"
            //             ),

            //             ElevatedButton(
            //                 onPressed: _amStrongNumber, 
            //                 child: const Text("Amstrong Number")
            //             ),

            //             const SizedBox(
            //                 height: 20,
            //             ),

            //             Text(
            //                 "$_strongCount"
            //             ),

            //             ElevatedButton(
            //                 onPressed: _strongNumber, 
            //                 child: const Text("Strong Number")
            //             )
            //         ],
            //     ),
            // ),,

            body:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Row(
                
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                
                    Container(
                        width: 300,
                        height: 300,

                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.green
                        ),

                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                                Text("$_palindromeCount"),
                            const SizedBox(
                                height: 20,
                            ),
                            ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 0, 0, 0)),
                                    padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
                                    
                                ),
                                onPressed: _isPalindrome, 
                                child: const Text("Palidrome Number")
                            )
                            ],
                        ),
                    ),
        
                    const SizedBox(
                        width: 20,
                    ),

                    Container(
                        width: 300,
                        height:300 ,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.red
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                                Text("$_amstrongCount"),
                            const SizedBox(
                                height: 20,
                            ),

                            ElevatedButton(
                                 style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 0, 0, 0)),
                                    padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
                                    
                                ),
                                onPressed: _amStrongNumber, 
                                child: const Text("Amstrong Number")
                            )
                            ],
                        ),
                    ),

                    const SizedBox(
                        width: 20,
                    ),
                    
                    Container(
                        
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.yellow
                        ),
                        width: 300,
                        height:300 ,
                       
                        
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            Text("$_strongCount"),
                            const SizedBox(
                                height: 20,
                            ),

                            ElevatedButton(
                                 style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 0, 0, 0)),
                                    padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
                                    
                                ),
                                onPressed: _strongNumber, 
                                child: const Text("Strong Number")
                            )
                            ],
                        ),
                    ),
                ],
            ),
                ],
            ),
             
        );
    }

}