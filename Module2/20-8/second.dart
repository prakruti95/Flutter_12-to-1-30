import 'package:flutter/material.dart';

class Second extends StatelessWidget
{
  String value;
  Second({required this.value});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
       body: Center
         (
          child: Column
            (
              children:
              [
                  Text("Your data is : $value")

              ],
            ),
         ),
      );
  }
}
