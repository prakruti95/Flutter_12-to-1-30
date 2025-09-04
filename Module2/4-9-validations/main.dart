import 'package:flutter/material.dart';

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
  var _formkey = GlobalKey<FormState>();

  var email = TextEditingController();
  var pass = TextEditingController();
  var num = TextEditingController();

  final RegExp emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  final RegExp passwordRegex = RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[\W_]).{8,}$');
  final RegExp phoneRegex = RegExp(r'^\d{10}$');


  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Validations"),),
        body: Form
          (
              key: _formkey,
              child: Padding(
                padding: EdgeInsets.all(20.00),
                child: Column
                (
                      children:
                      [
                          TextFormField
                            (
                            controller: email,
                            decoration: InputDecoration(hintText: "Enter Email"),
                            validator: (value)
                            {
                              if (value == null || value.isEmpty)
                              {
                                return 'Email is required';
                              }
                              else if(!emailRegex.hasMatch(value))
                              {
                                return 'Enter a valid email';
                              }
                              return null;
                            },

                          ),
                          SizedBox(height: 10,),
                          TextFormField
                            (
                            controller: pass,
                              decoration: InputDecoration(hintText: "Enter Password"),
                              obscureText: true,
                              validator: (value)
                              {
                                  if (value == null || value.isEmpty)
                                  {
                                    return 'Password is required';
                                  }
                                  else if(!passwordRegex.hasMatch(value))
                                  {
                                    return 'Enter a valid password';
                                  }
                                  return null;
                                },

                            ),
                          SizedBox(height: 10,),
                          TextFormField
                            (
                            controller: num,
                            decoration: InputDecoration(hintText: "Enter Number"),
                            validator: (value)
                            {
                              if (value == null || value.isEmpty)
                              {
                                return 'Phone number is required';
                              }
                              else if(!phoneRegex.hasMatch(value))
                              {
                                return 'Enter a valid Number';
                              }
                              return null;
                            },

                          ),
                          SizedBox(height: 10,),
                          ElevatedButton(onPressed: ()
                          {
                              if(_formkey.currentState!.validate())
                              {
                                  String e1 = email.text.toString();
                                  String p1 = pass.text.toString();
                                  String n1 = num.text.toString();

                              }
                              else
                              {
                                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Something is missing")));
                              }
                          }, child: Text("Submit"))
                      ],
                ),
              ),
          ),
      );
  }
}

