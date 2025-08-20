import 'package:flutter/material.dart';
import 'package:passdataex/second.dart';
import 'package:passdataex/third.dart';
import 'package:passdataex/toastex.dart';

void main()
{
  runApp(MaterialApp(home:ToastEx()));
}
class MyApp extends StatelessWidget
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

                    Navigator.push(context,MaterialPageRoute(builder: (context) => Second(value:a)));
                  }, child: Text("Submit")),


              ],
              ),
          ),
      );
  }
}


