import 'package:flutter/material.dart';

class MyApp4 extends StatefulWidget 
{
  String value;
  MyApp4({required this.value});

  @override
  State<MyApp4> createState() => _MyApp4State();
}

class _MyApp4State extends State<MyApp4> 
{

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
      (
       body: Center
         (
          child: Text("Your Value is ${widget.value}"),
         ),
      );
  }
}
