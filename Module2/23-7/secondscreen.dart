import 'package:flutter/material.dart';

class Secondscreen extends StatefulWidget
{
  @override
  SecondScreenState  createState() => SecondScreenState();
}

class SecondScreenState extends State<Secondscreen> {
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(appBar: AppBar(title: Text("Second Screen"),),);
  }
}
