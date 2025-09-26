import 'package:flutter/material.dart';
import 'package:formex/myanim.dart';
import 'package:formex/second.dart';
import 'package:formex/shimmereffect.dart';
import 'package:formex/splashscreen.dart';

void main()
{
  //runApp(MaterialApp(home:ShimmerEx(),debugShowCheckedModeBanner: false,));
  runApp(Abcd());
}
class FormEx extends StatefulWidget
{
  const FormEx({super.key});

  @override
  State<FormEx> createState() => _FormExState();
}

class _FormExState extends State<FormEx>
{
  TextEditingController mob = TextEditingController();
  TextEditingController pass = TextEditingController();
  var _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Login Form"),),
        body: Form(
          key: _formkey,
          child: Center
            (
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(

                  children:
                  [


                      TextFormField(controller:mob,decoration:InputDecoration(hintText: "Enter Mobile",border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.00))),
                      validator:(value)
                      {
                        if(value!.isEmpty)
                          {
                              return "Please Enter Mobile Number";
                          }
                        return null;
                      },
                      ),
                      SizedBox(height: 10),
                      TextFormField(controller:pass,decoration:InputDecoration(hintText: "Enter Password",border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.00)),suffixIcon: Icon(Icons.remove_red_eye)),obscureText: true,
                        validator:(value)
                        {
                          if(value!.isEmpty)
                          {
                            return "Please Enter Password";
                          }
                          return null;
                        },),
                      SizedBox(height: 10,),
                      ElevatedButton(onPressed: ()
                      {
                        String a = mob.text.toString();
                        String b = pass.text.toString();

                        if(_formkey.currentState!.validate())
                        {
                          if(a=="9724004242" && b=="1234")
                          {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Logged in Succesfully")));
                            Navigator.push(context,MaterialPageRoute(builder: (context) => SecondScreen()));
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
        ),
      );
  }
}
