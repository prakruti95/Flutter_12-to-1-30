import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'login.dart';

class SignupScreen extends StatefulWidget
{
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() =>_SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen>
{
  TextEditingController name = TextEditingController();
  TextEditingController surname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();


  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Signup Form"),),
        body: Center
          (
            child:  Column
              (
                children:
                [
                    TextField(controller: name,decoration: InputDecoration(hintText: "Enter Name"),),
                    SizedBox(height: 10,),
                    TextField(controller: surname,decoration: InputDecoration(hintText: "Enter Surname")),
                    SizedBox(height: 10,),
                    TextField(controller: email,decoration: InputDecoration(hintText: "Enter Email")),
                    SizedBox(height: 10,),
                    TextField(controller: password,decoration: InputDecoration(hintText: "Enter Password")),
                    SizedBox(height: 10,),
                    ElevatedButton(onPressed: ()
                    {
                        String n = name.text.toString();
                        String s = surname.text.toString();
                        String e = email.text.toString();
                        String p = password.text.toString();

                        signup(n,s,e,p);

                        Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => LoginScreen()));

                    }, child: Text("Signup")),
                    TextButton(onPressed: ()
                    {
                      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => LoginScreen()));
                    }, child: Text("Login?"))


                ],
              ),
          ),
      );
  }

  signup(var n,var s,var e,var p)
  {
    var url = Uri.parse("https://prakrutitech.xyz/API/insert.php");

    http.post
      (
        url,
        body:
        {
          "name": n,
          "surname":s,
          "email":e,
          "password":p
        });
  }
}

