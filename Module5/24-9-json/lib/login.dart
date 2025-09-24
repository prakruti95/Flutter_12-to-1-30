import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test123/dashboardscreen.dart';
import 'package:test123/main.dart';
import 'package:test123/signup.dart';

class LoginScreen extends StatefulWidget
{
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
{

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  late SharedPreferences sharedPreferences;
  var newuser;

  @override
  void initState()
  {
    checklogin();
  }


  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      appBar: AppBar(title: Text("Login Form"),),
      body: Center
        (
        child:  Column
          (
          children:
          [

            TextField(controller: email,decoration: InputDecoration(hintText: "Enter Email")),
            SizedBox(height: 10,),
            TextField(controller: password,decoration: InputDecoration(hintText: "Enter Password")),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: ()
            {
              String e = email.text.toString();
              String p = password.text.toString();

              login(e,p);


             // Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => LoginScreen()));

            }, child: Text("Login")),

            TextButton(onPressed: ()
            {
              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => SignupScreen()));
            }, child: Text("Do you want to signup?"))

          ],
        ),
      ),
    );
  }

  login(var e,var p) async
  {
    var url = Uri.parse("https://prakrutitech.xyz/API/signin.php");

    var resp = await http.post
      (
        url,
        body:
        {
          "e1":e,
          "p1":p
        });
    var data = json.decode(resp.body);
    if(data==0)
    {
      print("Login Fail");
    }
    else
    {
      print("Login Success");
      sharedPreferences.setBool("tops_login",false);
      sharedPreferences.setString("myemail",e);
      sharedPreferences.setString("mypass",p);
      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => DashboardScreen()));
    }
  }

  checklogin()async
  {
    sharedPreferences = await SharedPreferences.getInstance();

    newuser = (sharedPreferences.getBool('tops_login') ?? true);
    print("prakruti $newuser");
    if(newuser==false)
    {
      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => DashboardScreen()));

    }
  }
}

