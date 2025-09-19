import 'dart:convert';

import 'package:apicalling/model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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

    getapidata() async
    {
        var url = Uri.parse("https://prakrutitech.xyz/API/productview.php");
        var resp = await http.get(url);
        return jsonDecode(resp.body);
    }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Api Calling"),),
        body: FutureBuilder
          (
            future: getapidata(),
            builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot)
            {
              if(snapshot.hasError)
              {
                print("Network not found");
              }

              if(snapshot.hasData)
              {
                return MyModel(list:snapshot.data);
              }
                return CircularProgressIndicator();
            },

          ),
      );
  }
}


