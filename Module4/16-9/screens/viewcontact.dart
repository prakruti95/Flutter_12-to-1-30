import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../color.dart';
import '../database/dbhelper.dart';

class Viewcontact extends StatefulWidget {
  const Viewcontact({super.key});

  @override
  State<Viewcontact> createState() => _ViewcontactState();
}

class _ViewcontactState extends State<Viewcontact> {
  final dbHelper = MyDb.instance;
  List<Map<String, dynamic>> allCategoryData = [];

  @override
  void initState() {
    // TODO: implement initState
    _query();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Contact List")),
        body: Column(
          children: [

            Expanded(
              child: ListView.builder(
                itemCount: allCategoryData.length,
                padding: EdgeInsets.zero,
                itemBuilder: (BuildContext context, int index)
                {
                  var item = allCategoryData[index];
                  Uint8List bytes = base64Decode(item['profile']);
                  return Container(
                    color: MyColors.orangeTile,
                    padding: EdgeInsets.zero,
                    margin: EdgeInsets.zero,
                    child: Column(children:
                    [
                      Row(children:
                      [
                      CircleAvatar(child: Image.memory(bytes,fit: BoxFit.cover,),minRadius: 20,maxRadius: 25,),
                      Text("abcd"),
                      Text("${item['name']}"),
                      Text("${item['lname']}"),
                      Text("a"),
                      Text("b"),
                      Spacer(),
                      IconButton(onPressed: ()
                      {
                        _delete(item['_id']);
                      }, icon: Icon(Icons.delete),color:Colors.red,)
                    ])]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _query() async {
    final allRows = await dbHelper.querycontactRows();
    allRows.forEach(print);
    allCategoryData = allRows;
    print("tops1234");
    print(allCategoryData.length);
    setState(() {});
  }

  void _delete(id)async
  {
    final rowsDeleted = await dbHelper.deleteContact(id);
    print('deleted $rowsDeleted row(s): row $id');
    _query();
  }
}
