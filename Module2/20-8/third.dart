import 'package:flutter/material.dart';
import 'package:passdataex/second.dart';

import 'fourth.dart';


class MyApp2 extends StatelessWidget
{
  TextEditingController data = TextEditingController();

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
            TextField(controller: data,decoration: InputDecoration(hintText: "Please Enter Data"),),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: ()
            {
              String a = data.text.toString();

              Navigator.push(context,MaterialPageRoute(builder: (context) => MyApp4(value:a)));
            }, child: Text("Submit")),


          ],
        ),
      ),
    );
  }
}


