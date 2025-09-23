import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:test123/productmodel.dart';
import 'addproduct.dart';

class DashboardScreen extends StatefulWidget
{
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen>
{
  getproducts() async
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
        appBar: AppBar(title: Text("Dashboard Screen"),),
      body: FutureBuilder
        (
        future: getproducts(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot)
        {
          if(snapshot.hasError)
          {
            print("Network not found");
          }

          if(snapshot.hasData)
          {
            return ProductModel(list:snapshot.data);
          }
          return CircularProgressIndicator();
        },

      ),

        floatingActionButton: FloatingActionButton(onPressed: ()
        {
          Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => AddproductScreen()));
        },child: Icon(Icons.add),),
      );
  }
}
