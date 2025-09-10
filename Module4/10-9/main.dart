import 'package:flutter/material.dart';
import 'package:sqfliteex1/db.dart';
import 'package:sqfliteex1/edit.dart';
import 'add.dart';

void main()
{
  runApp(MaterialApp(home:MyApp()));
}

class MyApp extends StatefulWidget
{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{
  late Mydb db = Mydb();
  List<Map>slist=[];
  @override
  void initState()
  {
    // TODO: implement initState
    db.open();
    getdata();
  }
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
          appBar: AppBar(title: Text("Sqflite App"),),
          body: SingleChildScrollView
          (
              child: Column
                (
                  children:slist.map((stuone)
                  {
                    return Card
                      (
                        child: ListTile
                          (
                            leading: Icon(Icons.person),
                            title: Text(stuone["fname"]),
                            subtitle: Text("Surname:" + stuone["lname"].toString() + ", Email: " + stuone["email"]),
                            trailing: Wrap
                              (
                                children:
                                [
                                    IconButton(onPressed: ()
                                    {
                                      String email = stuone["email"].toString();
                                      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => EditScreen(email1:email)));
                                    }, icon: Icon(Icons.edit)),
                                    IconButton(onPressed: ()
                                    {
                                        db.db.rawDelete("delete from students where email =?",[stuone["email"]]);
                                        Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => MyApp()));
                                    }, icon: Icon(Icons.delete)),

                                ],
                              ),
                        ),
                      );
                  }).toList(),
                ),
          ),
          floatingActionButton: FloatingActionButton
            (
              onPressed: ()
              {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AddScreen()));
              },
            child: Icon(Icons.add),
            ),
      );
  }

  void getdata() 
  {
    Future.delayed(Duration(milliseconds: 500),() async
    {
        slist = await db.db.rawQuery("select * from students");

        setState(()
        {

        });
    });
  }
}
