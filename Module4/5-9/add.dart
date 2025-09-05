import 'package:flutter/material.dart';

class AddScreen extends StatefulWidget
{
  const AddScreen({super.key});

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen>
{
  TextEditingController fname = TextEditingController();
  TextEditingController lname = TextEditingController();
  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Add Screen"),),
        body: Center
          (
            child: Padding(
              padding: EdgeInsets.all(16.00),
              child: Column
                (
                  children:
                  [
                      TextField(controller:fname,decoration: InputDecoration(hintText: "Enter Firstname"),),
                      SizedBox(height: 10,),
                      TextField(controller:lname,decoration: InputDecoration(hintText: "Enter Lastname"),),
                      SizedBox(height: 10,),
                      TextField(controller:email,decoration: InputDecoration(hintText: "Enter Email"),),
                      SizedBox(height: 10,),
                      ElevatedButton(onPressed: ()
                      {
                        String f = fname.text.toString();
                        String l = lname.text.toString();
                        String e = email.text.toString();



                      }, child: Text("Insert"))
                  ],
                ),
            ),
          ),
      );
  }
}
