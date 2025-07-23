import 'package:flutter/material.dart';
import 'package:secondapp/firstscreen.dart';
import 'package:secondapp/fourthscreen.dart';
import 'package:secondapp/secondscreen.dart';
import 'package:secondapp/thirdscreen.dart';

class CommonScreen extends StatelessWidget {
  const CommonScreen({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(appBar: AppBar(title: Text("My App"),),

      body: Center
        (
          child: Column
            (
              children:
              [
                  FirstScreen(),
                  Secondscreen(),
                  Thirdscreen(),
                  FourthScreen()


              ],
            ),
        ),
    );
  }
}
