import 'package:flutter/material.dart';

import 'dashboardscreen.dart';

class LoginScreen extends StatefulWidget
{
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
{

    late String email1,password1;
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    final _formkey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar
          (
            title: Text("Login Form",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
            backgroundColor: Colors.blueGrey
          ),
          body:
          Form
            (
              key: _formkey,
              child: Padding
             (
              padding: const EdgeInsets.all(18.0),
              child: Column
              (
                  children:
                  [
                      TextFormField
                        (
                          controller:email,
                          decoration:InputDecoration(hintText: "Enter Email",border: OutlineInputBorder(borderSide: BorderSide(width: 4.0))),

                          validator:(value)
                          {
                            if(value!.isEmpty)
                            {
                              return 'Please enter Proper Email';
                            }
                            return null;
                          },
                        ),
                      SizedBox(height: 10,),
                      TextFormField
                        (
                          controller:password,
                          decoration:InputDecoration(hintText: "Enter Password",border: OutlineInputBorder(borderSide: BorderSide(width: 4.0))),
                          obscureText: true,
                          validator:(value)
                          {
                            if(value!.isEmpty)
                            {
                              return 'Please enter Proper Password';
                            }
                            return null;
                          },

                        ),
                      SizedBox(height: 10,),
                      ElevatedButton(onPressed: ()
                      {

                            if(_formkey.currentState!.validate())
                            {
                              email1 = email.text.toString();
                              password1 = password.text.toString();

                              if(email1 == "admin@gmail.com" && password1=="1234")
                              {
                                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Logged in Succesfully")));
                                Navigator.push(context,MaterialPageRoute(builder: (context) => Dashboardscreen()));

                              }
                              else
                              {
                                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Invalid Credentials")));

                              }
                            }


                      }, child: Text("Login"))


                  ],

              ),
          )),
      
      
          );

  }
}
