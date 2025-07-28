import 'package:flutter/material.dart';

class FormEx extends StatefulWidget
{
  const FormEx({super.key});

  @override
  State<FormEx> createState() => _FormExState();
}

class _FormExState extends State<FormEx>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Form Example"),),
        body: Form
          (
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column
                (
                  children:
                  [
                      TextFormField(decoration:InputDecoration(hintText: "Enter Email"),),
                      SizedBox(height: 10,),
                      TextFormField(decoration:InputDecoration(hintText: "Enter Password",),obscureText:true,keyboardType: TextInputType.number,),
                      SizedBox(height: 10,),
                      ElevatedButton(onPressed: ()
                      {

                      }, child: Text("Login"))


                  ],
                ),
            )


          ),
      );
  }
}
