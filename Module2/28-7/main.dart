import 'package:flutter/material.dart';
import 'package:task_app1/common.dart';
import 'package:task_app1/form.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp
      (
        home: FormEx(),
        debugShowCheckedModeBanner: false,
      );
  }
}

