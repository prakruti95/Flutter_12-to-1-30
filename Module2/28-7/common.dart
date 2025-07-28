import 'package:flutter/material.dart';
import 'package:task_app1/first.dart';
import 'package:task_app1/fourth.dart';
import 'package:task_app1/second.dart';
import 'package:task_app1/third.dart';

class CommonScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Widget Example"),),
        body: Column
          (
            children:
            [
                FirstScreen(),
                SizedBox(height: 15,),
                SecondScreen(),
                SizedBox(height: 15,),
                ThirdScreen(),
                SizedBox(height: 15,),
                FourthScreen()


            ],
          ),
      );
  }
}
