import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget
{
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen>
{
  int value = 0;

  @override
  Widget build(BuildContext context)
  {
    return Container
      (
        // color: Colors.blue.shade50,
        // padding: EdgeInsets.all(16.0),
        child: Column
          (
            children:
            [
                  Text("Like : $value",style: TextStyle(fontSize: 20.00,fontWeight:FontWeight.bold),),
                  ElevatedButton(onPressed: ()
                  {
                      setState(()
                      {
                          value++;
                      });

                  }, child: Text("Click Me"))
            ],
          ),
      );
  }
}
