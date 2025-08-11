import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sharedprefrenceex/main.dart';

class DashboardScreen extends StatefulWidget 
{
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> 
{
  var data;
  late SharedPreferences sharedPreferences;
  @override
  void initState()
  {
      checkvalue();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
        appBar: AppBar
        (
          title: Text("Welcome $data"),
          actions: 
          [
              IconButton(onPressed: ()
              {
                sharedPreferences.setBool("tops_login", true);
                Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => LoginScreen()));

              }, icon: Icon(Icons.logout))
            
          ],
        ),
      );
  }

  checkvalue()async
  {
    sharedPreferences = await SharedPreferences.getInstance();

    setState(()
    {
      data = sharedPreferences.getString("myemail");
    });

  }
}
