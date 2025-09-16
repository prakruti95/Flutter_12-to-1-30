import 'package:flutter/material.dart';
import 'package:sqfliteex11/database/dbhelper.dart';
import 'package:sqfliteex11/widgets/MyDrawer.dart';

import '../color.dart';

class HomePage extends StatefulWidget
{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
{
  MyDb dbHelper = MyDb.instance;
  final formGlobalKey = GlobalKey<FormState>();//validation
  TextEditingController value1 = TextEditingController();

  @override
  void initState()
  {
    // TODO: implement initState
    //super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Home Screen"),),
        body: Form
           (
                key: formGlobalKey,
                child: Column
                  (
                    children:
                    [
                      Expanded
                        (
                          child:Padding
                            (
                            padding: EdgeInsets.all(20.00),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children:
                              [
                                const SizedBox
                                  (
                                    height: 50,
                                  ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 250,
                                      child: TextFormField
                                        (
                                        decoration: InputDecoration(
                                          focusedBorder: OutlineInputBorder
                                            (
                                            borderSide: BorderSide
                                              (
                                                color: Colors.greenAccent,
                                                width: 2.0),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: MyColors.primaryColor, width: 1.0),
                                          ),
                                          hintText: 'Add Category',
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 5),
                                        ),
                                        controller: value1,
                                        validator: (value)
                                        {
                                          if (value == null || value.isEmpty)
                                          {
                                            return 'Enter category name';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox
                                  (
                                    height: 50,
                                  ),
                                TextButtonTheme
                                  (
                                  data: TextButtonThemeData(
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all<Color>(
                                          MyColors.primaryColor),
                                    ),
                                  ),
                                  child: TextButton(
                                    onPressed: ()
                                    {
                                      if (formGlobalKey.currentState!.validate())
                                      {
                                        _insert();
                                      }
                                    },
                                    child: const Text(
                                      "Save",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),

                              ],
                            ),

                          )
                      )

                    ],
                  ),
           ),
        drawer: MyDrawer(),
      );

  }

  void _insert()async
  {
    Map<String, dynamic> row =
    {
      MyDb.catname: value1.text.toString()
    };
    print('insert stRT');

    final id = await dbHelper.insertdata(row);
    print('inserted row id: $id');
    value1.text = "";
  }
}
