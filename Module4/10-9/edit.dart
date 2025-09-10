import 'package:flutter/material.dart';
import 'package:sqfliteex1/db.dart';

import 'main.dart';

class EditScreen extends StatefulWidget
{
  String email1;
  EditScreen({required this.email1});

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen>
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
    Future.delayed(Duration(milliseconds: 500),()async
    {
      var data = await db.getstudent(widget.email1);
      if(data!=null)
      {
        fname.text = data["fname"].toString();
        lname.text = data["lname"].toString();
        email.text = data["email"].toString();
        setState(() {});
      }
      else
      {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("No data found")));

      }
    });

  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      appBar: AppBar(title: Text("Edit Screen : ${widget.email1}"),),
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

                  db.db.rawUpdate("update students set fname=?,lname=?,email=? where email=?",[f,l,e,widget.email1]);
                //db.db.rawInsert("insert into students (fname,lname,email) values (?,?,?)",[f,l,e]);
                fname.clear();
                lname.clear();
                email.clear();
                Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => MyApp()));


              }, child: Text("Update"))
            ],
          ),
        ),
      ),
    );
  }
}
