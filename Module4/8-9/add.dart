import 'package:flutter/material.dart';
import 'package:sqfliteex1/db.dart';

import 'main.dart';

class AddScreen extends StatefulWidget
{
  const AddScreen({super.key});

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen>
{
  late Mydb db = Mydb();
  
  TextEditingController fname = TextEditingController();
  TextEditingController lname = TextEditingController();
  TextEditingController email = TextEditingController();

  @override
  void initState() 
  {
    // TODO: implement initState
    //super.initState();
    db.open();
  }
  
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
                        
                        db.db.rawInsert("insert into students (fname,lname,email) values (?,?,?)",[f,l,e]);
                        fname.clear();
                        lname.clear();
                        email.clear();
                        Navigator.push(context,MaterialPageRoute(builder: (context) => MyApp()));


                      }, child: Text("Insert"))
                  ],
                ),
            ),
          ),
      );
  }
}
